library(RPostgreSQL)

test_that("it should get the person", {
    expect_equal(get_person(), 'Dave')
})
