FROM docker.io/centos/php-71-centos7

ADD app /opt/app-root/src

CMD sleep 5; $STI_SCRIPTS_PATH/run
