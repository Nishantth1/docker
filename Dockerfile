FROM python:3.8-alpine
WORKDIR /app
COPY requirements.txt /app/requirements.txt
COPY ./app/

RUN pip install -r requirements.txt
CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]