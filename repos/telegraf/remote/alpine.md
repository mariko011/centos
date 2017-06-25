## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:bf3f1d8db6dfe9af95ad9518d24c1ff58274cd810c12aba882f72cfa1dbf6574
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10930641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ddbc50a3df80c57a03641248d1971ac395539dc42341da32adc2adc9b9ccce`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 20 Jun 2017 03:25:46 GMT
RUN apk add --no-cache iputils ca-certificates &&     update-ca-certificates
# Tue, 20 Jun 2017 03:27:50 GMT
ENV TELEGRAF_VERSION=1.3.2
# Tue, 20 Jun 2017 03:28:02 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Jun 2017 03:28:17 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 20 Jun 2017 03:28:18 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 20 Jun 2017 03:28:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 03:28:20 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48d5495eb63df8a373bcb2e1bf1dfa82549689616dd866ff69c9f1119429ac`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3524d860bf5ede91d724968a32273a07f6c6687211a2ba46ca1a78f2c3e92e85`  
		Last Modified: Sun, 25 Jun 2017 02:14:34 GMT  
		Size: 447.4 KB (447411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df71696bccffe7215e47c8133d9a1731dd895a8c0a51395705696a72235824ba`  
		Last Modified: Sun, 25 Jun 2017 02:17:04 GMT  
		Size: 8.5 MB (8512584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d072d1f8f7d41592a861be87410de404044734248413143b5c82f4ae0c2c0e9`  
		Last Modified: Sun, 25 Jun 2017 02:17:02 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
