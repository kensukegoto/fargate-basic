FROM centos

# Enable Extra Packages for Enterprise Linux (EPEL) for CentOS
RUN yum update -y
RUN yum install -y epel-release
# Install Node.js and npm
RUN yum install -y nodejs npm

# Install app dependencies
COPY package.json /src/package.json
COPY /public /src/public
RUN cd /src; npm install --production
RUN cd /

# Bundle app source
COPY . /src
COPY run.sh /run.sh

RUN yum install -y https://s3.ap-northeast-1.amazonaws.com/amazon-ssm-ap-northeast-1/latest/linux_amd64/amazon-ssm-agent.rpm \
&& cp /etc/amazon/ssm/seelog.xml.template /etc/amazon/ssm/seelog.xml

EXPOSE  80
# CMD ["node", "/src/index.js"]
CMD ["bash", "run.sh"]