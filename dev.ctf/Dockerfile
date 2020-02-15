FROM ubuntu:latest

RUN apt-get update && \
        apt-get upgrade -y && \
        apt-get install -y openssh-server sudo mysql-client && \
        adduser james && \
        echo 'james:ilovejs' | chpasswd && \
        mkdir /var/run/sshd && \
        sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

RUN cd /home/james/ && \
        chown root /home/james/ && \
        chown root .bash_logout .bashrc .profile && \
        chmod 555 .bash_logout .bashrc .profile

COPY ./james /etc/sudoers.d/james
COPY ./root /root/

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
