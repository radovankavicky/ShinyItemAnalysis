% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DistractorAnalysis.R
\name{DistractorAnalysis}
\alias{DistractorAnalysis}
\title{Function for item distractor analysis}
\usage{
DistractorAnalysis(data, key, p.table = FALSE, num.groups = 3, matching = NULL)
}
\arguments{
\item{data}{character: data matrix or data frame. See \strong{Details}.}

\item{key}{character: answer key for the items.}

\item{p.table}{logical: should the function return the proportions. If \code{FALSE} (default)
the counts are returned.}

\item{num.groups}{numeric: number of groups to that should be respondents splitted.}

\item{matching}{numeric: numeric vector. If not provided, total score is calculated and
distractor analysis is performed based on it.}
}
\description{
Performs distractor analysis for each item and optional number of groups.
}
\details{
This function is adapted version of \code{\link[CTT]{distractor.analysis}} function from \code{CTT} package.
The scores are calculatede using the item data and key. The respondents are then splitted into
the \code{num.groups}-quantiles and the number (or proportion) of respondents in each quantile is
reported with respect to their answers.

The \code{data} is a matrix or data frame whose rows represents unscored item response from a
multiple-choice test and columns correspond to the items.

The \code{key} must be a vector of the same length as \code{ncol(data)}.
}
\examples{
\dontrun{
# loading 100-item medical admission test data
data(dataMedicaltest, dataMedicalkey)
data <- dataMedicaltest[, 1:100]
key <- unlist(dataMedicalkey)

# distractor analysis for dataMedicaltest data set
DistractorAnalysis(data, key)

# distractor analysis for dataMedicaltest data set with proportions
DistractorAnalysis(data, key, p.table = T)

# distractor analysis for dataMedicaltest data set for 6 groups
DistractorAnalysis(data, key, num.group = 6)
}


}
\seealso{
\code{\link[CTT]{distractor.analysis}}
}
\author{
Adela Drabinova \cr
Institute of Computer Science, The Czech Academy of Sciences \cr
Faculty of Mathematics and Physics, Charles University \cr
drabinova@cs.cas.cz \cr

Patricia Martinkova \cr
Institute of Computer Science, The Czech Academy of Sciences \cr
martinkova@cs.cas.cz \cr
}
