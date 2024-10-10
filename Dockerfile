# Use an official Python runtime as a parent image
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app /app/app

COPY ./requirements.txt /app/requirements.txt

COPY ./final_model.pkl /app/final_model.pkl


# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r app/requirements.txt

# Make port 80 available to the world outside this container
# EXPOSE 80

# Run FastAPI when the container launches
#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]