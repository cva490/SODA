FROM python

WORKDIR /app

RUN python -m pip install --upgrade pip

RUN pip install pyyaml

RUN pip install pandas

RUN pip install snowflake-connector-python

RUN pip install -i https://pypi.cloud.soda.io soda-snowflake

RUN git clone https://github.com/cva490/SODA.git

#COPY . /app

WORKDIR /app/SODA/

#ENTRYPOINT [ "soda" ]

#CMD [ "python","app.py" ]

ENTRYPOINT ["sh", "./run.sh"]

#CMD ["./run.sh"]