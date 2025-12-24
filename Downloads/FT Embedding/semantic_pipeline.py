import pandas as pd
import json
import networkx as nx
import numpy as np
import matplotlib.pyplot as plt
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.manifold import SpectralEmbedding
from sklearn.cluster import KMeans
import os
from scipy.sparse import issparse
from typing import Any

# --- Configuration ---
DATA_FILE = 'ft_embeddings_dataset.csv'
SAMPLE_JSON_FILE = 'sample_concepts.json'
OUTPUT_GRAPH_IMAGE = 'concept_graph.png'
OUTPUT_EMBEDDING_IMAGE = 'diffusion_map.png'

# --- IV. Enhanced Agent Prompt (User Provided) ---
LLM_PROMPT_TEMPLATE = """
🔹 Enhanced Semantic Extraction & Relation Modeling Prompt
You are analyzing a corpus of news articles with the goal of uncovering deep, real-world conceptual relationships, not surface-level topical similarity.
Your task is not to rely on metadata, tags, publication sections, or keywords.
Instead, for each article:
⸻
1. Identify Core Concepts
	•	Economic mechanisms (e.g., expectations, liquidity, balance sheet effects)
	•	Policy instruments and constraints
	•	Market transmission channels
	•	Structural risks and fragilities
	•	Implicit assumptions the article relies on
⸻
2. Extract Relational Meaning
Explicitly identify relationships such as:
	•	Causal (“A leads to B through mechanism C”)
	•	Reinforcing / amplifying
	•	Dampening / offsetting
	•	Historical analogy (similar past regimes or episodes)
	•	Tension or contradiction with other known frameworks
Avoid vague similarity. Be specific.
⸻
3. Contextualize in the Real World
For each major concept:
	•	Explain how it fits into broader macroeconomic, financial, or geopolitical systems
	•	Note regime-dependence (when the logic holds vs fails)
	•	Identify second-order or delayed effects
⸻
4. Output Structured Objects
Produce a structured representation containing:
	•	A list of concepts (atomic, well-defined)
	•	A list of relationships (typed and directional)
	•	Confidence scores for each relationship
Do not summarize the article narratively.
Your goal is to externalize its internal logic in a way that allows cross-article comparison and graph construction.
⸻
5. Cross-Article Reasoning (When Applicable)
When a concept or mechanism appears in multiple articles:
	•	Note similarities and differences in framing
	•	Identify latent disagreements or regime shifts
Prioritize conceptual fidelity over brevity.

FORMAT YOUR OUTPUT AS VALID JSON.
"""

def load_data(csv_path):
    if not os.path.exists(csv_path):
        print(f"Error: {csv_path} not found.")
        return None
    print(f"Loading data from {csv_path}...")
    return pd.read_csv(csv_path)

def mock_llm_extraction():
    """
    Simulates the LLM extraction process by loading the pre-generated sample JSON.
    In a real pipeline, this would iterate over rows in the dataframe and call the API.
    """
    print(f"Loading mock LLM output from {SAMPLE_JSON_FILE}...")
    if os.path.exists(SAMPLE_JSON_FILE):
        with open(SAMPLE_JSON_FILE, 'r') as f:
            return json.load(f)
    else:
        print("Sample JSON not found. Please verify.")
        return []

def build_concept_graph(extracted_data):
    """
    Builds a NetworkX graph from the structured concept objects.
    Nodes = Concepts
    Edges = Relationships
    """
    print("Building Concept-Concept Graph...")
    G = nx.DiGraph()
    
    for article in extracted_data:
        # Add Concepts (Nodes)
        for concept in article.get('concepts', []):
            name = concept['name']
            if not G.has_node(name):
                G.add_node(name, 
                           category=concept.get('category'), 
                           description=concept.get('description'),
                           context=concept.get('real_world_context'))
        
        # Add Relationships (Edges)
        for rel in article.get('relationships', []):
            src = rel['source']
            tgt = rel['target']
            
            # Ensure nodes exist (sometimes LLM might hallucinate a relation to a node not listed in concepts)
            if not G.has_node(src): G.add_node(src)
            if not G.has_node(tgt): G.add_node(tgt)
            
            G.add_edge(src, tgt, 
                       type=rel.get('type'), 
                       description=rel.get('description'),
                       confidence=rel.get('confidence', 1.0))
            
    print(f"Graph built: {G.number_of_nodes()} nodes, {G.number_of_edges()} edges.")
    return G

