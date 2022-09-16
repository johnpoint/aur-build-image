FROM archlinux

RUN pacman -Syu --noconfirm
RUN pacman -Sy sudo base-devel git wget curl --noconfirm
RUN useradd aurbuilder && mkdir /home/aurbuilder && chown aurbuilder /home/aurbuilder
RUN echo "aurbuilder ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN echo aurbuilder:aurbuilder | chpasswd
USER aurbuilder
