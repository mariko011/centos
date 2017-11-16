## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:ccbb606b5fb5f70ba8b504326af5e8941ba8b8ff5bcfb75ec9e6105eff49cd5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:a139c65d5b522162f2cec932f6de0be61ae0a74d44c41d16f613141b7b9ecd85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24493045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed10bf7b9a56b5c76179cccefa101f424722786eec14fd38631a9beb19bc4c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Tue, 14 Nov 2017 19:01:53 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 14 Nov 2017 19:29:41 GMT
RUN apk add --no-cache tzdata bash
# Thu, 16 Nov 2017 18:29:42 GMT
ENV INFLUXDB_VERSION=1.4.2
# Thu, 16 Nov 2017 18:29:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 16 Nov 2017 18:29:54 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 16 Nov 2017 18:29:54 GMT
EXPOSE 8086/tcp
# Thu, 16 Nov 2017 18:29:54 GMT
VOLUME [/var/lib/influxdb]
# Thu, 16 Nov 2017 18:29:54 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 16 Nov 2017 18:29:55 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Thu, 16 Nov 2017 18:29:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Nov 2017 18:29:55 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cac9feb97207d563cb8d1bc7b3c916ee79f81618908db9454602925da50b7c`  
		Last Modified: Tue, 14 Nov 2017 19:02:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8110b11a1ead2a533ba3c59a6bcc10c9621f9073e6d879919b24eb52d3437fa7`  
		Last Modified: Tue, 14 Nov 2017 19:31:05 GMT  
		Size: 1.5 MB (1504331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5676ccccec8b034dff5ae89396114d73cc7efdffa0dc99557b24d716e50583e0`  
		Last Modified: Thu, 16 Nov 2017 18:30:38 GMT  
		Size: 21.0 MB (20995524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d899c5405b4e9463d974dc00d7821d2adbd64e62e5aecf7856f3e85b84fd50`  
		Last Modified: Thu, 16 Nov 2017 18:30:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e8d9690125faed1aed8a05cf94b23b990a89829d394c595964acbe3677476`  
		Last Modified: Thu, 16 Nov 2017 18:30:34 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1455ab8f303179ea21a991416f645e39e810d23229531eaa2243d6336835f20c`  
		Last Modified: Thu, 16 Nov 2017 18:30:34 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
