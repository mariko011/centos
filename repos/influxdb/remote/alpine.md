## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:84b05867157000fb58baaf0c360ea599e50abcba1976f7e776524d2edc4c216f
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16368729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59099a92d5003b228f6b8c4e1b9beea6848d5aa25fe24382689ffd215afae727`
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
# Thu, 10 Aug 2017 19:22:28 GMT
ENV INFLUXDB_VERSION=1.3.3
# Thu, 10 Aug 2017 19:22:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Aug 2017 19:22:36 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 10 Aug 2017 19:22:37 GMT
EXPOSE 8086/tcp
# Thu, 10 Aug 2017 19:22:37 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Aug 2017 19:22:41 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Thu, 10 Aug 2017 19:22:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Aug 2017 19:22:41 GMT
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
	-	`sha256:c96b10977e35172bf03e51c766b0346a976db07b26b10fc597e5e6de98158008`  
		Last Modified: Thu, 10 Aug 2017 19:23:51 GMT  
		Size: 14.0 MB (14001623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24fead271933cde237f244c07ab792aa6942c8679bce487dcfdfe396997ace86`  
		Last Modified: Thu, 10 Aug 2017 19:23:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd8592da1e03e1a80547030a3216217af061925ed2d49eb398dcb408dca4c83`  
		Last Modified: Thu, 10 Aug 2017 19:23:46 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
