library(testthat)

source("./app.R")

lest_results <- test_dir("./tests", reporter="summary")
