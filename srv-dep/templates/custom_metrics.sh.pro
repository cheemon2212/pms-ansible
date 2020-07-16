#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/jre
export AWS_CLOUDWATCH_HOME=/opt/aws/apitools/mon
export EC2_REGION=ap-northeast-1
instanceid=xxxxxxxxxxxxx # EC-2メニューの「Instances」から該当サーバのInstanceIDを取得して記述

# http status check
status=`/usr/local/cloudwatch/http_status_check.sh http://localhost/` # 監視したいurlを記述
if [ $status -eq 200 ]; then
Fail=0
else
Fail=1
fi

/opt/aws/bin/mon-put-data --I "xxxxxxxxxxxxx" --S "xxxxxxxxxxxxxxxx" --metric-name "Http Status fail" --namespace "Custom Metrix" --dimensions "InstanceId=$instanceid" --value "$Fail" --unit "Count"

# loadaverage check
#loadave1=`uptime | tr -s ' ' | cut -d ' ' -f 11 | cut -d ',' -f 1`
loadave1=`uptime | awk 'BEGIN{FS="load average: "}{print $2}' | awk 'BEGIN{FS=" "}{print $2}'| awk 'BEGIN{FS="."}{print $1}'`
/opt/aws/bin/mon-put-data --I "xxxxxxxxxx" --S "xxxxxxxxxxxxxxx" --metric-name "LoadAverage" --namespace "Custom Metrix" --dimensions "InstanceId=$instanceid" --value "$loadave1" --unit "Count"

