## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:92b657e992a0b9fe941e9c299eb7ec829f467a1e9217f86627ddf541b4d23ce0
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15580677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d249fce230d186431f8b0040edb556f085bade82e302e2d27d7d7f548a175c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:16:50 GMT
ENV INFLUXDB_VERSION=1.0.0
# Tue, 20 Sep 2016 00:17:01 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:17:01 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 20 Sep 2016 00:17:02 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 20 Sep 2016 00:17:02 GMT
VOLUME [/var/lib/influxdb]
# Tue, 20 Sep 2016 00:17:02 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:17:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:17:03 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dd8338a1ee2d4a64873d2842b4513e8dfbea4f4425ebe21cfa7f665535fd94`  
		Last Modified: Tue, 20 Sep 2016 00:17:18 GMT  
		Size: 13.3 MB (13269206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d2f8e4c1f087f3d2b4b30f68517a0baaa10d5a59a95272f2a1f43e61300906`  
		Last Modified: Tue, 20 Sep 2016 00:17:12 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144e50789e54f0545cfc22adb18c13af0624ef758be6ca359f9c6cb22e306add`  
		Last Modified: Tue, 20 Sep 2016 00:17:11 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
