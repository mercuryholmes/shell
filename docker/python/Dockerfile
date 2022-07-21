FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# if not use docker-compose
# $ docker build -t python .
# $ docker run -it -d --name python -v `pwd`:/usr/src/app python
# $ docker exec -it python bash