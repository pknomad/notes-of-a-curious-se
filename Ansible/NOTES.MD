#install
curl https://raw.githubusercontent.com/rundeck/packaging/main/scripts/rpm-setup.sh 2> /dev/null | bash -s rundeck
yum install java-1.8.0 rundeck
service rundeckd start

#upgrade
yum upgrade rundeck rundeck-config

localhost:4440

append localhost:4440/menu/home/ to get around the login bug
