FROM base/arch:latest
MAINTAINER Pasi Lammi <pasi.lammi@iki.fi>

RUN /usr/sbin/pacman-key --populate archlinux
RUN /usr/sbin/pacman-key --refresh-keys
RUN pacman -Syu --noconfirm
RUN pacman-db-upgrade
