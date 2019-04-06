FROM rocker/r-base
RUN mkdir /app
RUN apt-get update - && apt-get install -y libpq-dev git libssl-dev ssh texlive-latex-base texlive-fonts-recommended libcurl4-openssl-dev libxml2-dev
WORKDIR /app
RUN R -e 'install.packages("devtools", repos="http://cran.us.r-project.org")'
ADD DESCRIPTION /app
RUN R -e 'devtools::install_deps(dependencies = TRUE)'
ADD . /app
