FROM nginx
RUN useradd test && echo "test:test" | chpasswd && usermod -aG sudo test
