FROM python:3.11-slim-buster
ENV PYTHONUNBUFFERED=1

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    zlib1g-dev \
    libreadline-dev \
    && rm -rf /var/lib/apt/lists/*

# Download and compile the latest SQLite version
RUN wget https://www.sqlite.org/2024/sqlite-autoconf-3450200.tar.gz \
    && tar xzf sqlite-autoconf-3450200.tar.gz \
    && cd sqlite-autoconf-3450200 \
    && ./configure \
    && make \
    && make install \
    && ldconfig \
    && cd .. \
    && rm -rf sqlite-autoconf-3450200.tar.gz sqlite-autoconf-3450200

WORKDIR /django

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
