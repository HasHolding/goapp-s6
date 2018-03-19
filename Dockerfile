FROM hasholding/alpine-base
LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"

VOLUME /shared
COPY shared /shared
# ADD goapp.tar.bz2 /bin
EXPOSE 80

ENTRYPOINT ["/bin/s6-svscan", "-t0"]
CMD ["/shared"]