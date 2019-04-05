FROM rocker/r-base
RUN mkdir /app
RUN apt-get update - && apt-get install -y libpq-dev
WORKDIR /app
RUN R --vanilla -e 'install.packages(c("testthat", "RPostgreSQL"), repos="http://cran.us.r-project.org")'
ADD . /app
