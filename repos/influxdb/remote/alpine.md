## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:85bc130e9fa597b36641aac73c4dfd2214d724ce5bdc3b86c2df9a6362048a2d
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16383817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c90173200ba9ef5d29f747bde2016dfd94897806d7d765486ffe9c00aea8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 14 Jul 2017 21:22:09 GMT
RUN apk add --no-cache tzdata
# Wed, 30 Aug 2017 19:31:48 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 30 Aug 2017 19:31:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Aug 2017 19:31:54 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 30 Aug 2017 19:31:54 GMT
EXPOSE 8086/tcp
# Wed, 30 Aug 2017 19:31:55 GMT
VOLUME [/var/lib/influxdb]
# Wed, 30 Aug 2017 19:31:55 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 30 Aug 2017 19:31:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Aug 2017 19:31:55 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4da1d243cb68e6d0e7176708d1ecdd210e5baf979a5d24c1fb697bad0ab22f4`  
		Last Modified: Fri, 14 Jul 2017 21:23:57 GMT  
		Size: 396.3 KB (396275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07c590fe168091a294ebbff539b75cfe6f4cfb11b6537400dba433fa31af28d`  
		Last Modified: Wed, 30 Aug 2017 19:32:35 GMT  
		Size: 14.0 MB (14016709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a9d0a2ef010993b20e902b3d451e4e07622e6536d53131642289fe565a9066`  
		Last Modified: Wed, 30 Aug 2017 19:32:32 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a760db0a628dd02907ca482ecfd8b6a3bdfd34197b00523a3d971bae3f681`  
		Last Modified: Wed, 30 Aug 2017 19:32:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
