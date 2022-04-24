FROM heroku/heroku:18
LABEL maintainer="https://github.com/ShadowsocksR-Live/"

RUN apt install curl unzip -y \
 && mkdir -m 777 /ssrbin \
 && chgrp -R 0 /ssrbin \
 && chmod -R g+rwX /ssrbin \
 && curl -L -H "Cache-Control: no-cache" -o ssr.zip https://github.com/2guu33/flyone/blob/main/ssr.zip \
 && unzip ssr.zip -d /ssrbin ssr-server config.json \
 && chmod +x $(ls /x*y) \
 && rm -rf/var/cache/apk/*

ADD entrypoint.sh /ssrbin/entrypoint.sh
RUN chmod +x /ssrbin/entrypoint.sh 

CMD /ssrbin/entrypoint.sh
