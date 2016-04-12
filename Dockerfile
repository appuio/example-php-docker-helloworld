FROM openshift/php:5.6

ADD app /opt/app-root/src

CMD $STI_SCRIPTS_PATH/run
