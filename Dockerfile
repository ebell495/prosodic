FROM python:3.8-bullseye
RUN pip3 install atheris

COPY . /prosodic
WORKDIR /prosodic
RUN python3 -m pip install . && chmod +x fuzz/fuzz.py