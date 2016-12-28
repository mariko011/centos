## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:d083b11aff656a8703fab2bafd166fb317b24417ce4403a32caca1d42abe4fce
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9525074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13acb710f92798f7c9492781a2130a169f62144e779f0ba30b42c5b5c6aab8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:05:01 GMT
ENV TELEGRAF_VERSION=1.1.2
# Tue, 27 Dec 2016 22:05:02 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 27 Dec 2016 22:05:10 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 22:05:11 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 27 Dec 2016 22:05:11 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 27 Dec 2016 22:05:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 22:05:12 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72946e25d278f7067491fe0b18487ee3250b56a8dbb3344b5bee201c3745b4e`  
		Last Modified: Tue, 27 Dec 2016 22:23:45 GMT  
		Size: 344.0 KB (343983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c5da8890252670d87a09114fb3f440d1615b4f9c0a5d7c8aee979b247c8ed4`  
		Last Modified: Tue, 27 Dec 2016 22:23:48 GMT  
		Size: 6.9 MB (6867819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a9921f08d00f68383d66869533dac28236138cafbed6a100e4a58c8bd29b9a`  
		Last Modified: Tue, 27 Dec 2016 22:23:45 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
