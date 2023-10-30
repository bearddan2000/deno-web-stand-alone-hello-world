FROM archlinux

WORKDIR /workspace

RUN pacman -Syy

RUN pacman -S --noconfirm deno

COPY bin .

RUN deno compile --allow-write main.ts

CMD "./workspace"