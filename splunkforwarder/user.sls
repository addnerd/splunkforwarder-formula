splunk_group:
  group.present:
    - name: splunk

splunk_user:
  user.present:
    - name: splunk
    - home: /opt/splunkforwarder
    - groups:
      - splunk
      - adm
    - require:
      - group: splunk_group
