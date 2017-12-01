## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:38bf3fca6265e9a21ed26807373a66165b6f3130cc8d8664d8be785e201b1b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:b1fb1e514e8f2d6628f30628e2aa1d8f683e9ec53676c1acf1065829b93c706a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14531759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac9fe76cb5abd1be39c01a0dd84c54320a32c96d7e25f56a0183224af70252d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:59:49 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 01 Dec 2017 19:59:50 GMT
RUN adduser -S eggdrop
# Fri, 01 Dec 2017 19:59:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 19:59:53 GMT
ENV EGGDROP_SHA256=880aef0a11442a8f972f7267079abcceff4ce37a0ce3054141359470c0585228
# Fri, 01 Dec 2017 19:59:53 GMT
ENV EGGDROP_COMMIT=5d9da79dd6b8b9a8f392701dbdd343e8dae73644
# Fri, 01 Dec 2017 20:00:05 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 01 Dec 2017 20:01:11 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 01 Dec 2017 20:01:11 GMT
ENV NICK=
# Fri, 01 Dec 2017 20:01:11 GMT
ENV SERVER=
# Fri, 01 Dec 2017 20:01:11 GMT
ENV LISTEN=3333
# Fri, 01 Dec 2017 20:01:12 GMT
ENV OWNER=
# Fri, 01 Dec 2017 20:01:12 GMT
ENV USERFILE=eggdrop.user
# Fri, 01 Dec 2017 20:01:12 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 01 Dec 2017 20:01:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 01 Dec 2017 20:01:13 GMT
EXPOSE 3333/tcp
# Fri, 01 Dec 2017 20:01:14 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 01 Dec 2017 20:01:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 01 Dec 2017 20:01:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 01 Dec 2017 20:01:15 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb826a87abf259eae93ec4b25dc1f8ecdade319714955dcca949dd5f24ca5cc`  
		Last Modified: Fri, 01 Dec 2017 20:04:37 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd5c986b868bca9d853ec7240b6b0aea7a95aeabaf451ed536eac87a796eb16`  
		Last Modified: Fri, 01 Dec 2017 20:04:34 GMT  
		Size: 7.8 KB (7819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0892660d8d15f692af49ddb2061a744d0dcd0d01da52214c861fdd66cbce36a7`  
		Last Modified: Fri, 01 Dec 2017 20:04:39 GMT  
		Size: 5.2 MB (5249588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e39ed5492f865c59e21516d997f6c120e2376910944a35ecd637d997dea7062`  
		Last Modified: Fri, 01 Dec 2017 20:04:36 GMT  
		Size: 7.3 MB (7300415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fc2a383d827f43676bbf63c4af634d431cf5e7ce7baf507620f166ecb3d9e8`  
		Last Modified: Fri, 01 Dec 2017 20:04:34 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f873e51cfc637e6326c0d658d624ccf2e04610662ef6b95cabf427c93268c4`  
		Last Modified: Fri, 01 Dec 2017 20:04:34 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
