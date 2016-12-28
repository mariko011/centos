## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:99f01ea53364b2edc416d2e51ef164598c29aaa09dc2088c9e6eab7ab5c020e7
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13306930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0962d49d0ccf7728bb8c0774a12faa64271782dd8e63195ab138177b1bbb625d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:14:30 GMT
ENV INFLUXDB_VERSION=1.1.1
# Tue, 27 Dec 2016 19:14:39 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:14:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 27 Dec 2016 19:14:43 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 27 Dec 2016 19:14:44 GMT
VOLUME [/var/lib/influxdb]
# Tue, 27 Dec 2016 19:14:44 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:14:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:14:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90637ae427cccac338eb31957b692277644521f11697dfd44d3136b35e7d1240`  
		Last Modified: Tue, 27 Dec 2016 19:17:45 GMT  
		Size: 11.0 MB (10993435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200e29e17335767fb0379d3e7a5e2ecae200972eda689ed9bf8517035309c0a1`  
		Last Modified: Tue, 27 Dec 2016 19:17:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34bc32048143c534a3b45dd4d57d03f8eb82f5e60b469e753b6a7fb7852ec9f`  
		Last Modified: Tue, 27 Dec 2016 19:17:40 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
