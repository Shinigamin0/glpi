FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

ENV glpi_version=10.0.11
ENV php_version=8.1

ADD *.sh .
RUN chmod +x ./*.sh

RUN ./install_tools.sh
RUN ./install_php.sh
RUN ./install_apache.sh
RUN ./download_glpi.sh
RUN ./install_glpi.sh
RUN ./set_php_conf.sh
RUN ./set_apache_conf.sh

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

