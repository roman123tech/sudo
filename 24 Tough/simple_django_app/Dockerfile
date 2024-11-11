# Use an official Python image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt /app/

# Install dependencies
RUN pip install -r requirements.txt

# Copy the project files to the container
COPY . /app/

# Expose port 5000
EXPOSE 5000

# Run migrations and start Django development server on port 5000
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:5000"]

