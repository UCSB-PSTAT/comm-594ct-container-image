FROM ucsb/scipy-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN mamba install -y \
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
    selenium \
    tensorflow-cpu \
    tokenizers \
    top2vec \
    transformers \
    webdriver-manager \
    wordcloud \
    yellowbrick \
    zstandard

RUN pip install afinn bertopic tf-keras pytensor

USER $NB_USER
