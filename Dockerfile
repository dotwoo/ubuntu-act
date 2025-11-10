from catthehacker/ubuntu:act-latest as base


ENV AWS_PAGER=""
RUN apt-get update && apt-get install -y curl unzip 

RUN set -x && cd /tmp && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli
