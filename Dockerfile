# Tiny little proselint image that will proselint provided files
#
# Alice Kaerast

FROM python:2.7-alpine3.7

RUN apk add -U --no-cache shadow su-exec 
RUN pip install --no-cache-dir proselint
RUN useradd -ms /bin/sh user

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT [ "/bin/entrypoint.sh" ]
