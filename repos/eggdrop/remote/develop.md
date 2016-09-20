## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:271edf43a33eed28f902e1b9747ed8aeab8146ac19cefd1e297215acfa8097de
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7898104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e19ca3395b6bf8a97739b8631d6da21631d459c77970272ea4a0c93961c687`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:55:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Sep 2016 23:55:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Sep 2016 23:55:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Sep 2016 23:55:32 GMT
ENV EGGDROP_SHA256=4e3f1e4b52d2c9ae0df9d7c9cfabf501f8ca39a08c7f8556cc5abe49e280b6e8
# Mon, 19 Sep 2016 23:55:32 GMT
ENV EGGDROP_COMMIT=1a2ac64b9afd3bba52513a41adf8d8ac672177e4
# Mon, 19 Sep 2016 23:56:30 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Mon, 19 Sep 2016 23:56:30 GMT
ENV NICK=
# Mon, 19 Sep 2016 23:56:31 GMT
ENV SERVER=
# Mon, 19 Sep 2016 23:56:31 GMT
ENV LISTEN=3333
# Mon, 19 Sep 2016 23:56:31 GMT
ENV OWNER=
# Mon, 19 Sep 2016 23:56:32 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Sep 2016 23:56:32 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Sep 2016 23:56:32 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Sep 2016 23:56:33 GMT
EXPOSE 3333/tcp
# Mon, 19 Sep 2016 23:56:33 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Sep 2016 23:56:34 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Sep 2016 23:56:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Sep 2016 23:56:34 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a697ce307081b59e47761a359b7a58461b34aab6eef8e4eaa103311f8644862`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59729aa0198b0fa2ef40a4d4076f0983537fe886ba48b541ba9c98a9866092a4`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4653daacb5cf47f52076ef1bba6d4828a98139d181724f1b34376385ad4596`  
		Last Modified: Mon, 19 Sep 2016 23:56:44 GMT  
		Size: 5.6 MB (5575601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c206c7d43814b08186002cf973f92d9f417cc9ddf62ca676d4b7a7931fa30692`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.6 KB (1557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af987e3c8c6b179de2c6f6e921d01461840a537dc588defd93a17a29468e56d7`  
		Last Modified: Mon, 19 Sep 2016 23:56:41 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
