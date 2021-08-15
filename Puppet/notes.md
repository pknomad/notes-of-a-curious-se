# Setting up Puppet Lab


## Configure Puppet Master (CentOS 7)

1. Update OS
sudo yum update -y

2. Configure Hostname and Networking (AWS SG opened up port 8140)
sudo hostnamectl set-hostname puppet.silphco.net && bash
echo "18.144.46.207 puppet.silphco.net puppet" >> /etc/hosts

3. Configure NTP
sudo yum install chrony
sudo systemctl start chronyd
sudo systemctl enable chronyd

4. Install Puppet Server
sudo rpm -Uvh https://yum.puppet.com/puppet6-release-el-7.noarch.rpm
sudo yum install puppetserver.noarch -y
sudo systemctl start puppetserver
sudo systemctl enable puppetserver

You can make advanced configuration changes in this directory: /etc/puppetlabs/puppet/puppet.conf
move to root

## Configure Puppet Agent (CentOS 7 + macOS)
1. Update OS
sudo yum update -y

2. Configure Hostname and Networking
sudo hostnamectl set-hostname agent1.silphco.net && bash
echo "18.144.46.207 puppet.silphco.net puppet" >> /etc/hosts

3. Configure NTP
sudo yum install chrony
sudo systemctl start chronyd
sudo systemctl enable chronyd

4. Install Puppet Agent (CentOS 7)
sudo rpm -Uvh https://yum.puppet.co:m/puppet6-release-el-7.noarch.rpm
sudo yum install puppet-agent -y

4. Install Puppet Agent (macOS)
http://downloads.puppet.com/mac/puppet7/11/x86_64/puppet-agent-latest.dmg

5. Configure Puppet Agent (CentOS 7)
sudo vim /etc/puppetlabs/puppet/puppet.conf
[main]
certname = agent1.silphco.net
server = puppet.silphco.net

sudo ln -s /opt/puppetlabs/bin/puppet /usr/bin/puppet

puppet agent -t

6. Accept Puppet Agent Certificate
move to root
puppetserver ca list --all
puppetserver ca sign --all

7. Setup PDK
curl -JLO 'https://pm.puppet.com/cgi-bin/pdk_download.cgi?dist=el&rel=7&arch=x86_64&ver=latest'
sudo rpm -Uvh pdk-2.2.0.0-1.el7.x86_64.rpm
---
sudo rpm -Uvh https://yum.puppet.com/puppet-tools-release-el-7.noarch.rpm
sudo yum install pdk
/opt/puppetlabs/pdk/bin/pdk

7. Create Puppet Modules
working directory: /etc/puppetlabs/code
/etc/puppetlabs/code/environments/production/modules

8. Create new puppet class within the directory of the module
pdk new class install
/etc/puppetlabs/code/environments/production/modules/nginx/

9. For deleting/clearing SSL certs on misconfigured host/client
puppetserver ca clean --certname *
