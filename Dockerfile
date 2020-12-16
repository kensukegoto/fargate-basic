FROM centos

# Enable Extra Packages for Enterprise Linux (EPEL) for CentOS
RUN yum install -y epel-release
# Install Node.js and npm
RUN yum install -y nodejs npm

# Install app dependencies
COPY package.json /src/package.json
RUN cd /src; npm install --production
RUN cd /

# Bundle app source
COPY . /src
COPY run.sh /run.sh

EXPOSE  4567
CMD ["bash", "run.sh"]