FROM debian
# cvs2git
#
# VERSION 0.1

MAINTAINER noc06140728 xxxxxxxxxxxxxx@xxxxx.xxx

RUN apt-get update

RUN apt-get install -y cvs
RUN apt-get install -y subversion
RUN apt-get install -y git
RUN apt-get install -y python

WORKDIR /root

RUN svn co --username=guest --password="" --no-auth-cache http://cvs2svn.tigris.org/svn/cvs2svn/trunk /tmp/cvs2svn-trunk

COPY cvs2git /bin/cvs2git
COPY docker_entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
