# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the backend directory and requirements.txt into the container at /app
COPY backend/ /app/backend/
COPY backend/requirements.txt /app/requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 to the outside world
EXPOSE 8000

# Set environment variables, if needed (optional)
# ENV ENV_NAME value

# Run Django server
CMD ["python", "backend/manage.py", "runserver", "0.0.0.0:8000"]
