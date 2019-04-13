FROM dst-base-ubuntu:latest

RUN sudo pip3 install \
    boto3 \
    awscli

# terraform
RUN curl ${tf_dl_url} -o tf.tar.gz
RUN unzip tf.tar.gz
RUN chmod +x terraform &&  sudo mv -v terraform /usr/local/bin/
RUN rm -v tf.tar.gz

# terragrunt
RUN curl -L ${tg_dl_url} -o terragrunt
RUN chmod +x terragrunt && sudo mv -v terragrunt /usr/local/bin/

