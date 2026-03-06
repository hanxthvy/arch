FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
    qemu-full \
    novnc \
    websockify \
    reflector \
    wget \
    curl \
    git \
    sudo \
    python \
    openssh

WORKDIR /app

COPY . .

RUN chmod +x start.sh scripts/*.sh services/*.sh

EXPOSE 8006
EXPOSE 3389
EXPOSE 2222

CMD ["./start.sh"]
