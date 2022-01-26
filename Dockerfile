# syntax=docker/dockerfile:1
FROM python:alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run"]
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
