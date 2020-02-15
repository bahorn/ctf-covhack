FROM busybox:musl

COPY web /web
COPY root /root/
COPY httpd.conf /etc/httpd.conf

CMD ["/bin/httpd","-h","/web", "-f","-r","default router"]
