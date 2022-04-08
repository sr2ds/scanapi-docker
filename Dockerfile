FROM python:3.6

RUN pip install scanapi

WORKDIR /scanapi

COPY ./scanapi/scanapi.yml .

CMD scanapi run /scanapi/scanapi.yml --output-path /output/report.html
