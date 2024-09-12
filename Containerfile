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
    tensorflow-cpu \
    tokenizers \
    transformers \
    wordcloud \
    yellowbrick \
    zstandard

RUN pip install bertopic tf-keras pytensor

USER $NB_USER
