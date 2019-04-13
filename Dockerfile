FROM ubuntu:latest

ARG tf_dl_url
ARG tg_dl_url

RUN apt-get update 
RUN apt-get install -y \
    curl \
    unzip \
    groff \
    git \
    vim \
    python3 \
    python3-pip

RUN pip3 install \
    boto3 \
    awscli

# terraform
RUN curl ${tf_dl_url} -o tf.tar.gz
RUN unzip tf.tar.gz
RUN chmod u+x terraform && mv terraform /usr/local/bin/
RUN rm -vtf.tar.gz

# terragrunt
RUN curl ${tg_dl_url} -o terragrunt
RUN chmod u+x terragrunt && mv terragrunt /usr/local/bin/

#RUN apt-get clean autoclean
#RUN apt-get autoremove -y
#RUN rm -Rf /var/lib/{apt,dpkg,cache,log}/
