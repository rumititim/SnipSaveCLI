FROM python:3.8-bullseye

WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip && pip install --no-cache-dir -r /app/requirements.txt
ADD src/ /app
RUN echo 'alias ssv="python3 /app/main.py"' >> ~/.bashrc
