% Auto-generated: do not edit by hand
\name{r_DashTour}

\alias{r_DashTour}

\title{DashTour component}

\description{

}

\usage{
r_DashTour(id=NULL, accentColor=NULL, isOpen=NULL, steps=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{accentColor}{Character. Change --reactour-accent (defaults to accentColor on IE) css custom prop to apply color in Helper, number, dots, etc
Type: string
Default: string}

\item{isOpen}{Logical. Whether the Tour component is currently open}

\item{steps}{List of lists containing elements 'selector', 'content', 'position', 'action', 'style', 'stepinteraction', 'navdotarialabel'.
those elements have the following types:
  - selector (character; optional)
  - content (a list of or a singular dash component, string or number | dash component; required)
  - position (list of numerics | a value equal to: 'top', 'right', 'bottom', 'left', 'center'; optional)
  - action (optional)
  - style (named list; optional)
  - stepinteraction (logical; optional)
  - navdotarialabel (character; optional)s. The steps in the tour component}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

