# Use official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy files to container
COPY requirements.txt .
COPY app.py .

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port Flask runs on
EXPOSE 5000

# Command to run app
CMD ["python", "app.py"]
