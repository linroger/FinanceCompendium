#!/usr/bin/env swift

// Test script for Foundation Model Parser
// Run with: swift TestParserScript.swift

import Foundation

// Copy the relevant parsing code inline for testing
struct ParsedJobPosting {
    var jobTitle: String?
    var companyName: String?
    var salaryRange: String?
    var location: String?
    var jobURL: String?
    var desiredSkills: [String]?
    var jobType: String?
    var formattedDescriptionMarkdown: String?
    var experienceLevel: String?
    var applicationDeadline: String?
    var benefits: [String]?
    var remotePolicy: String?
}

// Test the pattern extraction
func testPatternParsing() {
    let testJobPosting = """
    Microsoft
    Senior Software Engineer - Azure AI
    
    Location: Seattle, WA (Hybrid)
    Salary: $180,000 - $250,000 per year
    Job Type: Full Time
    Application Deadline: February 15, 2025
    
    About Microsoft
    Microsoft Corporation is a technology company developing and supporting software, services, devices, and solutions.
    
    Requirements
    - 7+ years of software engineering experience
    - Strong expertise in Python, C++, or Go
    - Experience with distributed systems and cloud infrastructure
    - Deep understanding of machine learning frameworks (TensorFlow, PyTorch)
    - Experience with Kubernetes, Docker, and containerization
    """
    
    print("Testing Pattern-Based Parsing")
    print("=============================")
    
    // Test job title extraction
    let titlePattern = #"(?i)(?:^|\n)([^\n]+?)(?:\n|$)"#
    let lines = testJobPosting.components(separatedBy: .newlines)
    print("First few lines:")
    for (index, line) in lines.prefix(5).enumerated() {
        print("  \(index): '\(line)'")
    }
    
    // Test salary extraction
    let salaryPattern = #"\$\s*(\d+[,.]?\d*)\s*(?:k|K)?\s*(?:-|to|–|—)\s*\$?\s*(\d+[,.]?\d*)\s*(?:k|K)?"#
    if let regex = try? NSRegularExpression(pattern: salaryPattern),
       let match = regex.firstMatch(in: testJobPosting, range: NSRange(testJobPosting.startIndex..., in: testJobPosting)),
       let fullRange = Range(match.range, in: testJobPosting) {
        let salary = String(testJobPosting[fullRange])
        print("\nExtracted Salary: \(salary)")
    }
    
    // Test location extraction
    let locationPattern = #"(?i)location\s*:\s*(.+?)(?:\n|$)"#
    if let regex = try? NSRegularExpression(pattern: locationPattern),
       let match = regex.firstMatch(in: testJobPosting, range: NSRange(testJobPosting.startIndex..., in: testJobPosting)),
       match.numberOfRanges > 1,
       let range = Range(match.range(at: 1), in: testJobPosting) {
        let location = String(testJobPosting[range])
        print("Extracted Location: \(location)")
    }
    
    // Test skills extraction
    let skills = ["Python", "C++", "Go", "Kubernetes", "Docker", "TensorFlow", "PyTorch"]
    var foundSkills: Set<String> = []
    for skill in skills {
        let pattern = "\\b" + NSRegularExpression.escapedPattern(for: skill) + "\\b"
        if let regex = try? NSRegularExpression(pattern: pattern, options: [.caseInsensitive]),
           regex.firstMatch(in: testJobPosting, range: NSRange(testJobPosting.startIndex..., in: testJobPosting)) != nil {
            foundSkills.insert(skill)
        }
    }
    print("Extracted Skills: \(foundSkills.sorted())")
}

// Run the test
testPatternParsing()