# AUTO GENERATED FILE - DO NOT EDIT

export jl__dashtour

"""
    jl__dashtour(;kwargs...)
    jl__dashtour(children::Any;kwargs...)
    jl__dashtour(children_maker::Function;kwargs...)


A DashTour component.

Keyword arguments:
- `children` (a list of or a singular dash component, string or number | String; optional): Content to be rendered
Type: node | elem
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `accentColor` (String; optional): Change --reactour-accent (defaults to accentColor on IE) css custom prop to apply color in Helper, number, dots, etc
Type: string
Default: string
- `isOpen` (Bool; optional): Whether the Tour component is currently open
- `steps` (optional): The steps in the tour component. steps has the following type: Array of lists containing elements 'selector', 'content', 'position', 'action', 'style', 'stepInteraction', 'navDotAriaLabel'.
Those elements have the following types:
  - `selector` (String; optional)
  - `content` (String; required)
  - `position` (Array of Reals | a value equal to: 'top', 'right', 'bottom', 'left', 'center'; optional)
  - `action` (optional)
  - `style` (Dict; optional)
  - `stepInteraction` (Bool; optional)
  - `navDotAriaLabel` (String; optional)s
- `className` (String; optional): Custom class name to add to the Helper
Type: string
- `closeWithMask` (Bool; optional): Close the Tour by clicking the Mask
Type: bool
- `disableDotsNavigation` (Bool; optional): Disable interactivity with Dots navigation in Helper
Type: bool
- `disableInteraction` (Bool; optional): Disable the ability to click or intercat in any way with the Highlighted element
Type: bool
- `disableKeyboardNavigation` (a value equal to: PropTypes.bool, PropTypes.array; optional): Disable all keyboard navigation (next and prev step) when true, disable only selected keys when array
Type: bool | array(['esc', 'right', 'left'])
- `CurrentStep` (Real; optional): The Current step
- `goTopStep` (Real; optional): Programmatically change current step after the first render, when the value changes
- `highlightedMaskClassName` (String; optional): Custom class name to add to the element which is the overlay for the target element when disableInteraction
- `inViewThreshold` (Real; optional): Tolerance in pixels to add when calculating if an element is outside viewport to scroll into view
- `maskClassName` (String; optional): Custom class name to add to the Mask
- `maskSpace` (Real; optional): Extra Space between in pixels between Highlighted element and Mask
- `rounded` (Real; optional): Beautify Helper and Mask with border-radius (in px)
- `scrollDuration` (Real; optional): Smooth scroll duration when positioning the target element (in ms)
- `scrollOffset` (Real; optional): Offset when positioning the target element after scroll to it
- `showButtons` (Bool; optional): Show/Hide Helper Navigation buttons
- `showCloseButton` (Bool; optional): Show/Hide Helper Close button
- `showNavigation` (Bool; optional): Show/Hide Helper Navigation Dots
- `showNavigationNumber` (Bool; optional): Show/Hide number when hovers on each Navigation Dot
- `showNumber` (Bool; optional): Show/Hide Helper Number Badge
- `startAt` (Real; optional): Starting step when Tour is open the first time
- `update` (String; optional): Value to listen if forced update is needed
- `updateDelay` (Real; optional): Delay time when forcing update. Useful when there are known animation/transitions
"""
function jl__dashtour(; kwargs...)
        available_props = Symbol[:children, :id, :accentColor, :isOpen, :steps, :className, :closeWithMask, :disableDotsNavigation, :disableInteraction, :disableKeyboardNavigation, :CurrentStep, :goTopStep, :highlightedMaskClassName, :inViewThreshold, :maskClassName, :maskSpace, :rounded, :scrollDuration, :scrollOffset, :showButtons, :showCloseButton, :showNavigation, :showNavigationNumber, :showNumber, :startAt, :update, :updateDelay]
        wild_props = Symbol[]
        return Component("jl__dashtour", "DashTour", "dash_tour_component", available_props, wild_props; kwargs...)
end

jl__dashtour(children::Any; kwargs...) = jl__dashtour(;kwargs..., children = children)
jl__dashtour(children_maker::Function; kwargs...) = jl__dashtour(children_maker(); kwargs...)

