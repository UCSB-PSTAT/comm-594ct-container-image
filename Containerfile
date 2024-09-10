FROM docker.io/ucsb/scipy-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN mamba install -y \
    bertopic \
    datasets \
    gensim \
    jax \
    keras \
    nltk \
    praw \
    pyjq \
    pyLDAvis \
    pytorch \
    scrapy \
    tensorflow-cpu \
    theano \
    tokenizers \
    transformers \
    wordcloud \
    yellowbrick \
    zstandard

#RUN pip install <libraries>

USER $NB_USER
