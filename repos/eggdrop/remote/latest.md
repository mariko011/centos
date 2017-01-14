## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:41fc33c006631e462bc52ab4432e4879f76e82df7696b3df2b4c738232d0aea4
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35959790839fdefa6b1dc03b69e8552edc6c7427d41614d010ea28c26a6a5f25`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:53:42 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 27 Dec 2016 18:53:43 GMT
RUN adduser -S eggdrop
# Tue, 27 Dec 2016 18:53:44 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Dec 2016 18:55:35 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.0.tar.gz.asc eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz.asc   && tar -zxvf eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz   && ( cd eggdrop-1.8.0     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.0   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 27 Dec 2016 18:55:35 GMT
ENV NICK=
# Tue, 27 Dec 2016 18:55:36 GMT
ENV SERVER=
# Tue, 27 Dec 2016 18:55:36 GMT
ENV LISTEN=3333
# Tue, 27 Dec 2016 18:55:36 GMT
ENV OWNER=
# Tue, 27 Dec 2016 18:55:48 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Dec 2016 18:55:48 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Dec 2016 18:55:49 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Dec 2016 18:55:49 GMT
EXPOSE 3333/tcp
# Sat, 14 Jan 2017 00:49:38 GMT
COPY file:186ca9f07ef098a22d2f8630c57795c609717eb1ff1a8fa7a3e86685688f4973 in /home/eggdrop/eggdrop 
# Sat, 14 Jan 2017 00:49:39 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Sat, 14 Jan 2017 00:49:39 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Sat, 14 Jan 2017 00:49:39 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adae71a62028767a6de6048b9fb3b0fda70fa0059e9aa22113ae7f68cfbc9e2f`  
		Last Modified: Tue, 27 Dec 2016 18:57:48 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a28180207a9f6cc7d510678c9dc0bcfb8a340845bac80f06e3d3ce42ec53355`  
		Last Modified: Tue, 27 Dec 2016 18:57:48 GMT  
		Size: 7.9 KB (7927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dbc8377f7a9a59ca6c801819fe287ec16ac23d63594f2be48f4c1f8ff22330`  
		Last Modified: Tue, 27 Dec 2016 18:58:33 GMT  
		Size: 5.0 MB (5041330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2291ab8611912d689f10d497bcba4a6fea8e9b2f58f088a18f14d7883cff3d`  
		Last Modified: Sat, 14 Jan 2017 00:50:16 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995e836da9275405c51e28573935255c410d2acd3a5771978da00933e8326af9`  
		Last Modified: Sat, 14 Jan 2017 00:50:15 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
