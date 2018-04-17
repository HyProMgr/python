#!/bin/bash
#
#  Check Kibana Sevice status
#
#  Created By McKay
#
#  date:2018-02-09

source /etc/profile

pro=`ps auxf|grep -v grep | grep "node/bin/node"`

echo "$pro" | grep -q "node"
 if [ $? -eq 0 ]
        then 
           echo -e " `date`  \033[0;31;1m Service Kibana Status OK! \033[0m" >> /liso/elk/data/logs/checkkibana.log
        else
           /liso/elk/soft/kibana-5.3.1-linux-x86_64/bin/kibana &
           echo -e " `date`  \033[0;31;1m Service Kibana Restart  OK! \033[0m" >> /liso/elk/data/logs/checkkibana.log
fi
