#!/bin/ash
export SECRET_KEY_BASE="`bundle exec rake secret`"
if [ "${RUN_MODE}" = "APP" ]; then
  rm -f ./tmp/pids/server.pid && bundle exec rake db:create && bundle exec rake db:migrate && bundle exec rake db:seed && foreman start
elif [ "${RUN_MODE}" = "NO" ]; then
  tail -f < /dev/null
else
  echo "invalid 'RUN_MODE':${RUN_MODE}."
  exit 1;
fi
