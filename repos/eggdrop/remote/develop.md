## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:d5473ea1da857c05560cc59e614272882a26e19d981c1ab1d3a69a7dd76d5d3e
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13388694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aee9675a73e9ee4107e121e19f77c5ce04c2b81494832f881351f22ff3bf400`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:10:07 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 27 Jun 2017 21:10:09 GMT
RUN adduser -S eggdrop
# Tue, 27 Jun 2017 21:10:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 21 Aug 2017 16:34:29 GMT
ENV EGGDROP_SHA256=528faa09f8bb10d358b7a0c0d953846cbadd10c73fd8dc75475d1dc3679d7674
# Mon, 21 Aug 2017 16:34:29 GMT
ENV EGGDROP_COMMIT=0d6d8d5c792ebc1f2700ee7ee1209feb7741973b
# Mon, 21 Aug 2017 16:35:17 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 21 Aug 2017 16:35:17 GMT
ENV NICK=
# Mon, 21 Aug 2017 16:35:17 GMT
ENV SERVER=
# Mon, 21 Aug 2017 16:35:18 GMT
ENV LISTEN=3333
# Mon, 21 Aug 2017 16:35:18 GMT
ENV OWNER=
# Mon, 21 Aug 2017 16:35:18 GMT
ENV USERFILE=eggdrop.user
# Mon, 21 Aug 2017 16:35:19 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 21 Aug 2017 16:35:19 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 21 Aug 2017 16:35:19 GMT
EXPOSE 3333/tcp
# Mon, 21 Aug 2017 16:35:20 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Mon, 21 Aug 2017 16:35:20 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 21 Aug 2017 16:35:20 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 21 Aug 2017 16:35:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32e4a65f3ffa8b2f64ffdb82491dd10a9acd7aac1960956a74bad2483953a6c`  
		Last Modified: Thu, 29 Jun 2017 20:38:15 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93eac8f9ae6f107f767faac9ed278a248b45d29dcd82c4960fd6e3a1b64adf19`  
		Last Modified: Thu, 29 Jun 2017 20:38:16 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745a80102ae53b7fed8f62737ce06e28a1aaab45d04149ca3d3e78f10a5efb74`  
		Last Modified: Mon, 21 Aug 2017 16:35:30 GMT  
		Size: 11.4 MB (11406836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e386b363f9adf7bfcd1245134d0da293b34f951a65207466407664868f4e5de4`  
		Last Modified: Mon, 21 Aug 2017 16:35:28 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148ed6915db3bafce974e5a0755a7b92834c939459578cf61f117c31bcb9d3c9`  
		Last Modified: Mon, 21 Aug 2017 16:35:28 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
