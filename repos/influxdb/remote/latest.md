## `influxdb:latest`

```console
$ docker pull influxdb@sha256:5bd7c3067e41f7fdb8d31436aa395dcee378b9f4a088d389042124ee7ac4b404
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87682476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b31ff9aa2baddd52e55e7495a5bb375725070821030f4ce5f8558f82c64cf8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:58 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 21 Oct 2016 19:56:02 GMT
ENV INFLUXDB_VERSION=1.0.2
# Fri, 21 Oct 2016 19:56:09 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 21 Oct 2016 19:56:09 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Fri, 21 Oct 2016 19:56:09 GMT
EXPOSE 8086/tcp
# Fri, 21 Oct 2016 19:56:10 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Oct 2016 19:56:10 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Fri, 21 Oct 2016 19:56:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 19:56:11 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10198f87fbc28bbf73a456f081f51ecab6d64a371fbc91d492e7703b3d69a00`  
		Last Modified: Fri, 21 Oct 2016 17:01:15 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d6a2b9e11505e9aa737c82d385d2c3efe57b2700f9f8ba2f00423d8c4bdcd9`  
		Last Modified: Fri, 21 Oct 2016 19:56:27 GMT  
		Size: 17.8 MB (17794041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ba629b16e422ac5601fa6d176795074bd275bac1a194625337991addf6d7f4`  
		Last Modified: Fri, 21 Oct 2016 19:56:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cd9abcd9e5354bf5f765710eb9adf3569a0b0e5a2ec952fde3bcbcfaaa2973`  
		Last Modified: Fri, 21 Oct 2016 19:56:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
