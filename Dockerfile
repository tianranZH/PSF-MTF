FROM ubuntu:22.04

COPY requirements.txt .

RUN \
    # Retrieve new lists of packages
    apt-get update && \
    # Install the required packages
    apt-get install --assume-yes --no-install-recommends \
        locales \ 
        python3 \ 
        python3-pip \
        git

# Set environment variable `LANG`
ENV LANG en_US.UTF-8

# install dependencies
RUN pip install --user -r requirements.txt