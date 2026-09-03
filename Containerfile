FROM registry.cloud.college.ucsb.edu/ucsb/scipy-base:latest

LABEL maintainer="LSIT Systems <lsitops@lsit.ucsb.edu>"
LABEL python.version="$(python --version 2>&1 | awk '{print $2}')"

USER root

RUN apt-get update &&\ 
    apt-get install -y --no-install-recommends python3-full &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*

RUN mamba install -y -c conda-forge \
    datasets \
    jax \
    keras \
    nltk \
    praw \
    pyLDAvis \
    pytorch \
    scrapy \
    selenium \
    tokenizers \
    transformers \
    webdriver-manager \
    wordcloud \
    yellowbrick \
    zstandard

RUN pip install -U afinn bertopic gensim jq tf-keras top2vec pytensor tensorflow-cpu

USER $NB_USER
