FROM nginx
RUN useradd test && echo "test:test" | chpasswd && usermod -aG sudo test 
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt update && apt-get install ssh -y && systemctl ssh start && systemctl ssh enable
