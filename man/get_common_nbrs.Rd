% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_common_nbrs.R
\name{get_common_nbrs}
\alias{get_common_nbrs}
\title{Get all common neighbors between two or more nodes}
\usage{
get_common_nbrs(graph, nodes)
}
\arguments{
\item{graph}{a graph object of class \code{dgr_graph}.}

\item{nodes}{a vector of node ID values of length at least 2.}
}
\value{
a vector of node ID values.
}
\description{
With two or more nodes, get the set of common neighboring nodes.
}
\examples{
# Create a directed graph with 5 nodes
graph <-
  create_graph() \%>\%
  add_path(n = 5)

# Find all common neighbor nodes
# for nodes `1` and `2` (there are no
# common neighbors amongst them)
graph \%>\%
  get_common_nbrs(
    nodes = c(1, 2))

# Find all common neighbor nodes for
# nodes `1` and `3`
graph \%>\%
  get_common_nbrs(
    nodes = c(1, 3))
}
