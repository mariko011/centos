## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:f627ab655c6789b9d26255d7066719cda48be69072ed4b60da3a828a79eea036
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12687953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bf51b2166f2b7612c615fb2678c6afb5ab6672acd097921b0567e446306f982`
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
# Mon, 06 Feb 2017 17:49:09 GMT
ENV EGGDROP_SHA256=83186b0a1333d34fc49bcdc75025d8aa1ddbacccf5d1dfd5711a411aacf8e1e5
# Mon, 06 Feb 2017 17:49:10 GMT
ENV EGGDROP_COMMIT=d6420e95bd4f9fdaab4f3e5252a6545ca85fbebd
# Mon, 06 Feb 2017 17:50:07 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 06 Feb 2017 17:50:38 GMT
ENV NICK=
# Mon, 06 Feb 2017 17:50:39 GMT
ENV SERVER=
# Mon, 06 Feb 2017 17:50:40 GMT
ENV LISTEN=3333
# Mon, 06 Feb 2017 17:50:40 GMT
ENV OWNER=
# Mon, 06 Feb 2017 17:50:41 GMT
ENV USERFILE=eggdrop.user
# Mon, 06 Feb 2017 17:50:54 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 06 Feb 2017 17:50:55 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 06 Feb 2017 17:50:55 GMT
EXPOSE 3333/tcp
# Mon, 06 Feb 2017 17:50:56 GMT
COPY file:2134aab955c0f8203f3f3082ef7fd1b8154e50743de1f79914d312f04d898087 in /home/eggdrop/eggdrop 
# Mon, 06 Feb 2017 17:51:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 06 Feb 2017 17:51:23 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 06 Feb 2017 17:51:36 GMT
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
	-	`sha256:5c07d95a186225e614cc6a9f42d7f0c5f1edd8b2b088b6862de220de844aa72e`  
		Last Modified: Mon, 06 Feb 2017 17:52:24 GMT  
		Size: 10.4 MB (10363262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df398cc9d3f7bd7488f3a301a1e09fa0027293dc5249e40792fb6db2d536854d`  
		Last Modified: Mon, 06 Feb 2017 17:52:20 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3c4c6b9e4b7cd4c6dbd428b412ad520bcbad4dff0bea558160f2b80d07dd90`  
		Last Modified: Mon, 06 Feb 2017 17:52:19 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
