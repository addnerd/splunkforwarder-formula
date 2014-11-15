#!/bin/sh
#
# /etc/init.d/splunkforwarder
# init script for Splunk Forwarder.
# generated by 'splunk enable boot-start'.
#

### BEGIN INIT INFO
# Provides:             splunkforwarder
# Required-Start:       $all
# Required-Stop:        $all
# Default-Start:        2 3 4 5
# Default-Stop:         0 1 6
# Short-Description:    Splunk Forwarder
# Description:          Splunk Forwarder
### END INIT INFO

RETVAL=0

splunk_start() {
  echo Starting Splunk...
  /bin/su splunk -c "/opt/splunkforwarder/bin/splunk start --accept-license --no-prompt --answer-yes"
  RETVAL=$?
}
splunk_stop() {
  echo Stopping Splunk...
  /bin/su splunk -c "/opt/splunkforwarder/bin/splunk stop "
  RETVAL=$?
}
splunk_restart() {
  echo Restarting Splunk...
  /bin/su splunk -c "/opt/splunkforwarder/bin/splunk restart "
  RETVAL=$?
}
splunk_status() {
  echo Splunk status:
  /bin/su splunk -c "/opt/splunkforwarder/bin/splunk status --accept-license --no-prompt --answer-yes"
  RETVAL=$?
}
case "$1" in
  start)
    splunk_start
    ;;
  stop)
    splunk_stop
    ;;
  restart)
    splunk_restart
    ;;
  status)
    splunk_status
    ;;
  *)
    echo "Usage: $0 {start|stop|restart|status}"
    exit 1
    ;;
esac

exit $RETVAL