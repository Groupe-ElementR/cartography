% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/propLinkLayer.R
\name{propLinkLayer}
\alias{propLinkLayer}
\title{Proportional Links Layer}
\usage{
propLinkLayer(
  x,
  df,
  xid = NULL,
  dfid = NULL,
  var,
  maxlwd = 40,
  col,
  legend.pos = "bottomleft",
  legend.title.txt = var,
  legend.title.cex = 0.8,
  legend.values.cex = 0.6,
  legend.values.rnd = 0,
  legend.frame = FALSE,
  add = TRUE
)
}
\arguments{
\item{x}{an sf object, a simple feature collection.}

\item{df}{a data frame that contains identifiers of starting and ending points and a variable.}

\item{xid}{names of the identifier variables in x, character 
vector of length 2, default to the 2 first columns. (optional)}

\item{dfid}{names of the identifier variables in df, character 
vector of length 2, default to the two first columns. (optional)}

\item{var}{name of the variable used to plot the links widths.}

\item{maxlwd}{maximum size of the links.}

\item{col}{color of the links.}

\item{legend.pos}{position of the legend, one of "topleft", "top", 
"topright", "right", "bottomright", "bottom", "bottomleft", "left" or a 
vector of two coordinates in map units (c(x, y)). If 
legend.pos is "n" then the legend is not plotted.}

\item{legend.title.txt}{title of the legend.}

\item{legend.title.cex}{size of the legend title.}

\item{legend.values.cex}{size of the values in the legend.}

\item{legend.values.rnd}{number of decimal places of the values 
displayed in the legend.}

\item{legend.frame}{whether to add a frame to the legend (TRUE) or 
not (FALSE).}

\item{add}{whether to add the layer to an existing plot (TRUE) or 
not (FALSE).}
}
\description{
Plot a layer of proportional links. Links widths are directly proportional to values of a variable.
}
\note{
Unlike most of cartography functions, identifiers variables are mandatory.
}
\examples{
library(sf)
mtq <- st_read(system.file("gpkg/mtq.gpkg", package="cartography"))
mob <- read.csv(system.file("csv/mob.csv", package="cartography"))
# Create a link layer - work mobilities to Fort-de-France (97209)
mob.sf <- getLinkLayer(x = mtq, df = mob[mob$j==97209,], dfid = c("i", "j"))
# Plot the links - Work mobility
plot(st_geometry(mtq), col = "grey60",border = "grey20")
propLinkLayer(x = mob.sf, df = mob,
              maxlwd = 10,
              legend.pos = "topright",
              var = "fij",
              col = "#92000090", add = TRUE)
}
\seealso{
\link{gradLinkLayer}, \link{getLinkLayer}, \link{legendPropLines}
}
