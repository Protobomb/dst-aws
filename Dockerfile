FROM dst-base-ubuntu:latest

ARG tf_dl_url
ARG tg_dl_url

RUN sudo pip3 install \
    boto3 \
    awscli

# terraform
RUN sudo curl ${tf_dl_url} -o tf.tar.gz
RUN sudo unzip tf.tar.gz
RUN sudo chmod +x terraform &&  sudo mv -v terraform /usr/local/bin/
RUN sudo rm -v tf.tar.gz

# terragrunt
RUN sudo curl -L ${tg_dl_url} -o terragrunt
RUN sudo chmod +x terragrunt && sudo mv -v terragrunt /usr/local/bin/

