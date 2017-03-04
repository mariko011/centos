## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:dbfeeb8b1bf3beaf37742ba1d006574ca19ef34038181d4b5902660a3dce76e6
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9161059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf10d2db5c234cd61b6b42c26f8215650637467ea5762ed78a517a50fe449e6c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:46:10 GMT
ENV TELEGRAF_VERSION=1.2.1
# Fri, 03 Mar 2017 23:46:11 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Mar 2017 23:46:18 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Mar 2017 23:46:19 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 03 Mar 2017 23:46:19 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 03 Mar 2017 23:46:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Mar 2017 23:46:20 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52953d648aa4118096382f931794efa286dcf5cee2f244542d105013677bd9d4`  
		Last Modified: Sat, 04 Mar 2017 06:14:09 GMT  
		Size: 352.8 KB (352768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426897361d9e56b080a4ec1f507a3624ef7ca225805c9f42d275f8de479bfef3`  
		Last Modified: Sat, 04 Mar 2017 06:14:12 GMT  
		Size: 6.9 MB (6902840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6a2ed00439f37e90371d0391bfb912694fd02968fe83b2b215989ee140198f`  
		Last Modified: Sat, 04 Mar 2017 06:14:09 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
