

D2 Style Guide


D2 is a declarative diagram scripting language that transforms text into visual diagrams. This guide focuses on creating infographic-style diagrams with emphasis on styling, visual design, and presentation quality.

## Core Syntax and Structure

### Basic Element Definition

```d2
# Simple node
element_name: Label Text

# Node with shape
element_name: Label Text {
  shape: rectangle
}

# Connection between elements
A -> B: Connection Label
```

### Layout Direction

```d2
direction: right    # left-to-right flow
direction: up       # bottom-to-top
direction: down     # top-to-bottom (default)
direction: left     # right-to-left
```

## Shape Library

D2 provides an extensive shape library for infographics:

```d2
# Basic shapes
basic_rect: Rectangle {shape: rectangle}
basic_square: Square {shape: square}
basic_circle: Circle {shape: circle}
basic_oval: Oval {shape: oval}
basic_diamond: Diamond {shape: diamond}
basic_hexagon: Hexagon {shape: hexagon}
basic_triangle: Triangle {shape: triangle}

# Specialized shapes
cylinder_shape: Cylinder {shape: cylinder}
queue_shape: Queue {shape: queue}
package_shape: Package {shape: package}
step_shape: Step {shape: step}
callout_shape: Callout {shape: callout}
stored_data: Stored Data {shape: stored_data}
parallelogram_shape: Parallelogram {shape: parallelogram}

```

## Styling System

### Fill Colors

```d2
# Solid colors
node_solid: Solid Fill {
  style.fill: "#4CAF50"
}

# Named colors
node_named: Named Color {
  style.fill: red
}

# RGB and RGBA
node_rgba: Transparent {
  style.fill: "rgba(0, 255, 0, 0.5)"
}

# Fill opacity
node_opacity: Semi-transparent {
  style.fill: "#2A9D8F"
  style.fill-opacity: 0.5
}
```

### Gradient Fills

```d2
# Linear gradients
linear_gradient: Linear {
  style.fill: "linear-gradient(to right, #4e54c8, #8f94fb)"
}

gradient_angle: Angled {
  style.fill: "linear-gradient(45deg, rgba(255,0,0,0.5) 0%, rgba(0,0,255,0.5) 100%)"
}

# Radial gradients
radial_gradient: Radial {
  style.fill: "radial-gradient(circle, white 0%, #8A2BE2 60%, #4B0082 100%)"
}

# Multi-stop gradients
multi_stop: Multi-stop {
  style.fill: "linear-gradient(to bottom right, red 0%, yellow 25%, green 50%, cyan 75%, blue 100%)"
}
```

### Stroke (Border) Styling

```d2
# Basic stroke
basic_border: Border {
  style.stroke: "#333"
  style.stroke-width: 2
}

# Dashed and dotted borders
dashed_border: Dashed {
  style.stroke-dash: 5
  style.stroke-width: 2
}

complex_dash: Complex Pattern {
  style.stroke-dash: "5 3 1 3"
  style.stroke-width: 2
}

# Gradient strokes
gradient_stroke: Gradient Border {
  style.stroke: "linear-gradient(to right, red, blue)"
  style.stroke-width: 3
}
```

### Shadows and Depth

```d2
# Basic shadow
shadow_node: With Shadow {
  style.shadow: true
  style.shadow-color: "rgba(0,0,0,0.3)"
  style.shadow-offset: "4px 4px"
}

# Multiple shadow properties
deep_shadow: Deep Shadow {
  style.shadow: true
  style.shadow-color: gray
}
```

### Rounded Corners

```d2
rounded_node: Rounded {
  shape: rectangle
  style.border-radius: 10
}
```

## Text Formatting

### Basic Text Styling

```d2
# Font properties
styled_text: Custom Font {
  style.font-size: 20
  style.font-color: "#2c3e50"
  style.font-family: "Arial"
}

# Bold and emphasis
bold_node: **Bold Text**
italic_node: *Italic Text*
```

### Markdown Support

D2 supports rich markdown formatting for labels:

```d2
markdown_node: |md
  # Main Heading

  This is **bold** and this is *italic*.

  - Bullet point 1
  - Bullet point 2
  - Bullet point 3

  1. Numbered item
  2. Another item

  [Link text](https://example.com)
|
```

