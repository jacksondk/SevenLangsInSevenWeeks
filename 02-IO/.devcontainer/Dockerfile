# Use Ubuntu as the base image
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y git build-essential cmake libreadline-dev libncurses5-dev libssl-dev wget && \
    rm -rf /var/lib/apt/lists/*

# Install Io language
RUN git clone --recursive https://github.com/IoLanguage/io.git /opt/io
RUN cd /opt/io && \
    mkdir build && \
    cd build/ && \
    cmake .. && \
    make && \
    make install

# Add Io to PATH
ENV PATH="/usr/local/bin:$PATH"

# Default shell
CMD ["bash"]
