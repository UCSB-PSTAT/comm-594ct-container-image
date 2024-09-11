FROM ucsb/scipy-base:latest

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
    tokenizers \
    transformers \
    wordcloud \
    yellowbrick \
    zstandard

USER $NB_USER
