<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.0`](#eggdrop180)
-	[`eggdrop:stable`](#eggdropstable)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:abf2037f42373d2dda7846ce1caef01503a6e70086f880c503419ae6730cf3de
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13513987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eed5ec70296fb4cc008e5eca492f04aae0bf08b1dbbab887f0aeb8342f8f987`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 17 Feb 2017 18:44:14 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 17 Feb 2017 18:44:15 GMT
RUN adduser -S eggdrop
# Fri, 17 Feb 2017 18:44:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 17 Feb 2017 18:44:17 GMT
ENV EGGDROP_SHA256=28e2b7032769f293d1ca3373a9c6db819d5fdbf9695cc1cc1a174943209ab798
# Fri, 17 Feb 2017 18:44:17 GMT
ENV EGGDROP_COMMIT=b8c1e42d7875ef6ae9d88e95e3a678ea76461ce4
# Fri, 17 Feb 2017 18:45:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 17 Feb 2017 18:45:05 GMT
ENV NICK=
# Fri, 17 Feb 2017 18:45:05 GMT
ENV SERVER=
# Fri, 17 Feb 2017 18:45:05 GMT
ENV LISTEN=3333
# Fri, 17 Feb 2017 18:45:05 GMT
ENV OWNER=
# Fri, 17 Feb 2017 18:45:06 GMT
ENV USERFILE=eggdrop.user
# Fri, 17 Feb 2017 18:45:06 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 17 Feb 2017 18:45:06 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 17 Feb 2017 18:45:07 GMT
EXPOSE 3333/tcp
# Fri, 17 Feb 2017 18:45:07 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 17 Feb 2017 18:45:08 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 17 Feb 2017 18:45:08 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Feb 2017 18:45:08 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cc22de7b9b59b539d23b574e258ba51cfa52789443fbd32901ed1bb7da2204`  
		Last Modified: Fri, 17 Feb 2017 18:45:29 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9538c405b79ec4656fd06a9bd5d538e01336e112f0b2d6ea67a93e57299306`  
		Last Modified: Fri, 17 Feb 2017 18:45:28 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135527d9c4c15d3ffa4325bfcbb15f24369d27a668c1b2455807a9d7ea57fc48`  
		Last Modified: Fri, 17 Feb 2017 18:45:32 GMT  
		Size: 11.6 MB (11600561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa825d480d3dfd3f90f72bcc7aaf63c3fb8ed2685945f65d83a8bc7ab3112e9`  
		Last Modified: Fri, 17 Feb 2017 18:45:28 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e18b77c10ddd86a9446de7cae89911408c261a6ba8a3ae30bc42d042375cbd`  
		Last Modified: Fri, 17 Feb 2017 18:45:28 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:20e20080cd8f117a0575cc9d44903d40cf4276f5b82f44e129df06b615c79430
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e45205a6bb6273ae3caf256a205398a40e78d5fb36da6b7be66d365eb3e5165`
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
# Fri, 17 Feb 2017 18:45:09 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 17 Feb 2017 18:45:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 17 Feb 2017 18:45:10 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Feb 2017 18:45:10 GMT
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
	-	`sha256:bd2c87e2d7e2215327542bf49b404c49b2ada40ee8fe2b45f33ef8eedc33019a`  
		Last Modified: Fri, 17 Feb 2017 18:45:53 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc69233c55a32adf89989b36d1133418b66f21b7bea906e6e088167d74361dc`  
		Last Modified: Fri, 17 Feb 2017 18:45:53 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.0`

```console
$ docker pull eggdrop@sha256:20e20080cd8f117a0575cc9d44903d40cf4276f5b82f44e129df06b615c79430
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e45205a6bb6273ae3caf256a205398a40e78d5fb36da6b7be66d365eb3e5165`
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
# Fri, 17 Feb 2017 18:45:09 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 17 Feb 2017 18:45:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 17 Feb 2017 18:45:10 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Feb 2017 18:45:10 GMT
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
	-	`sha256:bd2c87e2d7e2215327542bf49b404c49b2ada40ee8fe2b45f33ef8eedc33019a`  
		Last Modified: Fri, 17 Feb 2017 18:45:53 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc69233c55a32adf89989b36d1133418b66f21b7bea906e6e088167d74361dc`  
		Last Modified: Fri, 17 Feb 2017 18:45:53 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:20e20080cd8f117a0575cc9d44903d40cf4276f5b82f44e129df06b615c79430
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e45205a6bb6273ae3caf256a205398a40e78d5fb36da6b7be66d365eb3e5165`
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
# Fri, 17 Feb 2017 18:45:09 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 17 Feb 2017 18:45:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 17 Feb 2017 18:45:10 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Feb 2017 18:45:10 GMT
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
	-	`sha256:bd2c87e2d7e2215327542bf49b404c49b2ada40ee8fe2b45f33ef8eedc33019a`  
		Last Modified: Fri, 17 Feb 2017 18:45:53 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc69233c55a32adf89989b36d1133418b66f21b7bea906e6e088167d74361dc`  
		Last Modified: Fri, 17 Feb 2017 18:45:53 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:20e20080cd8f117a0575cc9d44903d40cf4276f5b82f44e129df06b615c79430
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e45205a6bb6273ae3caf256a205398a40e78d5fb36da6b7be66d365eb3e5165`
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
# Fri, 17 Feb 2017 18:45:09 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 17 Feb 2017 18:45:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 17 Feb 2017 18:45:10 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Feb 2017 18:45:10 GMT
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
	-	`sha256:bd2c87e2d7e2215327542bf49b404c49b2ada40ee8fe2b45f33ef8eedc33019a`  
		Last Modified: Fri, 17 Feb 2017 18:45:53 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc69233c55a32adf89989b36d1133418b66f21b7bea906e6e088167d74361dc`  
		Last Modified: Fri, 17 Feb 2017 18:45:53 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:8ac0aded17fcfdd7e273d23a1d18992cd88edaf05bd38f9ca5eef73e0c812046
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5909587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c971ce327c7e606b01e4682dd4b2ad2ae7636a45aa1ad31e7019b42a33103ada`
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
# Tue, 27 Dec 2016 18:54:18 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 27 Dec 2016 18:54:22 GMT
ENV NICK=
# Tue, 27 Dec 2016 18:54:22 GMT
ENV SERVER=
# Tue, 27 Dec 2016 18:54:23 GMT
ENV LISTEN=3333
# Tue, 27 Dec 2016 18:54:23 GMT
ENV OWNER=
# Tue, 27 Dec 2016 18:54:24 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Dec 2016 18:54:24 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Dec 2016 18:54:35 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Dec 2016 18:54:36 GMT
EXPOSE 3333/tcp
# Tue, 27 Dec 2016 18:54:36 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 27 Dec 2016 18:54:37 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Dec 2016 18:54:48 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Dec 2016 18:54:49 GMT
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
	-	`sha256:ae7930f19cd03f0a82170be0263c4b7af68020555d08d358be73ec211d283944`  
		Last Modified: Tue, 27 Dec 2016 18:57:50 GMT  
		Size: 3.6 MB (3585050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78817767011c338ac261eb3c0654e564aa743586be91fee9ec5f7aff8fc44834`  
		Last Modified: Tue, 27 Dec 2016 18:57:47 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ab8f02612105a94e6dbbd59b5e5e201f07e9ffaa06bc895ad8df57d8770bc2`  
		Last Modified: Tue, 27 Dec 2016 18:57:47 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:8ac0aded17fcfdd7e273d23a1d18992cd88edaf05bd38f9ca5eef73e0c812046
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5909587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c971ce327c7e606b01e4682dd4b2ad2ae7636a45aa1ad31e7019b42a33103ada`
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
# Tue, 27 Dec 2016 18:54:18 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 27 Dec 2016 18:54:22 GMT
ENV NICK=
# Tue, 27 Dec 2016 18:54:22 GMT
ENV SERVER=
# Tue, 27 Dec 2016 18:54:23 GMT
ENV LISTEN=3333
# Tue, 27 Dec 2016 18:54:23 GMT
ENV OWNER=
# Tue, 27 Dec 2016 18:54:24 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Dec 2016 18:54:24 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Dec 2016 18:54:35 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Dec 2016 18:54:36 GMT
EXPOSE 3333/tcp
# Tue, 27 Dec 2016 18:54:36 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 27 Dec 2016 18:54:37 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Dec 2016 18:54:48 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Dec 2016 18:54:49 GMT
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
	-	`sha256:ae7930f19cd03f0a82170be0263c4b7af68020555d08d358be73ec211d283944`  
		Last Modified: Tue, 27 Dec 2016 18:57:50 GMT  
		Size: 3.6 MB (3585050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78817767011c338ac261eb3c0654e564aa743586be91fee9ec5f7aff8fc44834`  
		Last Modified: Tue, 27 Dec 2016 18:57:47 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ab8f02612105a94e6dbbd59b5e5e201f07e9ffaa06bc895ad8df57d8770bc2`  
		Last Modified: Tue, 27 Dec 2016 18:57:47 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
