FROM alpine:3.14
RUN apk add --no-cache git
RUN apk add --no-cache openjdk11
RUN apk add --no-cache maven
RUN adduser -D -h /home/jenkins  jenkins 
RUN echo -n 'jenkins:whattt' | chpasswd
RUN adduser jenkins wheel
RUN apk add doas
RUN apk add sudo
RUN echo permit persist :wheel >> /etc/doas.conf
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel
EXPOSE 22
RUN apk add --no-cache openssh
RUN ssh-keygen -A
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
USER jenkins
RUN cd $HOME
RUN mkdir /home/jenkins/.ssh 
RUN chmod 700  /home/jenkins/.ssh
RUN echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDEEb0zPzebN5+O+h6cF6kMFK2D/QL0Jc1WGFWyEETQAGJ3aUwJST8Jhy2Tf630OCwukQa8ShXLvtXmO6qoVtqD8/RcLUTCsQs2DXVePiQZWxLpK+YamRBIPhpEwdLhrskceyOB6PWTuoIZKnagKDy3ufet1pPu5aJAxWoBv6dz8Q75btJg5MYBEOiMzAMyNQC3nhO313mEzEEbanIwHczfuj/pzDts96wfOwh4tlaptCdxodKmT98UVDmeNdlfhxKByunt/2qOMSsusEaS6UMOYO+T3xrwP6FNAu9H4VUbNyCrB9qOGz3EvRytEcJob3sqCxaLH1goiPKoOq5iTRQsxBQRYP8nckOyppWCFKxC44I0Vm67Pqgde5Rb06MCAaXSdIc0lELmWBkuvR6+LWAC8eaOdOFRSOF2/CJ1naI/7Q5V2yg2fYiH6dohKkKbTAUpU1pr9OdXwvkJ5Drq8U2vsw/rjoNA9ZrQ36oSDSmBBoZgRZcxMEqcVq55JOpdMW8= milind.brahme@MB' >> /home/jenkins/.ssh/authorized_keys
RUN chmod 600 ~/.ssh/authorized_keys
USER root
ENTRYPOINT ["/usr/sbin/sshd", "-D"]