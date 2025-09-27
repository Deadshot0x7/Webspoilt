# Base image
FROM python:3.12-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1
ENV WEBSPLOIT_HOME=/app

# Create working directory
WORKDIR $WEBSPLOIT_HOME

# Copy repository contents
COPY . $WEBSPLOIT_HOME

# Install dependencies
RUN python3 -m venv venv \
    && . venv/bin/activate \
    && pip install --upgrade pip \
    && pip install -r requirements.txt

# Use non-root user for safety
RUN useradd -m websploituser
USER websploituser

# Entry point
ENTRYPOINT ["/bin/bash"]

