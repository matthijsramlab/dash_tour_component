# AUTO GENERATED FILE - DO NOT EDIT

r_Tour <- function(id=NULL, accentColor=NULL, isOpen=NULL, steps=NULL) {
    
    props <- list(id=id, accentColor=accentColor, isOpen=isOpen, steps=steps)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tour',
        namespace = 'dash_tour_component',
        propNames = c('id', 'accentColor', 'isOpen', 'steps'),
        package = 'dashTourComponent'
        )

    structure(component, class = c('dash_component', 'list'))
}
