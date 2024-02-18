# Use the official python image for your base image
FROM python:3.9-buster

# Set the working directory
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the requires python pacakages
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the application code to the working directory
COPY . .

# Set the environmenr variables for the flask app
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port
EXPOSE 5000

# Start the app
CMD ["flask", "run"]