FROM registry.access.redhat.com/ubi8/php-74:1-91.1680797931

ADD app /opt/app-root/src

CMD sleep 10; $STI_SCRIPTS_PATH/run
