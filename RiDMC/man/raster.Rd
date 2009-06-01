\name{Raster}
\alias{Raster}
\alias{rasterMap}
\alias{rasterInvMap}
\alias{rasterFill}
\alias{rasterFillRect}
\title{
  Raster data handling
}
\usage{
Raster(xlim, ylim, xres=100, yres=xres, data)
rasterXres(raster)
rasterYres(raster)
rasterXlim(raster)
rasterYlim(raster)
rasterXrange(raster)
rasterYrange(raster)
rasterXeps(raster)
rasterYeps(raster)
rasterFill(raster, value=1)
rasterFillRect(raster, value=1)
rasterMap(raster, FUN, value=1, outvalue=value)
rasterInvMap(raster, FUN, value=1, outvalue=value)
rasterContains(raster, pts)
rasterCheckPoints(raster, pts, value=1)
rasterSetPoints(raster, pts, value=1)
raster2Pts(raster, value=1)

\method{plot}{Raster}(x, y,
  palette = rainbow(length(unique(as.vector(x)))),
  xlab = "x", ylab = "y", axes = TRUE, mar = c(4, 4, 2, 2),
  ..., add = FALSE)
\method{lines}{Raster}(x, y, ...)
\method{as.matrix}{Raster}(x, ...)
}
\arguments{
  \item{A, B}{sets of Rn points}
  \item{f}{function}
  \item{raster}{a \code{Raster} object}
  \item{xlim, ylim}{ranges}
  \item{xres, yres}{resolutions}
  \item{pch}{see \code{plot}}
  \item{data}{raw raster matrix data}
  \item{x}{a Raster object}
  \item{y}{ignored}
  \item{value, outvalue}{reference integer value to be set/to look for into Raster
    cells. It can be safely ignored for standard usage}
  \item{xlab, ylab, axes, mar, add}{see \code{plotGrob}}
  \item{...}{arguments to and from other methods}
}
\description{
  Basic raster data handling
}
\details{
  Basic raster data handling
}
\author{
Antonio, Fabio Di Narzo
}
\keyword{ misc }
\examples{
A <- Raster(xlim=c(0, 100), ylim=c(0, 100), xres=100, yres=100)
B <- rasterFillRect(A, 25, 25, 75, 75)
plot(B)

F <- function(xy) xy + 10
C <- rasterMap(B, F)
plot(C)

plot(B*C)
plot(B + B*C)
plot(B + C + B*C)

F <- function(xy) xy * 1.2
D <- rasterMap(B, F)
plot(D)

iF <- function(xy) xy / 1.2
D1 <- rasterInvMap(B, iF)
plot(D1)

plot(D + D1)
}