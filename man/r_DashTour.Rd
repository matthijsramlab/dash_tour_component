% Auto-generated: do not edit by hand
\name{r_DashTour}

\alias{r_DashTour}

\title{DashTour component}

\description{

}

\usage{
r_DashTour(children=NULL, id=NULL, accentColor=NULL, isOpen=NULL,
steps=NULL, className=NULL, closeWithMask=NULL,
disableDotsNavigation=NULL, disableInteraction=NULL,
disableKeyboardNavigation=NULL, CurrentStep=NULL,
goTopStep=NULL, highlightedMaskClassName=NULL,
inViewThreshold=NULL, maskClassName=NULL, maskSpace=NULL,
rounded=NULL, scrollDuration=NULL, scrollOffset=NULL,
showButtons=NULL, showCloseButton=NULL, showNavigation=NULL,
showNavigationNumber=NULL, showNumber=NULL, startAt=NULL,
update=NULL, updateDelay=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number | character. Content to be rendered
Type: node | elem}

\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{accentColor}{Character. Change --reactour-accent (defaults to accentColor on IE) css custom prop to apply color in Helper, number, dots, etc
Type: string
Default: string}

\item{isOpen}{Logical. Whether the Tour component is currently open}

\item{steps}{List of lists containing elements 'selector', 'content', 'position', 'action', 'style', 'stepinteraction', 'navdotarialabel'.
those elements have the following types:
  - selector (character; optional)
  - content (character; required)
  - position (list of numerics | a value equal to: 'top', 'right', 'bottom', 'left', 'center'; optional)
  - action (optional)
  - style (named list; optional)
  - stepinteraction (logical; optional)
  - navdotarialabel (character; optional)s. The steps in the tour component}

\item{className}{Character. Custom class name to add to the Helper
Type: string}

\item{closeWithMask}{Logical. Close the Tour by clicking the Mask
Type: bool}

\item{disableDotsNavigation}{Logical. Disable interactivity with Dots navigation in Helper
Type: bool}

\item{disableInteraction}{Logical. Disable the ability to click or intercat in any way with the Highlighted element
Type: bool}

\item{disableKeyboardNavigation}{A value equal to: proptypes.bool, proptypes.array. Disable all keyboard navigation (next and prev step) when true, disable only selected keys when array
Type: bool | array(['esc', 'right', 'left'])}

\item{CurrentStep}{Numeric. The Current step}

\item{goTopStep}{Numeric. Programmatically change current step after the first render, when the value changes}

\item{highlightedMaskClassName}{Character. Custom class name to add to the element which is the overlay for the target element when disableInteraction}

\item{inViewThreshold}{Numeric. Tolerance in pixels to add when calculating if an element is outside viewport to scroll into view}

\item{maskClassName}{Character. Custom class name to add to the Mask}

\item{maskSpace}{Numeric. Extra Space between in pixels between Highlighted element and Mask}

\item{rounded}{Numeric. Beautify Helper and Mask with border-radius (in px)}

\item{scrollDuration}{Numeric. Smooth scroll duration when positioning the target element (in ms)}

\item{scrollOffset}{Numeric. Offset when positioning the target element after scroll to it}

\item{showButtons}{Logical. Show/Hide Helper Navigation buttons}

\item{showCloseButton}{Logical. Show/Hide Helper Close button}

\item{showNavigation}{Logical. Show/Hide Helper Navigation Dots}

\item{showNavigationNumber}{Logical. Show/Hide number when hovers on each Navigation Dot}

\item{showNumber}{Logical. Show/Hide Helper Number Badge}

\item{startAt}{Numeric. Starting step when Tour is open the first time}

\item{update}{Character. Value to listen if forced update is needed}

\item{updateDelay}{Numeric. Delay time when forcing update. Useful when there are known animation/transitions}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

