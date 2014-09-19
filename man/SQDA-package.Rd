\name{SQDA-package}
\alias{SQDA-package}
\alias{SQDA}
\docType{package}
\title{
Sparse Quadratic Discriminant Analysis
}
\description{
This package is used to perform Sparse Quadratic Discriminant Analysis (SQDA). In SQDA, the covariance matrix are assumed to be block-diagonal.And, for each block, sparsity assumption is imposed on the covariance matrix. It is useful in high-dimensional setting.
}
\details{
\tabular{ll}{
Package: \tab SQDA\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-09-19\cr
License: \tab GPL-3\cr
}
The package has one function, sQDA(), which basically takes in several parameters and output the predictions on the new dataset based on the sparse quadratic discriminant analysis. More details on the algorithms see the reference below.
}
\author{
Jiehuan Sun
Jiehuan Sun <jiehuan.sun@yale.edu>
}
\references{
The application of sparse estimation of covariance matrix to quadratic discriminant analysis. Jiehuan Sun and Hongyu Zhao. 
}
\keyword{ package }
\examples{
data(exampledata)
res<-sQDA(train.data[1:100,],test.data[1:100,],lams=0.2,presel=FALSE)
sum(res$pred!=colnames(test.data))/ncol(test.data)  ##prediction error
res$p ## number of blocks selected
res$pred ## predicted class labels on test.data
}
