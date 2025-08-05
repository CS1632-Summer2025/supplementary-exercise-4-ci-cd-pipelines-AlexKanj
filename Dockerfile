# Use an official Python image (since Rent-A-Cat site is Python-based)
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy everything into the container
COPY . .

# Install dependencies (update if you're using Flask, etc.)
RUN pip install -r requirements.txt

# Expose port 8080 for the app
EXPOSE 8080

# Start the app
CMD ["python", "main.py"]
