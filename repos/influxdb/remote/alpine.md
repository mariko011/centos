## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:e0184202151b2abb9ceee79e6523d9492fc3c632324eb6f7bf1a672dd130a3bb
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12895410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7c2ceab7b78eb9f08dc316fc787e4959ec1f89247a05f9cd6b84168a9e41fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:11:01 GMT
ENV INFLUXDB_VERSION=1.1.1
# Fri, 13 Jan 2017 20:11:21 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:11:21 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 13 Jan 2017 20:11:22 GMT
EXPOSE 8086/tcp
# Fri, 13 Jan 2017 20:11:22 GMT
VOLUME [/var/lib/influxdb]
# Fri, 13 Jan 2017 20:11:22 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 13 Jan 2017 20:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:11:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0fd352f87d2f4fa99f6fc5a4d38959ad568d68571ee7d76f60ffa952df5837`  
		Last Modified: Fri, 13 Jan 2017 20:13:40 GMT  
		Size: 11.0 MB (10992941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873718bcf8aa839d3e7286c1a110ca1e6e01fd9f1edec4eb4b18bfcb6a3cd8a2`  
		Last Modified: Fri, 13 Jan 2017 20:13:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fbaf3e4140e3c251f969243194955c77b632602b77534cb9f90d1fdd82bd87f`  
		Last Modified: Fri, 13 Jan 2017 20:13:36 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
