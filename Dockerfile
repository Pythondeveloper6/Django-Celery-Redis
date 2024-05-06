# setup server 

# 1 : start docker kernal + python
FROM python:3.11-slim-bullseye

# 2 : ENV : show logs
ENV PYTHONUNBUFFERED=1

# 3 : update kernal + install dep
RUN apt-get update && apt-get -y install gcc libpq-dev

# 4: create project folder : kernal
WORKDIR /app

# 5: Copy requi
COPY requirements.txt /app/requirements.txt

# 6: install req
RUN pip install -r /app/requirements.txt

# 7: copy project code --> docker 
COPY . /app/