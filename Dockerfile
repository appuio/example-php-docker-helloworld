FROM openshift/php:5.6

ADD app /opt/app-root

CMD $STI_SCRIPTS_PATH/run
