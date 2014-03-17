#!/bin/sh

#
# Ubuntu Equip 
# Java 7 64-bit Equip
# Licence: MIT
# source: http://www.christopherbiscardi.com/2014/03/08/getting-started-with-robolectric-headless-android-testing-with-vagrant/

sudo apt-get install openjdk-7-jdk unzip -y
sudo aptitude install postgresql

wget --no-check-certificate https://raw.github.com/fabioelia/Linux-Goodies/master/vagrant/base.sh && bash base.sh

# wget --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.tar.gz -P /opt/ 

tar -xvf /opt/jdk-7u51-linux-x64.tar.gz

sudo mkdir -p /usr/lib/jvm
sudo mv /opt/jdk1.7.* /usr/lib/jvm/jdk1.7.0

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.7.0/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.7.0/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.7.0/bin/javaws" 1

sudo chmod a+x /usr/bin/java 
sudo chmod a+x /usr/bin/javac 
sudo chmod a+x /usr/bin/javaws
sudo chown -R root:root /usr/lib/jvm/jdk1.7.0

java -version
 
# Maven
sudo wget http://archive.apache.org/dist/maven/binaries/apache-maven-2.2.1-bin.tar.gz -P /opt/
sudo tar -xvzf /opt/apache-maven-2.2.1-bin.tar.gz

# Add Maven to PATH
sudo -u vagrant echo export PATH=/opt/apache-maven-2.2.1:\$PATH >> /home/vagrant/bin/.bashrc

# rm jdk-7u51-linux-x64.tar.gz
rm base.sh
rm java_mvn.sh
