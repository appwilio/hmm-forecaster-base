FROM r-base:4.0.3
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev libxml2-dev libpq-dev \
    r-cran-forecast \
    r-cran-caret \
    r-cran-ggplot2 \
    r-cran-tseries \
    r-cran-lubridate \
    r-cran-rpostgresql \
    && rm -rf /var/lib/apt/lists/*
RUN Rscript -e "install.packages(c('neuralnet', 'LiblineaR'))"

