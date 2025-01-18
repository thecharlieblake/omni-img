# Use the base image
FROM mcr.microsoft.com/devcontainers/python:3.12

# Install uv using the installation script
ADD https://astral.sh/uv/install.sh /uv-installer.sh
RUN sh /uv-installer.sh && rm /uv-installer.sh
ENV PATH="/root/.local/bin/:$PATH"

# Install additional packages using uv
RUN uv pip install --system torch --index-url https://download.pytorch.org/whl/cpu \
    && uv pip install --system numpy pandas matplotlib jax seaborn

# Only relevant if running container outside of devcontainer
WORKDIR /home/vscode
CMD ["/bin/zsh"]
