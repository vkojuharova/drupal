#!/bin/bash -ex

rpm -Uvh http://yum.newrelic.com/pub/newrelic/el5/x86_64/newrelic-repo-5-3.noarch.rpm || true
yum install -y newrelic-php5 || true

export NR_INSTALL_SILENT=true
export NR_INSTALL_KEY=5688e490fe520b8f585ec5160c8c0c8c75e28db0
newrelic-install install
