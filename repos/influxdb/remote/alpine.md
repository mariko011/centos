## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:c43b1cf62e2e482fe3fd223630244ef8e87b65e2fde4d503d05904dde72887a2
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14126888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c420171aec6f856e7c7d137355820b5f8fb2bdaa5681955eaabbc6b2f9150f23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:59:58 GMT
ENV INFLUXDB_VERSION=1.2.0
# Fri, 03 Mar 2017 22:00:07 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Mar 2017 22:00:07 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 03 Mar 2017 22:00:07 GMT
EXPOSE 8086/tcp
# Fri, 03 Mar 2017 22:00:08 GMT
VOLUME [/var/lib/influxdb]
# Fri, 03 Mar 2017 22:00:08 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 03 Mar 2017 22:00:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Mar 2017 22:00:09 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee3f8f36d1ad47486838776fc47caa0c6035c867386f19ac97a5d78c42f41c2`  
		Last Modified: Sat, 04 Mar 2017 05:08:03 GMT  
		Size: 12.2 MB (12221214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8829aa83af83408d581a14eb4bb19e52bfca203a15126f4ee504cc586d72ebd`  
		Last Modified: Sat, 04 Mar 2017 05:07:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f9afa99802bbc018b5d9b06d19aec9379543c22bb2566012f6cc90bf001e8a`  
		Last Modified: Sat, 04 Mar 2017 05:07:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
