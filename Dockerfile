# Dockerfile,Image,Container

FROM python:3.10-slim
RUN apt-get update && apt-get install -y git
WORKDIR /
COPY . .
RUN git clone https://github.com/danielhasid/Test.git
RUN pip install -r req.txt
WORKDIR /Test

CMD ["pytest"]