### LaTeX Math Equations

```d2
equation_node: Math Formula {
  equation: |latex
    \lim_{h \rightarrow 0} \frac{f(x+h)-f(x)}{h}
  |
}

# Inline LaTeX in connections
A -> B: |latex
  f(x) = x^2 + 2x + 1
|

# Complex equations
formula_box: |latex
  \begin{equation} \label{eq1}
  \begin{split}
  A & = \frac{\pi r^2}{2} \\
   & = \frac{1}{2} \pi r^2
  \end{split}
  \end{equation}
|
```

### Multi-line Labels

```d2
# Using line breaks
multi_line: "Line 1
Line 2
Line 3"

# Using explicit formatting
formatted: |md
  Line one

  Line two

  Line three
|
```

## Icons and Visual Elements

### Adding Icons

```d2
# Icon from URL
node_with_icon: Database {
  icon: https://icons.terrastruct.com/essentials%2F213-alarm.svg
}

# Icons on different shapes
sql_table: {
  shape: sql_table
  icon: https://icons.terrastruct.com/essentials%2F213-alarm.svg
}

class_shape: {
  shape: class
  icon: https://icons.terrastruct.com/essentials%2F213-alarm.svg
}
```

### Tooltips

```d2
# Simple tooltip
tooltip_node: Hover Me {
  tooltip: This is a tooltip
}

# Positioned tooltips
positioned_tooltip: Rectangle {
  tooltip: Top Left {
    near: top-left
  }
}

# Markdown tooltips
rich_tooltip: Information {
  tooltip: |md
    # Important Info

    This node contains **critical** information

    - Point 1
    - Point 2
  | {
    near: top-center
  }
}
```

Position options for tooltips: `top-left`, `top-center`, `top-right`, `center-left`, `center-right`, `bottom-left`, `bottom-center`, `bottom-right`

## Connection Styling

### Basic Connections

```d2
# Simple connection
A -> B

# Labeled connection
A -> B: Connection Label

# Styled connection
A -> B: Styled {
  style.stroke: "#007bff"
  style.stroke-width: 3
}

# Dashed connection
A -> B: Dashed Link {
  style.stroke-dash: "5 5"
  style.stroke-color: red
}
```

### Connection Font Styling

```d2
# Gradient connection with styled text
A -> B: Gradient Link {
  style.stroke: "linear-gradient(to right, red, blue)"
  style.font-color: "#3ddb89"
  style.font-size: 14
}
```

## Advanced Layout Techniques

### Containers and Grouping

```d2
# Container with styled content
container: Container Name {
  style.fill: "#f0f0f0"
  style.stroke: "#333"

  # Nested elements
  element_1: Item 1
  element_2: Item 2
  element_3: Item 3

  element_1 -> element_2 -> element_3
}
```

### Grid Layout

```d2
# Specify grid columns
grid-columns: 3

item_1: Item 1
item_2: Item 2
item_3: Item 3
item_4: Item 4
item_5: Item 5
item_6: Item 6
```

### Positioning with `near`

```d2
# Position elements relative to others
main_node: Main

detail_1: Detail 1 {
  near: top-left
}

detail_2: Detail 2 {
  near: bottom-right
}
```

## Themes

D2 includes built-in themes for consistent styling:

```d2
# Apply theme via vars
vars: {
  d2-config: {
    theme-id: 300
  }
}

# Available themes:
# 0 - Neutral default
# 1 - Neutral grey
# 2 - Flagship Terrastruct
# 3 - Cool classics
# 4 - Mixed berry blue
# 5 - Grape soda
# 6 - Aubergine
# 7 - Colorblind clear
# 8 - Vanilla nitro cola
# 100 - Terminal
# 101 - Terminal Grayscale
# 200 - Dark Mauve
# 300 - Dark Flagship Terrastruct
```

### Custom Theme Elements

```d2
# Override theme colors for specific elements
node_custom: Custom Colors {
  style.fill: "#2c3e50"
  style.stroke: "#e74c3c"
  style.font-color: white
}
```

## Classes for Reusable Styles

