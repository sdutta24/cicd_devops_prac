# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run tests to ensure everything is working (optional, but good practice)
RUN pytest tests/ || exit 1

# Define the command to run the application
CMD ["python", "calculator.py"]
