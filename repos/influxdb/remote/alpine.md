## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:5be1974143a75a2466b04bda1dbee69479e5a076ed74879d69872965f9a5774c
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15582569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb3f0567296f8384b7640c7fa2acdd81153dbe9371cacc7370c2dc8c5673c71`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:59:53 GMT
ENV INFLUXDB_VERSION=1.0.0
# Fri, 23 Sep 2016 17:00:01 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 23 Sep 2016 17:00:02 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Fri, 23 Sep 2016 17:00:02 GMT
EXPOSE 8083/tcp 8086/tcp
# Fri, 23 Sep 2016 17:00:03 GMT
VOLUME [/var/lib/influxdb]
# Fri, 23 Sep 2016 17:00:03 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 23 Sep 2016 17:00:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 17:00:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984499df960e69a233a9f7f1a54040b8739a87d9f37550d120ea2f8323891aa3`  
		Last Modified: Fri, 23 Sep 2016 17:00:27 GMT  
		Size: 13.3 MB (13269216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebd624ec2f81018f9461408d9ada9bff5eb034287ddd6e3fcf9e5d2dc817b41`  
		Last Modified: Fri, 23 Sep 2016 17:00:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ce41182c8c2d90f3e12dacccf3c067c5a22b58922acf34e2120faea91546ff`  
		Last Modified: Fri, 23 Sep 2016 17:00:11 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
