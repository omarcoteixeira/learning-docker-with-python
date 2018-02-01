# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Setup the working directory
WORKDIR /app

# Copy the local files to the working directory
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]