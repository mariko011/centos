## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:e421174fe12b4f12bd36cade2d7319c2a8fb0c93247828db8cb74553f49f3caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:32de75a5064d66d948c44053c7068a686056003db40d18fed7748865d43610f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22471226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2b65b52b139a36d4c4ca25c947870136dbbb3b84a3b3947047c4f093fd43f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:30:46 GMT
RUN apk add --no-cache tzdata bash
# Thu, 26 Oct 2017 03:30:46 GMT
ENV INFLUXDB_VERSION=1.3.6
# Thu, 26 Oct 2017 03:30:58 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     chmod +x /usr/bin/influx_inspect /usr/bin/influx_stress /usr/bin/influxd /usr/bin/influx_tsm /usr/bin/influx &&     rm -rf *.tar.gz* /usr/src /root/.gnupg /etc/influxdb/influxdb.conf &&     apk del .build-deps
# Thu, 26 Oct 2017 03:30:59 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 26 Oct 2017 03:30:59 GMT
EXPOSE 8086/tcp
# Thu, 26 Oct 2017 03:30:59 GMT
VOLUME [/var/lib/influxdb]
# Thu, 26 Oct 2017 03:31:00 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 26 Oct 2017 03:31:00 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 26 Oct 2017 03:31:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:31:00 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e469830edfc59d1d69f99081cb0cc293c83560e39765c671b94d744fe398b1`  
		Last Modified: Wed, 25 Oct 2017 23:47:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdda56977ed32dcf1b6cec82d304ad673e796a34eb1459cecbb6afee882ae50a`  
		Last Modified: Thu, 26 Oct 2017 03:31:40 GMT  
		Size: 1.5 MB (1501417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0677e6902a0317bcb6cc8bd6a089b818ed21a245cff3720a9ecf44d23760cb9`  
		Last Modified: Thu, 26 Oct 2017 03:31:43 GMT  
		Size: 19.0 MB (18997829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9678e35b817ceec83f08d1d57eae9874c0ceb596dc10370577c2fdf831c26f13`  
		Last Modified: Thu, 26 Oct 2017 03:31:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac98f91fe7ff825a1c365e7230fc36ac91d0910c3366d8ac61a8b4a87eb82706`  
		Last Modified: Thu, 26 Oct 2017 03:31:40 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0413bf9eb1469aa74eab70a66903ee123542d869e0599e249e66e6dbfe43c6`  
		Last Modified: Thu, 26 Oct 2017 03:31:40 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
