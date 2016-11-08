## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:6cc9479d00775e60afada31c8daa73575edd8c72589e20f9e6489a9c76bb283e
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9521080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65991fa46aa352b78a78fc2f88c0845e2689429e73d572715c5ecc014a9cec3a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 08 Nov 2016 22:41:42 GMT
ENV TELEGRAF_VERSION=1.1.0
# Tue, 08 Nov 2016 22:41:44 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 08 Nov 2016 22:41:50 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 08 Nov 2016 22:42:02 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 08 Nov 2016 22:42:10 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 08 Nov 2016 22:42:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 22:42:25 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1ba585d08a709d5a66ae43c1e203b1b97728297c6bf3f128c17821b2acadb7`  
		Last Modified: Tue, 08 Nov 2016 22:44:53 GMT  
		Size: 344.0 KB (343995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73be09d81358817fe83b3d3771e0bb89244f04cf55957edf94577b34fff73bc2`  
		Last Modified: Tue, 08 Nov 2016 22:44:56 GMT  
		Size: 6.9 MB (6863945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf7285c197ed58c60a7c902f25dd6f351f985fb9e3c6b3d0171ab58c8fc343a`  
		Last Modified: Tue, 08 Nov 2016 22:44:54 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
