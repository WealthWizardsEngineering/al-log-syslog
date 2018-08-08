#!/bin/bash -e

/var/alertlogic/lib/remote/bin/al-remote provision \
    --key $REGISTRATION_KEY \
    --host-type standalone

/var/alertlogic/lib/remote/bin/al-remote --host-type standalone