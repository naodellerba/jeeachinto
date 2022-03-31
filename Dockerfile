FROM python:3-buster

RUN mkdir /execute
WORKDIR /execute

RUN pip install --no-cache-dir "jeeachinto>=0.2.4"
RUN echo '__import__("jeeachinto").Server().start()' > exec.py

USER nobody

ENTRYPOINT ["python3","exec.py"]
