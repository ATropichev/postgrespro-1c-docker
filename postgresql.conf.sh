#!/bin/bash

cat << EOF > $PGDATA/postgresql.conf
#------------------------------------------------------------------------------
# CONNECTIONS AND AUTHENTICATION
#------------------------------------------------------------------------------
listen_addresses = '*'
password_encryption = md5
#------------------------------------------------------------------------------
# ERROR REPORTING AND LOGGING
#------------------------------------------------------------------------------
logging_collector = on
log_line_prefix = '%m '
EOF
