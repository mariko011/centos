## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:70b24b4005331e8d2432af8e5e1b6510b9ff647084d72e61794ed64c3d3c0aa3
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11427240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe50073ab8d42174c92c3c495dc549a0b50141c8a5cf233cb838aec96f76b9fe`
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
# Tue, 27 Dec 2016 18:56:13 GMT
ENV EGGDROP_SHA256=ed262fc2b3c4f7bd4449ebfe4014f2b499c51ffa3613ea123b59b8db0e830aee
# Tue, 27 Dec 2016 18:56:14 GMT
ENV EGGDROP_COMMIT=a5c1e9ba1eaf4c509dd601a1b1f97637c9f1ba4d
# Tue, 27 Dec 2016 18:57:01 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 27 Dec 2016 18:57:06 GMT
ENV NICK=
# Tue, 27 Dec 2016 18:57:07 GMT
ENV SERVER=
# Tue, 27 Dec 2016 18:57:07 GMT
ENV LISTEN=3333
# Tue, 27 Dec 2016 18:57:07 GMT
ENV OWNER=
# Tue, 27 Dec 2016 18:57:08 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Dec 2016 18:57:19 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Dec 2016 18:57:19 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Dec 2016 18:57:20 GMT
EXPOSE 3333/tcp
# Tue, 27 Dec 2016 18:57:20 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 27 Dec 2016 18:57:32 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Dec 2016 18:57:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Dec 2016 18:57:33 GMT
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
	-	`sha256:fcdcc761e10fbec9cd12a38a72ee34a47a103257f0732f9b1fc339225d3a5e7e`  
		Last Modified: Tue, 27 Dec 2016 18:59:54 GMT  
		Size: 9.1 MB (9102701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8c3dca4a775850d60a5c1ba452dc6322aa76a8140866e2962bf99121785f7f`  
		Last Modified: Tue, 27 Dec 2016 18:59:51 GMT  
		Size: 1.6 KB (1557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e245de3492a943afcd3fad8aedb15674084b845041df45f61db37ba688a1682`  
		Last Modified: Tue, 27 Dec 2016 18:59:50 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