```d2
# Define reusable style classes
classes: {
  base: {
    style: {
      stroke-dash: 2
      border-radius: 5
      font: mono
      text-transform: uppercase
    }
  }

  error: {
    style.fill: "#e07d7d"
    style.stroke: "#a60c0c"
    style.font-color: white
  }

  success: {
    style.fill: "#86f499"
    style.stroke: "#017f07"
    style.font-color: black
  }

  warning: {
    style.fill: "#ffd93d"
    style.stroke: "#ff6b35"
    style.font-color: black
  }
}

# Apply multiple classes
server-1.class: [base; error]
server-2.class: [base; success]
server-3.class: [base; warning]
```

## Glob Patterns for Bulk Styling

```d2
# Apply styling to all elements matching pattern
x: Node X
y: Node Y
z: Node Z

# Style all elements
*.style.fill: aquamarine
*.style.stroke: "#2c3e50"
*.style.stroke-width: 2
```

## Practical Infographic Examples

### Process Flow Diagram

```d2
direction: right

classes: {
  step: {
    style.fill: "#4a90e2"
    style.stroke: "#2e5c8a"
    style.font-color: white
    style.border-radius: 8
  }

  decision: {
    shape: diamond
    style.fill: "#f5a623"
    style.stroke: "#d68910"
    style.font-color: white
  }
}

start: Start Process {
  shape: circle
  class: step
}

process_1: Data Collection {
  class: step
}

decision_point: Validate Data? {
  class: decision
}

process_2: Process Data {
  class: step
}

end: Complete {
  shape: circle
  class: step
  style.fill: "#7ed321"
}

start -> process_1: Begin
process_1 -> decision_point
decision_point -> process_2: Valid
decision_point -> process_1: Invalid {
  style.stroke-dash: 5
  style.stroke: red
}
process_2 -> end: Finish
```

### Statistical Dashboard Card

```d2
dashboard_card: Sales Performance Q4 2024 {
  shape: rectangle
  style.fill: "linear-gradient(135deg, #667eea 0%, #764ba2 100%)"
  style.stroke: none
  style.border-radius: 12
  style.shadow: true
  style.shadow-color: "rgba(0,0,0,0.3)"

  metric_value: |md
    ## $2.4M

    ↑ 23% vs Q3
  | {
    style.font-color: white
    style.font-size: 24
  }

  chart_area: Revenue Trend {
    style.fill: "rgba(255,255,255,0.2)"
    style.border-radius: 8
  }

  details: |md
    **Key Metrics:**
    - New Customers: 1,247
    - Retention Rate: 94%
    - Avg Deal Size: $15.2K
  | {
    style.font-color: "rgba(255,255,255,0.9)"
    style.font-size: 12
  }
}
```

### Comparison Chart

```d2
grid-columns: 2

classes: {
  feature_box: {
    style.border-radius: 10
    style.stroke-width: 2
    style.shadow: true
  }
}

product_a: Product A {
  class: feature_box
  style.fill: "#e8f5e9"
  style.stroke: "#4caf50"

  features: |md
    ✓ Feature 1
    ✓ Feature 2
    ✓ Feature 3
    ✗ Feature 4
  |

  price: $99/mo {
    style.font-size: 20
    style.font-color: "#2e7d32"
  }
}

product_b: Product B {
  class: feature_box
  style.fill: "#e3f2fd"
  style.stroke: "#2196f3"

  features: |md
    ✓ Feature 1
    ✓ Feature 2
    ✓ Feature 3
    ✓ Feature 4
  |

  price: $149/mo {
    style.font-size: 20
    style.font-color: "#1565c0"
  }
}
```

### Timeline Infographic

