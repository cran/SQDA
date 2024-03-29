% Generated by roxygen2 (4.0.2): do not edit by hand
\name{cross}
\alias{cross}
\title{generate cross-validation ids}
\usage{
cross(data = NULL, cv = 5)
}
\arguments{
\item{data}{data matrix with column names being the class labels and row names being the genes.}

\item{cv}{the cross-validation folds}
}
\value{
cross-validation ids that can be used to split data into training data and testing data.
}
\description{
generate cross-validation ids
}

