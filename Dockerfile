# Use the official Python image
FROM python:2.7

# Install dependencies
RUN pip install flask
RUN pip install twilio

# Copy the entire repo to /src
COPY . /src

# Set the default directory to /src
WORKDIR /src

ENV TWILIO_ACCOUNT_SID placeholder
ENV TWILIO_AUTH_TOKEN placeholder

CMD python chica_server.py

EXPOSE 5000
