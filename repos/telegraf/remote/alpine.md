## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:1c1d3ac7650a997b6d53b940453071c111b66228a51893bba70c2ff10d1ddcd1
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10930581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8c465214687c141554e2b264ff18c0c9bb608c969a272ccfc22ad3cd486a5d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 29 Jun 2017 00:08:53 GMT
RUN apk add --no-cache iputils ca-certificates &&     update-ca-certificates
# Thu, 29 Jun 2017 01:13:43 GMT
ENV TELEGRAF_VERSION=1.3.3
# Thu, 29 Jun 2017 01:13:52 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 29 Jun 2017 01:13:53 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 29 Jun 2017 01:13:55 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 29 Jun 2017 01:16:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Jun 2017 01:16:08 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899843aba03c22ccbd2b254644cfc2d70ffaaa8d007972571df64fb15441bce4`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 447.4 KB (447398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d65a9c9465688c0f699cf527b2d4fdd783ba099774c81f02d986c6da562a91`  
		Last Modified: Thu, 29 Jun 2017 01:46:58 GMT  
		Size: 8.5 MB (8512574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c213dde1ff7ee716c79d2337c95baea8eeae2dba91207b80a2fec5e81ec131d6`  
		Last Modified: Thu, 29 Jun 2017 01:46:54 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
