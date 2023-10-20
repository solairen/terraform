FROM ubuntu:22.04

# Variables
ARG username=terraform
ARG path=/terraform

# Environment
ENV USER=${username}
ENV USERNAME=${username}

# Use user root
USER root

# Create folder
RUN mkdir ${path}

# Copy files to container
COPY . ${path}

# Install packages
RUN apt update && apt install curl wget sshpass less gnupg software-properties-common -y

# Install Terraform
RUN wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

RUN gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
tee /etc/apt/sources.list.d/hashicorp.list

RUN apt update && apt install terraform -y

# Add user terraform
RUN useradd -ms /bin/bash ${username}
RUN chown -R ${username}:${username} ${path}

# Install oh-my-posh
RUN wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
RUN chmod +x /usr/local/bin/oh-my-posh

# Copy oh-my-posh
RUN mkdir -p ${path}/.devcontainer/configuration
COPY .devcontainer/configuration/terminal.omp.json ${path}/.devcontainer/configuration/terminal.omp.json
RUN echo 'eval "$(oh-my-posh init bash --config /terraform/.devcontainer/configuration/terminal.omp.json)"' >> /home/${username}/.bashrc

# User terraform
WORKDIR ${path}
USER ${username}
