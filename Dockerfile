# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the backend directory and requirements.txt into the container at /app
COPY backend/ /app/backend/
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 to the outside world
EXPOSE 8000

# Run Django server
CMD ["python", "backend/manage.py", "runserver", "0.0.0.0:8000"]
