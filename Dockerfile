FROM python:alpine3.7
COPY ./jenkins-lab /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN apk add libstdc++
EXPOSE 5000
EXPOSE 22
CMD python ./app.py
