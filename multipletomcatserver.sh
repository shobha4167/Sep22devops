#172.31.87.83,172.31.26.196
#!/bin/bash
myIPs=172.31.87.83,172.31.26.196

IFS="," read -ra myArray <<< "$myIPs"

for ip in "${myArray[@]}"
  do 
    echo "my ip is : $ip"
    ssh -o StrictHostKeyChecking=no -i sep22.pem ec2-user@$ip "hostname -i"
    scp -i sep22.pem tomacat.sh ec2-user@$ip:/tmp/ 
    ssh -i sep22.pem ec2-user@$ip "ls -l /tmp/"
    ssh -i sep22.pem ec2-user@$ip "bash /tmp/tomacat.sh"
done