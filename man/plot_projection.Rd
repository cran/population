\name{plot_projection}
\alias{plot_projection}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot population projections
}
\description{
Plot population projections.
}
\usage{
plot_projection(projection, kind)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{projection}{
A list obtained after running functions 'project' or 'project_cores'.
}
  \item{kind}{
(optional) A string indicating which quantity should be plotted ("median" or "mean"). If missing, all projections are shown.
}

}
\details{
Plot all population projections or the median or mean with 95\% confidence interval. Only total population sizes are displayed.
}

\value{No returned value, plot created}

\examples{
years <- 10
runs <- 100

init.pop <- c(30, 20, 15, 12, 10, 9, 8, 7, 6, 5)

surv.md <- c(0.5, 0.7, 0.9, 0.9, 0.9, 0.9, 0.9, 0.9, 0.9, 0.9)
surv.sd <- c(0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1)
surv.msd <- cbind(surv.md, surv.sd)

litter.md <- c(0.2, 1.1, 2.8, 2.8, 2.8, 2.8, 2.8, 2.8, 1.8, 0.2)
litter.sd <- c(0.1, 0.2, 0.15, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1)
litter.msd <- cbind(litter.md, litter.sd)

nclass <- 4 # vary number of classes

projection <- project(
	years = years,
	runs = runs,
	initial_population = init.pop[1:nclass],
	survival = surv.msd[1:nclass,],
	litter = litter.msd[1:nclass,]
	)

plot_projection(projection)
plot_projection(projection, kind="median")
}

