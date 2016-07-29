FROM sathlan/docker-f24-systemd
LABEL date="Fri Jul 29 12:10:27 CEST 2016"

MAINTAINER <sofer@sathlan.org>

RUN dnf install -y vagrant vagrant-libvirt git python-pip rubygem-bundler git-review python-cffi python-cryptography tar
RUN pip install zuul
RUN useradd vagrant -u 1001 -g vagrant
USER vagrant
WORKDIR /home/vagrant
COPY config/Vagrantfile.tpl Vagrantfile.tpl
