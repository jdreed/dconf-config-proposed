#!/bin/sh

user_db="user"
codename=$(lsb_release -sc 2>/dev/null)
if [ -n "$codename" ]; then
    user_db="user.${codename}"
fi

cat <<EOF
user-db:${user_db}
system-db:athena
EOF
