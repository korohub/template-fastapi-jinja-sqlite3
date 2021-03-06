#Create a ubuntu base image with python 3 installed.
FROM python:3.9.1-slim-buster

#Set the working directory
WORKDIR /app

#copy all the files
COPY . .

#Install the dependencies
RUN apt-get -y update
RUN pip3 install -r requirements.txt

#Expose the required port
EXPOSE 8000

#Run the command
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000", "--workers", "2" ]

