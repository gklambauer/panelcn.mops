% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{plotBoxplot}
\alias{plotBoxplot}
\title{Create box plot of normalized read counts}
\usage{
plotBoxplot(result, sampleName, countWindows, selectedGenes = NULL,
  showGene = 1, showLegend = TRUE, exonRange = NULL, ylimup = 1.15)
}
\arguments{
\item{result}{result object of panelcn.mops}

\item{sampleName}{name of the test sample that should be displayed}

\item{countWindows}{data.frame with contents of a BED file as returned by
getWindows}

\item{selectedGenes}{vector of names of genes of interest that should be
displayed or NULL if all genes are of interest. Default = NULL}

\item{showGene}{integer indicating which of the genes of interest to plot}

\item{showLegend}{flag to indicate whether to display a legend with the
names of the test samples. Default = TRUE}

\item{exonRange}{vector of 2 positive integers to limit box plot to a
certain range of exons or NULL}

\item{ylimup}{numeric, maximum RC is multiplied by this value to calculate 
second value of ylim. Default = 1.15}
}
\value{
generates a boxplot of the normalized read counts
}
\description{
Create box plot of normalized read counts
}
\examples{
data(panelcn.mops)
sampleNames <- colnames(elementMetadata(test))
selectedGenes <- "ATM"
plotBoxplot(result = resultlist[[1]], sampleName = sampleNames[1], 
            countWindows = countWindows, selectedGenes = selectedGenes, 
            showGene = 1)
}
