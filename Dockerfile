FROM registry.gitlab.com/cencosud-ds/cencommerce/utils/docker-images/python:3.11.5-alpine3.18
RUN apk update && apk upgrade

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

COPY server.py .

EXPOSE 8080

# command to run on container start
CMD [ "python", "./server.py" ]

