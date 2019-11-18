FROM python:3.6

# Create app directory
WORKDIR /src/helloWorld/hello

# Install app dependencies
COPY . /app

RUN pip install -r requirements.txt

# Bundle app source
COPY src/helloWorld/hello

EXPOSE 8080
CMD [ "gradle build" ]
