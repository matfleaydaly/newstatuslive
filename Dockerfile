FROM python:3.5-alpine

RUN mkdir /statuspage
COPY requirements.txt /statuspage/requirements.txt

RUN pip install -r /statuspage/requirements.txt
ADD statuspage /statuspage
WORKDIR /statuspage

ENTRYPOINT [ "python", "statuspage.py"]
CMD [ "--version"]
