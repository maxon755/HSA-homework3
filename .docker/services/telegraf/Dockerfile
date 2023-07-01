FROM telegraf

ARG USER_UID=33
ARG USER_GID=33

ADD .docker/services/bin /usr/local/bin/

# sync www-data uid/gid with host user
RUN /usr/local/bin/sync-user-id.sh telegraf "$USER_UID" "$USER_GID"
