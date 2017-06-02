FROM node:8.0.0

ENV ROOT="/data"

ENV SRC_DIR="${ROOT}/src" \
    DEPLOYMENT_DIR="${ROOT}/deployment"

# Install the serverkess framework
RUN npm install -g serverless@1.14.0

# Install Python tools
RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends python-setuptools python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p ${SRC_DIR}
WORKDIR ${SRC_DIR}
