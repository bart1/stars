% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mosaic.R
\name{st_mosaic}
\alias{st_mosaic}
\title{build mosaic (composite) of several spatially disjoint stars objects}
\usage{
st_mosaic(..., options = c("-vrtnodata", "-9999"))
}
\arguments{
\item{...}{a list of input stars objects}

\item{options}{character; options to the gdalbuildvrt command}
}
\value{
a stars object with the composite of the input; see also the documentation of \code{gdalbuildvrt}
}
\description{
build mosaic (composite) of several spatially disjoint stars objects
}
\details{
the gdal function buildvrt builds a mosaic of input images; these imput images can be multi-band, but not higher-dimensional data cubes or stars objects with multiple attributes

uses \link[sf]{gdal_utils} to internally call \code{buildvrt}; no executables external to R are called.
}
\examples{
x = read_stars(system.file("tif/L7_ETMs.tif", package = "stars"))
x1 = x[,100:200,100:200,]
x2 = x[,150:300,150:300,]
plot(st_mosaic(x1, x2))
}