```d2
direction: right

classes: {
  milestone: {
    shape: circle
    style.fill: "#3f51b5"
    style.stroke: "#1a237e"
    style.font-color: white
  }

  event: {
    style.border-radius: 8
    style.fill: "#f5f5f5"
    style.stroke: "#9e9e9e"
  }
}

# Timeline backbone
timeline_start: 2020 {class: milestone}
milestone_2021: 2021 {class: milestone}
milestone_2022: 2022 {class: milestone}
milestone_2023: 2023 {class: milestone}
milestone_2024: 2024 {class: milestone}

# Events
event_1: Product Launch {
  class: event
  near: top-left
  icon: https://icons.terrastruct.com/essentials%2F213-alarm.svg
}

event_2: Series A Funding {
  class: event
  near: bottom-left
}

event_3: 1M Users {
  class: event
  near: top-left
}

event_4: International Expansion {
  class: event
  near: bottom-left
}

# Connections
timeline_start -> milestone_2021 -> milestone_2022 -> milestone_2023 -> milestone_2024

timeline_start -> event_1 {style.stroke-dash: 3}
milestone_2021 -> event_2 {style.stroke-dash: 3}
milestone_2022 -> event_3 {style.stroke-dash: 3}
milestone_2023 -> event_4 {style.stroke-dash: 3}
```

### Data Visualization Card

```d2
viz_card: User Engagement Metrics {
  style.fill: white
  style.stroke: "#e0e0e0"
  style.stroke-width: 1
  style.border-radius: 16
  style.shadow: true

  header: |md
    # User Engagement
    Last 30 Days
  | {
    style.fill: "#f8f9fa"
    style.font-color: "#212529"
  }

  metric_1: Daily Active Users {
    style.fill: "#e3f2fd"
    style.border-radius: 8

    value: |md
      ## 45.2K
      ↑ 12.5%
    | {
      style.font-color: "#1976d2"
    }
  }

  metric_2: Session Duration {
    style.fill: "#f3e5f5"
    style.border-radius: 8

    value: |md
      ## 18m 34s
      ↑ 8.3%
    | {
      style.font-color: "#7b1fa2"
    }
  }

  metric_3: Retention Rate {
    style.fill: "#e8f5e9"
    style.border-radius: 8

    value: |md
      ## 87.3%
      ↑ 2.1%
    | {
      style.font-color: "#388e3c"
    }
  }
}
```

## Color Palette Reference

### Solid Colors
- **Blues**: `#2196f3`, `#1976d2`, `#0d47a1`, `#4a90e2`
- **Greens**: `#4caf50`, `#388e3c`, `#1b5e20`, `#7ed321`
- **Reds**: `#f44336`, `#d32f2f`, `#b71c1c`, `#e74c3c`
- **Purples**: `#9c27b0`, `#7b1fa2`, `#4a148c`, `#667eea`
- **Oranges**: `#ff9800`, `#f57c00`, `#e65100`, `#f5a623`
- **Grays**: `#9e9e9e`, `#757575`, `#616161`, `#424242`

### Gradient Combinations
```d2
# Professional blues
blue_gradient: {
  style.fill: "linear-gradient(135deg, #667eea 0%, #764ba2 100%)"
}

# Warm sunset
sunset_gradient: {
  style.fill: "linear-gradient(to right, #f79533, #f37055, #ef4e7b, #a166ab)"
}

# Cool ocean
ocean_gradient: {
  style.fill: "linear-gradient(120deg, #89f7fe 0%, #66a6ff 100%)"
}

# Modern dark
dark_gradient: {
  style.fill: "linear-gradient(to right, #434343 0%, #000000 100%)"
}
```

## Performance Tips

1. **Minimize complex gradients** in diagrams with many elements
2. **Use classes** for repeated styling instead of individual style attributes
3. **Limit shadow effects** to key focal points
4. **Optimize icon usage** - use sparingly for visual hierarchy
5. **Keep markdown blocks** concise for faster rendering

## Best Practices for Infographics

1. **Visual Hierarchy**: Use size, color, and positioning to guide attention
2. **Consistent Styling**: Apply classes for uniform appearance
3. **Color Psychology**: Choose colors that match your message
4. **White Space**: Use adequate padding and spacing
5. **Typography**: Limit to 2-3 font sizes for clarity
6. **Contrast**: Ensure text is readable against backgrounds
7. **Progressive Disclosure**: Use tooltips for additional details
8. **Accessibility**: Consider colorblind-friendly palettes

This guide covers the essential aspects of creating professional infographic diagrams with D2. The declarative syntax combined with powerful styling options makes D2 ideal for creating data visualizations, process flows, comparison charts, and interactive infographics.