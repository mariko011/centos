## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:9fcb92124c7d9f8ed5f1e757fbb2e9f6b2c068c12cb3f8dceaca60a26f455873
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13389098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e589248d0f3efa6c400232da53782621e73205a7c147d62d7e397beeebf281e7`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:31:32 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 30 May 2017 17:31:34 GMT
RUN adduser -S eggdrop
# Tue, 30 May 2017 17:31:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:32:19 GMT
ENV EGGDROP_SHA256=5a9d2376812b0197ed5631968ae6dd552c644b0db25e3672bb8fe64a495f3b14
# Tue, 30 May 2017 17:32:20 GMT
ENV EGGDROP_COMMIT=7806f41d67a883497c37033486b18f1cd8418b57
# Tue, 30 May 2017 17:33:16 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 30 May 2017 17:33:36 GMT
ENV NICK=
# Tue, 30 May 2017 17:33:37 GMT
ENV SERVER=
# Tue, 30 May 2017 17:33:59 GMT
ENV LISTEN=3333
# Tue, 30 May 2017 17:34:00 GMT
ENV OWNER=
# Tue, 30 May 2017 17:34:01 GMT
ENV USERFILE=eggdrop.user
# Tue, 30 May 2017 17:34:24 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 30 May 2017 17:34:25 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 30 May 2017 17:34:49 GMT
EXPOSE 3333/tcp
# Tue, 30 May 2017 17:34:51 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 30 May 2017 17:34:53 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 30 May 2017 17:34:55 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 30 May 2017 17:34:57 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d59ced41d0126fcd828277d3d85feb3adcd4d8534555c757ae98fe3acdb00b1`  
		Last Modified: Tue, 30 May 2017 17:41:58 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a28453d103eba364a8dc567e85d9ccc349027c85d48460eb0e4072fd78ed29`  
		Last Modified: Tue, 30 May 2017 17:41:58 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfc0ff60faf05896319d88eca538a6dba483ae6641e2c80bbe586f951a9023f`  
		Last Modified: Tue, 30 May 2017 17:42:00 GMT  
		Size: 11.4 MB (11409712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bd732f5416b448912d2f3629d4468fca18f578964585fa8c56b47e3abe15e2`  
		Last Modified: Tue, 30 May 2017 17:41:58 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529da1aa8c32794e1734026782b73f8d81a39f9bbc1b84e65b2e303025272bb7`  
		Last Modified: Tue, 30 May 2017 17:41:58 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
