<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:1.8.1rc2`](#eggdrop181rc2)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.0`](#eggdrop180)
-	[`eggdrop:stable`](#eggdropstable)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:652665335f341faa1f749350188f57e7498d45a4eaacaa596504a82429975c26
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13513617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e836815305939d65a51e968306e3fdd232ed6d20f0459972bd4f871ce752b7f7`
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
# Fri, 03 Mar 2017 19:49:06 GMT
ENV EGGDROP_SHA256=17ce77233894c8f2bb26a1c9a7b054e86d57475fcfbcd90b0d200d2a52b9c5eb
# Fri, 03 Mar 2017 19:49:06 GMT
ENV EGGDROP_COMMIT=f0863681d5e9cb900d1ee4bb1ea7a6bbb36c3b4c
# Fri, 03 Mar 2017 19:49:53 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 03 Mar 2017 19:49:53 GMT
ENV NICK=
# Fri, 03 Mar 2017 19:49:54 GMT
ENV SERVER=
# Fri, 03 Mar 2017 19:49:54 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 19:49:54 GMT
ENV OWNER=
# Fri, 03 Mar 2017 19:49:55 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 19:49:55 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 19:49:55 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 19:49:56 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 19:49:56 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 19:49:56 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 19:49:57 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 19:49:57 GMT
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
	-	`sha256:d5038d4428abf492ccb26502300362b56991ddc4c67c505b041fd1ab632bb5e7`  
		Last Modified: Fri, 03 Mar 2017 19:51:07 GMT  
		Size: 11.6 MB (11600199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf3b7d30306faf83b2328520e6f16f8aae83bef41503f3962762bc1b58d48f5`  
		Last Modified: Fri, 03 Mar 2017 19:51:03 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fd98f5b0739128b941ee5c066bda201167111d20d738ad5e2860c5165ffa63`  
		Last Modified: Fri, 03 Mar 2017 19:51:03 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.1rc2`

```console
$ docker pull eggdrop@sha256:600ee5fc6b3f6fa09a1852721482f4e54ee999ab35d2f5e77978db8a4875bcdd
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.1rc2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8492529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6248b0d713eff9e7f5172e7ac3af14cc6b01f9cadaabc6725455d1198a29594d`
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
# Fri, 03 Mar 2017 19:50:40 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1rc2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1rc2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1rc2.tar.gz.asc eggdrop-1.8.1rc2.tar.gz   && rm eggdrop-1.8.1rc2.tar.gz.asc   && tar -zxvf eggdrop-1.8.1rc2.tar.gz   && rm eggdrop-1.8.1rc2.tar.gz   && ( cd eggdrop-1.8.1rc2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1rc2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 03 Mar 2017 19:50:40 GMT
ENV NICK=
# Fri, 03 Mar 2017 19:50:41 GMT
ENV SERVER=
# Fri, 03 Mar 2017 19:50:41 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 19:50:41 GMT
ENV OWNER=
# Fri, 03 Mar 2017 19:50:41 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 19:50:42 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 19:50:42 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 19:50:42 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 19:50:43 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 19:50:43 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 19:50:43 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 19:50:44 GMT
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
	-	`sha256:e0be892451878fe3afc6d2ef8e7280919315fb66982dabd71e277ad1da8ce8f2`  
		Last Modified: Fri, 03 Mar 2017 19:51:30 GMT  
		Size: 6.2 MB (6167809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9a7ff1c23567006adeb8947cc0cbb146be67ba0b56cbccbca6055decc03e79`  
		Last Modified: Fri, 03 Mar 2017 19:51:28 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd0744dd61a37de3e76b06e9c5ad1e2d483e0018d6792b5792f84eea612b4e7`  
		Last Modified: Fri, 03 Mar 2017 19:51:29 GMT  
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
