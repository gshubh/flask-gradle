FROM python:3.6

# Create app directory
COPY . /app

WORKDIR /app

# Install app dependencies
RUN pip install -r requirements.txt

ENTRYPOINT ["src/helloWorld/"]

CMD ["python hello.py"]
