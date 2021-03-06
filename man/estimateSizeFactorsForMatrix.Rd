\name{estimateSizeFactorsForMatrix}
\Rdversion{1.1}
\alias{estimateSizeFactorsForMatrix}
\title{
   Low-level function to estimate size factors with robust regression.
}
\description{
   Given a matrix or data frame of count data, this function estimates the size factors 
   as follows: Each column is divided by the geometric means of the rows. The median
   (or, ir requested, another location estimator)
   of these ratios (skipping the genes with a geometric mean of zero) is used as the
   size factor for this column.
   
   Typically, you will not call this function directly, but use \code{\link{estimateSizeFactors}}.
}
\usage{
estimateSizeFactorsForMatrix( counts, locfunc=median)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{counts}{
      a matrix or data frame of counts, i.e., non-negative integer values
}
  \item{locfunc}{
      a function to compute a location for a sample. By default, the median is used. However,
      especially for low counts, the \code{\link[genefilter]{shorth}} may give better results.
}
}
\value{
   a vector with the estimates size factors, one element per column
}

\author{
   Simon Anders, sanders@fs.tum.de
}
\seealso{
\code{\link{estimateSizeFactors}}
}
\examples{
cds <- makeExampleCountDataSet()
estimateSizeFactorsForMatrix( counts(cds) )
}
