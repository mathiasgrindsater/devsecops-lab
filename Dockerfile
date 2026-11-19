FROM python:3.8
ENV API_KEY=supersecret123
WORKDIR /api
COPY . .
RUN apt-get update && apt-get install -y curl vim
RUN pip install -r requirements.txt
EXPOSE 5000
CMD flask --app app run --host=0.0.0.0