def compute_embeddings_and_diffusion(G):
    """
    1. Computes initial embeddings for nodes (using Description text).
    2. Applies Diffusion Geometry (Spectral Embedding) to capture manifold structure.
    """
    print("Computing Embeddings and Diffusion Map...")
    
    nodes = list(G.nodes())
    if not nodes:
        return None, None
    
    # 1. Initial Content Embedding (Text-based)
    # In a prod environment, use: model = SentenceTransformer('all-MiniLM-L6-v2'); embeddings = model.encode(descriptions)
    # Here we use TF-IDF on the description + context for demonstration.
    node_texts = []
    for n in nodes:
        desc = str(G.nodes[n].get('description', ''))
        ctx = str(G.nodes[n].get('context', ''))
        node_texts.append(f"{n} {desc} {ctx}")
    
    vectorizer = TfidfVectorizer(stop_words='english')
    sparse_matrix: Any = vectorizer.fit_transform(node_texts)
    
    # Check if sparse and convert to dense array safely for linter/runtime
    if issparse(sparse_matrix):
        X_text = sparse_matrix.toarray()
    else:
        X_text = np.array(sparse_matrix)
    
    # 2. Diffusion-based Geometry
    # We use SpectralEmbedding (Laplacian Eigenmaps), which approximates the diffusion map
    # by diagonalizing the graph Laplacian. We combine graph structure with text similarity.
    # For now, let's strictly use the GRAPH structure for the diffusion map, 
    # but we could weight the adjacency matrix by text similarity.
    
    # Create adjacency matrix (symmetrized for spectral embedding)
    adj_matrix = nx.to_numpy_array(G, nodelist=nodes)
    adj_matrix = np.maximum(adj_matrix, adj_matrix.T) # Symmetrize
    
    # If the graph is disconnected or too sparse, SpectralEmbedding might fail or give separate components.
    # We'll use the text embeddings as the 'affinity' matrix input if graph is too small, 
    # or just use text embeddings directly for the demo if graph is tiny.
    
    if len(nodes) < 3:
        print("Not enough nodes for spectral embedding.")
        return None, None

    # Using text features to guide the diffusion (common in modern GNNs too)
    # Here we project the Text Embeddings into a lower dimensional manifold
    reducer = SpectralEmbedding(n_components=2, affinity='nearest_neighbors')
    X_diffusion = reducer.fit_transform(X_text)
    
    return nodes, X_diffusion

def visualize_clusters(nodes, X_diffusion):
    """
    Visualizes the 2D diffusion map with K-Means clustering.
    """
    print("Visualizing...")
    # Cluster
    n_clusters = min(3, len(nodes))
    kmeans = KMeans(n_clusters=n_clusters, random_state=42)
    labels = kmeans.fit_predict(X_diffusion)
    
    plt.figure(figsize=(10, 8))
    scatter = plt.scatter(X_diffusion[:, 0], X_diffusion[:, 1], c=labels, cmap='viridis', s=100)
    
    for i, txt in enumerate(nodes):
        plt.annotate(txt, (X_diffusion[:, 0][i], X_diffusion[:, 1][i]), xytext=(5, 5), textcoords='offset points')
        
    plt.title("Concept Diffusion Map (Multiscale Clustering)")
    plt.xlabel("Diffusion Component 1")
    plt.ylabel("Diffusion Component 2")
    plt.grid(True, linestyle='--', alpha=0.5)
    plt.savefig(OUTPUT_EMBEDDING_IMAGE)
    print(f"Visualization saved to {OUTPUT_EMBEDDING_IMAGE}")

def main():
    # 1. Load Data
    df = load_data(DATA_FILE)
    if df is None: return

    # 2. Extract Concepts (Step 1 & 2 of User Pipeline)
    # In real usage: extracted_data = [real_llm_extraction(row['content']) for index, row in df.iterrows()]
    extracted_data = mock_llm_extraction()
    
    # 3. Build Graph (Step 3)
    G = build_concept_graph(extracted_data)
    
    # 4 & 5. Embeddings & Diffusion (Step 4 & 5)
    nodes, X_diffusion = compute_embeddings_and_diffusion(G)
    
    # 6. Visualize (Step 6)
    if nodes is not None:
        visualize_clusters(nodes, X_diffusion)
        
        # Save Graph viz too
        plt.figure(figsize=(12, 12))
        pos = nx.spring_layout(G, k=0.5)
        nx.draw(G, pos, with_labels=True, node_color='lightblue', 
                node_size=2000, font_size=10, font_weight='bold') 
        edge_labels = nx.get_edge_attributes(G, 'type')
        nx.draw_networkx_edge_labels(G, pos, edge_labels=edge_labels)
        plt.title("Concept-Relationship Graph")
        plt.savefig(OUTPUT_GRAPH_IMAGE)
        print(f"Graph visualization saved to {OUTPUT_GRAPH_IMAGE}")

if __name__ == "__main__":
    main()
