FROM r-base:4.1.1

MAINTAINER Amazon SageMaker Examples <amazon-sagemaker-examples@amazon.com>

RUN apt-get -y update && apt-get install -y --no-install-recommends \
    wget \
    apt-transport-https \
    ca-certificates \
    libcurl4-openssl-dev \
    libsodium-dev

RUN R -e "install.packages(c('plumber'), repos='https://cloud.r-project.org')"

COPY endpoints.R /opt/ml/endpoints.R
COPY deploy.R /opt/ml/deploy.R

WORKDIR /opt/ml

ENTRYPOINT ["/usr/bin/Rscript", "/opt/ml/deploy.R", "--no-save"]
