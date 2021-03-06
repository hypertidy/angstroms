% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/romsmap.R
\name{romsboundary}
\alias{romsboundary}
\alias{databoundary}
\title{Boundary polygon from raster of coordinates.}
\usage{
romsboundary(cds)

databoundary(x, mask = NULL, ...)
}
\arguments{
\item{cds}{two-layer Raster}

\item{x}{a thing}

\item{mask}{logical}

\item{...}{dots}
}
\description{
Create a boundary polygon by tracking around coordinates stored in a RasterStack.
}
\details{
The first layer in the stack is treated as the X coordinate, second as Y.
}
\examples{
ice_grid_boundary <- romsboundary(ice_coords)
plot(antarctica)
## does not make sense in this space
plot(ice_grid_boundary, add = TRUE, border = "grey")

## ok in this one
#library(rgdal)
#   proj4string(ice_grid_boundary) <- CRS("+init=epsg:4326")
# pweird <- "+proj=laea +lon_0=147 +lat_0=-42 +ellps=WGS84"
#  laea_world <- spTransform(antarctica, pweird)
#  plot(extent(laea_world) + 8e6, type = "n", asp = 1)
#  plot(laea_world, add = TRUE)
#  plot(spTransform(ice_grid_boundary, pweird), add  = TRUE, border = "darkgrey")
}
