\name{binmod.predict}
\alias{PAS.binmod.predict}
\alias{binmod.predict}
\alias{predict}
\alias{predict.binmod}

\title{
predict
}
\description{
Extract predicted genomic breeding values from the 10-fold cross-validation result that has been saved in a binmod object, or predict the breeding values for a new sample.
}
\usage{
\method{predict}{binmod}(object, newx=NULL, ...)
}

\arguments{
  \item{object}{An object generated by the binnod function.}
  \item{newx}{
  The numeric genotype indicator matrix of a new sample, which need to be coded in the same way as the genotypicdata generating the binmod object.
  }
  \item{...}{Further parameters may also be supplied as arguments.}
}
\examples{
#load PAS library
library(PAS)
#load the demo data
data(beef)
#conduct bin model analysis.
binmod.result=binmod(x, y, map)
#generate a new sample by sampling 20 individuals from the demo data
x0=x[sample(1:NROW(x) , 20), ]
#predict the genomic values of the new sample.
predict(binmod.result, newx=x0)
}
