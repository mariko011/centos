## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:ecc2ca768ee0d761b63c3931f1cdc39e31244dfbf23c3b300bf9d2596e270efc
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10928259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5a5093beb9c49062367ec1f1a093bb5e784ac4fcff1f68e2ce25b27e2d2a62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:29:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 01 Jun 2017 23:56:17 GMT
RUN apk add --no-cache iputils ca-certificates &&     update-ca-certificates
# Thu, 15 Jun 2017 16:38:34 GMT
ENV TELEGRAF_VERSION=1.3.2
# Thu, 15 Jun 2017 16:38:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 15 Jun 2017 16:38:47 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 15 Jun 2017 16:38:49 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 15 Jun 2017 16:38:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Jun 2017 16:38:51 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb7a10a08f9c25306f2f520f46b33d97a83c5a4138ad35810dad882d0982231`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f61cc0c7d37271f541554621a5e0adf8f74f958cf4a865c0473ed60a6b3138`  
		Last Modified: Fri, 02 Jun 2017 00:00:19 GMT  
		Size: 447.4 KB (447402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8708fd01ee9d2e5f8d39119beb3929954c70f040c507130483709164856fcaa6`  
		Last Modified: Thu, 15 Jun 2017 16:42:27 GMT  
		Size: 8.5 MB (8512595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e9c21b5968e94efc8355a7ac6dbc650ad4a5b1913f29aba694c91ef146c35b`  
		Last Modified: Thu, 15 Jun 2017 16:42:25 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
