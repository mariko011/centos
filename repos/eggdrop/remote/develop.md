## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:3c96eda4e5c208e7e6710953581b965b84dada658f3189b411504fc3dc2a6a57
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11442169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc14b97a2d40b64f5cb88cf5dfda89f62833b69a5f3fa6a1af869c441d2c79c1`
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
# Fri, 20 Jan 2017 18:45:36 GMT
ENV EGGDROP_SHA256=05e3f87b773828b8cfb9f4c37cd80351ea706c2263be079b5f83d908a1f8cc8d
# Fri, 20 Jan 2017 18:45:36 GMT
ENV EGGDROP_COMMIT=6d98a070c31f0f270430eb933f3eae0268e0f86c
# Fri, 20 Jan 2017 18:46:23 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 20 Jan 2017 18:46:24 GMT
ENV NICK=
# Fri, 20 Jan 2017 18:46:24 GMT
ENV SERVER=
# Fri, 20 Jan 2017 18:46:24 GMT
ENV LISTEN=3333
# Fri, 20 Jan 2017 18:46:25 GMT
ENV OWNER=
# Fri, 20 Jan 2017 18:46:25 GMT
ENV USERFILE=eggdrop.user
# Fri, 20 Jan 2017 18:46:25 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 20 Jan 2017 18:46:25 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 20 Jan 2017 18:46:25 GMT
EXPOSE 3333/tcp
# Fri, 20 Jan 2017 18:46:26 GMT
COPY file:2134aab955c0f8203f3f3082ef7fd1b8154e50743de1f79914d312f04d898087 in /home/eggdrop/eggdrop 
# Fri, 20 Jan 2017 18:46:26 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 20 Jan 2017 18:46:26 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 20 Jan 2017 18:46:27 GMT
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
	-	`sha256:a17ff61e4fd7fd3282e3c508f2a9150f5f39205cb4a5ba47a1e07afaf573b8c8`  
		Last Modified: Fri, 20 Jan 2017 18:46:47 GMT  
		Size: 9.1 MB (9117471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0869ebbd26ac20d15cebb968382f6414965459ae86bb6db8c17c8b6231372401`  
		Last Modified: Fri, 20 Jan 2017 18:46:44 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6a7cde0d23988b2f40a8420c16bea7dbb4b2c6077edcae99de53d3c0ec22fd`  
		Last Modified: Fri, 20 Jan 2017 18:46:44 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
