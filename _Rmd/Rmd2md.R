#!/usr/bin/env Rscript
library(knitr)

# Modified version of the script by https://nicolewhite.github.io
args <- commandArgs(TRUE)
filename <- args[1]

if(!grepl(".Rmd", filename)) { stop("File extension .Rmd is required") }
if(!file.exists(filename)) { stop("404-File not found") }

output <- paste0("../_posts/", sub('.Rmd', '.md', filename))
knit(filename, output)

origin <- "{{ site.url }}/images"
destination <- "../images"
images <- sapply(list.files(origin, ".png"), function(x) paste(origin, x, sep="/"))
file.copy(images, destination)

unlink("{{ site.url }}", recursive=T)
