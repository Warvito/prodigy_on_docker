FROM python:3.6

RUN mkdir /prodigy
WORKDIR /prodigy

COPY wheel /prodigy
RUN pip install prodigy -f /prodigy/prodigy-1.11.6-linux/linux/
RUN python -m spacy download en_core_web_sm

EXPOSE 8080
RUN mkdir /prodigy_home
ENV PRODIGY_HOME /prodigy_home
WORKDIR /prodigy_home
