# Use the official Ubuntu base image
FROM ubuntu:latest

# Set non-interactive mode for apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    gcc \
    make \
    git \
    vim \
    nano \
    ssh \
    binutils \
    nasm \
    && rm -rf /var/lib/apt/lists/*

# Clone the project repository
RUN git clone https://github.com/mohamedelhoudaigui/assmebly_x86_64.git /home/ubuntu/project

# Set working directory to the cloned project
WORKDIR /home/ubuntu/project

# Set the default command to run the `main` script
CMD ["bash"]

