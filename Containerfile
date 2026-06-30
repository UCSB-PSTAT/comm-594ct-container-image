FROM registry.cloud.college.ucsb.edu/ucsb/scipy-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN mamba install -y \
    datasets \
    jax \
    keras \
    nltk \
    praw \
    pyjq \
    pyLDAvis \
    pytorch \
    scrapy \
    selenium \
    tensorflow-cpu \
    tokenizers \
    transformers \
    webdriver-manager \
    wordcloud \
    yellowbrick \
    zstandard

RUN pip install -U afinn bertopic gensim tf-keras top2vec pytensor

USER $NB_USER
