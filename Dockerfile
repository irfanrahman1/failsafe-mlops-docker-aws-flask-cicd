#FROM python:3.9-slim-buster
#WORKDIR /app
#COPY . /app

#RUN apt update -y && apt install -y awscli

#RUN pip install --upgrade pip
#UN pip install -r requirements.txt
#CMD ["python3", "app.py"]


FROM python:3.9-slim-buster

WORKDIR /app
COPY . /app

# Install AWS CLI via pip (no apt repos required)
RUN pip install --upgrade pip awscli

# Install your app’s Python dependencies
RUN pip install -r requirements.txt

# Run the Flask app
CMD ["python3", "app.py"]
