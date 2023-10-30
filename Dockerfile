# Use an official lightweight Python image.
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Install Flask
RUN pip install flask

# Copy the current directory contents into the container at /app
COPY hello_world.py /app

# Tell Docker we want to expose the port 5000
EXPOSE 5000

# Command to run on container start
CMD ["python", "hello_world.py"]

