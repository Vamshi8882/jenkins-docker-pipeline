# Use official Python image
FROM python:3.10-slim

WORKDIR /app

# Copy all app files (including tests and batch script)
COPY . .

# Install pytest
RUN pip install --no-cache-dir pytest

# Set default command to run tests using batch syntax on Windows Jenkins
CMD ["pytest", "tests/"]

