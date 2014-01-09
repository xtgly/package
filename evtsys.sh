#!/bin/bash
if ( ! cat /etc/rsyslog.conf | grep "58.22.68.99" ); then
    echo "*.* @58.22.68.99" >> /etc/rsyslog.conf
    /etc/init.d/rsyslog restart
fi