# AUTO GENERATED FILE - DO NOT EDIT

r_DashTour <- function(children=NULL, id=NULL, accentColor=NULL, isOpen=NULL, steps=NULL, className=NULL, closeWithMask=NULL, disableDotsNavigation=NULL, disableInteraction=NULL, disableKeyboardNavigation=NULL, CurrentStep=NULL, goTopStep=NULL, highlightedMaskClassName=NULL, inViewThreshold=NULL, maskClassName=NULL, maskSpace=NULL, rounded=NULL, scrollDuration=NULL, scrollOffset=NULL, showButtons=NULL, showCloseButton=NULL, showNavigation=NULL, showNavigationNumber=NULL, showNumber=NULL, startAt=NULL, update=NULL, updateDelay=NULL) {
    
    props <- list(children=children, id=id, accentColor=accentColor, isOpen=isOpen, steps=steps, className=className, closeWithMask=closeWithMask, disableDotsNavigation=disableDotsNavigation, disableInteraction=disableInteraction, disableKeyboardNavigation=disableKeyboardNavigation, CurrentStep=CurrentStep, goTopStep=goTopStep, highlightedMaskClassName=highlightedMaskClassName, inViewThreshold=inViewThreshold, maskClassName=maskClassName, maskSpace=maskSpace, rounded=rounded, scrollDuration=scrollDuration, scrollOffset=scrollOffset, showButtons=showButtons, showCloseButton=showCloseButton, showNavigation=showNavigation, showNavigationNumber=showNavigationNumber, showNumber=showNumber, startAt=startAt, update=update, updateDelay=updateDelay)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DashTour',
        namespace = 'dash_tour_component',
        propNames = c('children', 'id', 'accentColor', 'isOpen', 'steps', 'className', 'closeWithMask', 'disableDotsNavigation', 'disableInteraction', 'disableKeyboardNavigation', 'CurrentStep', 'goTopStep', 'highlightedMaskClassName', 'inViewThreshold', 'maskClassName', 'maskSpace', 'rounded', 'scrollDuration', 'scrollOffset', 'showButtons', 'showCloseButton', 'showNavigation', 'showNavigationNumber', 'showNumber', 'startAt', 'update', 'updateDelay'),
        package = 'dashTourComponent'
        )

    structure(component, class = c('dash_component', 'list'))
}
