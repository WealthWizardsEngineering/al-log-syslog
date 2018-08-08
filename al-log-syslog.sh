#!/bin/bash -e

/etc/init.d/al-log-syslog provision --key $REGISTRATION_KEY
/var/alertlogic/lib/remote/bin/al-remote


