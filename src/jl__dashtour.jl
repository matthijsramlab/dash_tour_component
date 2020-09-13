# AUTO GENERATED FILE - DO NOT EDIT

export jl__dashtour

"""
    jl__dashtour(;kwargs...)

A DashTour component.

Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `accentColor` (String; optional): Change --reactour-accent (defaults to accentColor on IE) css custom prop to apply color in Helper, number, dots, etc
Type: string
Default: string
- `isOpen` (Bool; optional): Whether the Tour component is currently open
- `steps` (optional): The steps in the tour component. steps has the following type: Array of lists containing elements 'selector', 'content', 'position', 'action', 'style', 'stepInteraction', 'navDotAriaLabel'.
Those elements have the following types:
  - `selector` (String; optional)
  - `content` (a list of or a singular dash component, string or number | dash component; required)
  - `position` (Array of Reals | a value equal to: 'top', 'right', 'bottom', 'left', 'center'; optional)
  - `action` (optional)
  - `style` (Dict; optional)
  - `stepInteraction` (Bool; optional)
  - `navDotAriaLabel` (String; optional)s
"""
function jl__dashtour(; kwargs...)
        available_props = Symbol[:id, :accentColor, :isOpen, :steps]
        wild_props = Symbol[]
        return Component("jl__dashtour", "DashTour", "dash_tour_component", available_props, wild_props; kwargs...)
end

