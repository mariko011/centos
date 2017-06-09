## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:bff01c10bbc041d4386d5d654d4e3d30fe60cef114d3eaed1aae78661d38587a
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13437130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a0e584f3d313c7fd3388726f0955e18f0e816b7c155ac207d309bbe6cc583a5`
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
# Fri, 09 Jun 2017 22:33:48 GMT
ENV EGGDROP_SHA256=fa120ed6739b9e63290e3f95392210f8bcfd0f7e514b07a05b559063a3e8f89f
# Fri, 09 Jun 2017 22:33:49 GMT
ENV EGGDROP_COMMIT=ec5aca979d6b7f3d4582640aa5fc175b2f7869bb
# Fri, 09 Jun 2017 22:34:38 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 09 Jun 2017 22:34:39 GMT
ENV NICK=
# Fri, 09 Jun 2017 22:34:40 GMT
ENV SERVER=
# Fri, 09 Jun 2017 22:34:41 GMT
ENV LISTEN=3333
# Fri, 09 Jun 2017 22:34:42 GMT
ENV OWNER=
# Fri, 09 Jun 2017 22:34:42 GMT
ENV USERFILE=eggdrop.user
# Fri, 09 Jun 2017 22:34:43 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 09 Jun 2017 22:34:44 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 09 Jun 2017 22:34:45 GMT
EXPOSE 3333/tcp
# Fri, 09 Jun 2017 22:34:47 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 09 Jun 2017 22:34:48 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 09 Jun 2017 22:34:49 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 09 Jun 2017 22:34:50 GMT
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
	-	`sha256:c78bef5c99ec32ac0830ba0ab5a3acfac92a49d593d6fb433fd9b287f6e9bfff`  
		Last Modified: Fri, 09 Jun 2017 22:35:21 GMT  
		Size: 11.5 MB (11457744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e16c833af2f73112e72c947a053a830f026177c559f9fdbe9d461734122069`  
		Last Modified: Fri, 09 Jun 2017 22:35:18 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c04ef777e337ece436cd9b65e838e2bdcf16e626d4e1b6c6a647b8b50e688f`  
		Last Modified: Fri, 09 Jun 2017 22:35:18 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
