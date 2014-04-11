#! /bin/bash
hostnames=(ec2-54-84-248-26.compute-1.amazonaws.com
    ec2-54-186-185-27.us-west-2.compute.amazonaws.com
    ec2-54-215-216-108.us-west-1.compute.amazonaws.com
    ec2-54-72-143-213.eu-west-1.compute.amazonaws.com
    ec2-54-255-143-38.ap-southeast-1.compute.amazonaws.com
    ec2-54-199-204-174.ap-northeast-1.compute.amazonaws.com
    ec2-54-206-102-208.ap-southeast-2.compute.amazonaws.com
    ec2-54-207-73-134.sa-east-1.compute.amazonaws.com)

for host in "${hostnames[@]}"
do
    echo $host
    # Run server in the background on target machine
    # Refer to: http://goo.gl/Tp23ww
    ssh -n -f huangyam@$host "sh -c 'cd ~/scripts/; nohup ./run.sh > /dev/null 2>&1 &'"
done
