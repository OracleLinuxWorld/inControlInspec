#!/bin/sh

# export TIMESTAMP=`date --iso-8601`
export TIMESTAMP=`date '+%Y-%m-%d %H:%M:%S'`

cd controls && ls *.rb | while read line
  do
    inspec exec $line --reporter json| jq '.profiles[] | [{ Controls: .controls[] } | { Timestamp: env.TIMESTAMP, Hostname: env.HOSTNAME, ControlID: .Controls.tags.controlID, Name: .Controls.title, CheckID: .Controls.tags.checkID, Description: .Controls.desc, Results: .Controls.results[].status }] | .[]' | curl -XPOST --url http://10.0.2.13:9200/inspec/_doc --header 'content-type: application/json' -d@-
  done
