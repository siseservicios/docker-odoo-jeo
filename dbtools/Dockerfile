FROM alpine:3.15
LABEL Jorge Obiols <jorge.obiols@gmail.com>

RUN apk --update add postgresql-client zip
ADD backup.sh /usr/bin/backup.sh
ADD restore.sh /usr/bin/restore.sh
ADD entrypoint.sh /usr/bin/entrypoint.sh
ADD deactivate.sql /

CMD "/usr/bin/entrypoint.sh"
