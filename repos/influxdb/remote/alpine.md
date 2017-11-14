## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:138a4f21de30f1d0bb147834dd5c496854d277ae47b466dc009c368e6186a8a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:3786f5c62c7ebb56e7bdc59ecb44d58339d30aac0bdfa933ae3eb21c49afd7a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24493127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47270e63d924566de13fc9abaac94f28df78ad67d62272e2e14993a44b8fc898`
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
# Tue, 14 Nov 2017 21:29:47 GMT
ENV INFLUXDB_VERSION=1.4.1
# Tue, 14 Nov 2017 21:30:00 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 14 Nov 2017 21:30:01 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 14 Nov 2017 21:30:01 GMT
EXPOSE 8086/tcp
# Tue, 14 Nov 2017 21:30:01 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Nov 2017 21:30:01 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 14 Nov 2017 21:30:02 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 14 Nov 2017 21:30:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 21:30:02 GMT
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
	-	`sha256:08453fee46182528a944f603ba59e5d879b395008a6369e84c7ed936af41e59a`  
		Last Modified: Tue, 14 Nov 2017 21:30:46 GMT  
		Size: 21.0 MB (20995606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a810a3e4c0f7fbfe7802d9f05b74be7e3e2e00c75c6db1603b9b445acd8f29`  
		Last Modified: Tue, 14 Nov 2017 21:30:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf171e85ab8cc4c45060e1c7a345f292d22acc14233e869bf7f984c9b85d694`  
		Last Modified: Tue, 14 Nov 2017 21:30:42 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6697e3863c5f189bb2294afec27e0f917f0c2e228b6abc9de93129ad6fca1196`  
		Last Modified: Tue, 14 Nov 2017 21:30:42 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
