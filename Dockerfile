FROM nginx
RUN useradd test && echo "test:test" | chpasswd && usermod -aG sudo test 
RUN apt update && apt-get install ssh && systemctl ssh start && systemctl ssh enable
