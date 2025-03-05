FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# # install dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get remove -y python3.10 && \
    apt-get install -y --no-install-recommends software-properties-common gnupg2 && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    procps \
    build-essential curl \
    libpq-dev \
    libssl-dev libffi-dev \
    python3.9 python3.9-dev python3.9-venv libpython3.9-dev libpython3.9 \
    python3.9-distutils \
    unixodbc-dev git lsb-release \
    alien odbcinst

RUN ln -s /usr/bin/python3.9 /usr/bin/python && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3.9 get-pip.py

WORKDIR /app

# RUN pip install --upgrade pip

COPY . .

RUN pip --no-cache-dir install -r requirements.txt

ENTRYPOINT [ "soda" ]
CMD [ "scan" ]
