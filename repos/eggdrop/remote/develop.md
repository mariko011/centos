## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:3f7bd4dab2c3dde9d95834e5c09223eee1b09e61f379dda5b3385dfffe5094f4
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11441637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0ddceab0462d60ffbcefc123f1c0f5e42bd6b18326949af93aa33877b1f4e7`
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
# Wed, 04 Jan 2017 00:52:46 GMT
ENV EGGDROP_SHA256=0b6b131e215671e92c61fc96bf23f180afeeaf32a1dc6beca1ac35517c675245
# Wed, 04 Jan 2017 00:52:46 GMT
ENV EGGDROP_COMMIT=1ff945133d4e67e53fb12c32133dfbee4bfedb84
# Wed, 04 Jan 2017 00:53:29 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Wed, 04 Jan 2017 00:53:30 GMT
ENV NICK=
# Wed, 04 Jan 2017 00:53:30 GMT
ENV SERVER=
# Wed, 04 Jan 2017 00:53:30 GMT
ENV LISTEN=3333
# Wed, 04 Jan 2017 00:53:31 GMT
ENV OWNER=
# Wed, 04 Jan 2017 00:53:31 GMT
ENV USERFILE=eggdrop.user
# Wed, 04 Jan 2017 00:53:31 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 04 Jan 2017 00:53:31 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 04 Jan 2017 00:53:32 GMT
EXPOSE 3333/tcp
# Wed, 04 Jan 2017 00:53:32 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Wed, 04 Jan 2017 00:53:33 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 04 Jan 2017 00:53:33 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 04 Jan 2017 00:53:33 GMT
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
	-	`sha256:3d086fecd33c038e61b51727759b363d99428bb7554792935c18357d9336beba`  
		Last Modified: Wed, 04 Jan 2017 00:53:52 GMT  
		Size: 9.1 MB (9117099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a618e99cb6858033d62485610655526c7f3567e88c5db54975e53f6779a6741`  
		Last Modified: Wed, 04 Jan 2017 00:53:49 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3e06deece85f11abaa779047e6799f9615c4c933303b8bd6d25fa6b41cc1b6`  
		Last Modified: Wed, 04 Jan 2017 00:53:49 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
