<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.2`](#telegraf12)
-	[`telegraf:1.2.1`](#telegraf121)
-	[`telegraf:1.2-alpine`](#telegraf12-alpine)
-	[`telegraf:1.2.1-alpine`](#telegraf121-alpine)
-	[`telegraf:1.3`](#telegraf13)
-	[`telegraf:1.3.0`](#telegraf130)
-	[`telegraf:latest`](#telegraflatest)
-	[`telegraf:1.3-alpine`](#telegraf13-alpine)
-	[`telegraf:1.3.0-alpine`](#telegraf130-alpine)
-	[`telegraf:alpine`](#telegrafalpine)

## `telegraf:1.2`

```console
$ docker pull telegraf@sha256:e12267b7284adac506e1f525abb73217ba8d1e138cf062b4a3db2554a9c1c463
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81833147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98fb493e7a9b50765dea88c92258d8611e48ef1861f68f3e17e3c29457211f41`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 17:05:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:36:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:36:26 GMT
ENV TELEGRAF_VERSION=1.2.1
# Tue, 16 May 2017 20:36:30 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Tue, 16 May 2017 20:36:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 May 2017 20:36:32 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 May 2017 20:36:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:36:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b91e692e7824d309e2aacbfb74b09f492a90064fd976acb7ade04823a585fb`  
		Last Modified: Mon, 15 May 2017 17:51:27 GMT  
		Size: 4.7 MB (4705649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fee5aaad4d5f86c49b58d02c15ac6c944e125779022331c46c2831ba21b6af`  
		Last Modified: Tue, 16 May 2017 20:38:56 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a33ef751199a92fad715109394bd10337cd4df3e83246ac15225742e55ac1c`  
		Last Modified: Tue, 16 May 2017 20:38:58 GMT  
		Size: 9.9 MB (9943131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6aa741c706651a17e088be5197c2f1df91e4ab6bbdc6359be943ba424b64032`  
		Last Modified: Tue, 16 May 2017 20:38:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.2.1`

```console
$ docker pull telegraf@sha256:e12267b7284adac506e1f525abb73217ba8d1e138cf062b4a3db2554a9c1c463
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.2.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81833147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98fb493e7a9b50765dea88c92258d8611e48ef1861f68f3e17e3c29457211f41`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 17:05:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:36:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:36:26 GMT
ENV TELEGRAF_VERSION=1.2.1
# Tue, 16 May 2017 20:36:30 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Tue, 16 May 2017 20:36:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 May 2017 20:36:32 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 May 2017 20:36:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:36:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b91e692e7824d309e2aacbfb74b09f492a90064fd976acb7ade04823a585fb`  
		Last Modified: Mon, 15 May 2017 17:51:27 GMT  
		Size: 4.7 MB (4705649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fee5aaad4d5f86c49b58d02c15ac6c944e125779022331c46c2831ba21b6af`  
		Last Modified: Tue, 16 May 2017 20:38:56 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a33ef751199a92fad715109394bd10337cd4df3e83246ac15225742e55ac1c`  
		Last Modified: Tue, 16 May 2017 20:38:58 GMT  
		Size: 9.9 MB (9943131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6aa741c706651a17e088be5197c2f1df91e4ab6bbdc6359be943ba424b64032`  
		Last Modified: Tue, 16 May 2017 20:38:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.2-alpine`

```console
$ docker pull telegraf@sha256:b05c10b8e9caaf31093dde04b6f9ad38e03721234755f32e5bf0dfdf2c9a5924
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9414843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ae69c8ebe195743f1bda2ad21d9b775e47ad5e0b5c6c722e96fe6a45e5d09b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 23:19:16 GMT
RUN apk add --no-cache iputils ca-certificates &&     update-ca-certificates
# Wed, 10 May 2017 23:19:48 GMT
ENV TELEGRAF_VERSION=1.2.1
# Tue, 16 May 2017 20:37:03 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:37:04 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 May 2017 20:37:05 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 16 May 2017 20:37:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:37:06 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef868d42eb17cec41443f842b81a88c74efe93ec48143dc16cc20cb98716d642`  
		Last Modified: Sat, 13 May 2017 19:05:00 GMT  
		Size: 447.4 KB (447405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a9ca3cc838c298ab9bd867117dd26e1d8b9cf3b894349294d54b8501bf091d`  
		Last Modified: Tue, 16 May 2017 20:39:50 GMT  
		Size: 7.0 MB (6999195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd5b76e57626e8a39667cb84132a241cc1bcf407dbd6613671820336473d2e8`  
		Last Modified: Tue, 16 May 2017 20:39:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.2.1-alpine`

```console
$ docker pull telegraf@sha256:b05c10b8e9caaf31093dde04b6f9ad38e03721234755f32e5bf0dfdf2c9a5924
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.2.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9414843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ae69c8ebe195743f1bda2ad21d9b775e47ad5e0b5c6c722e96fe6a45e5d09b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 23:19:16 GMT
RUN apk add --no-cache iputils ca-certificates &&     update-ca-certificates
# Wed, 10 May 2017 23:19:48 GMT
ENV TELEGRAF_VERSION=1.2.1
# Tue, 16 May 2017 20:37:03 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:37:04 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 May 2017 20:37:05 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 16 May 2017 20:37:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:37:06 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef868d42eb17cec41443f842b81a88c74efe93ec48143dc16cc20cb98716d642`  
		Last Modified: Sat, 13 May 2017 19:05:00 GMT  
		Size: 447.4 KB (447405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a9ca3cc838c298ab9bd867117dd26e1d8b9cf3b894349294d54b8501bf091d`  
		Last Modified: Tue, 16 May 2017 20:39:50 GMT  
		Size: 7.0 MB (6999195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd5b76e57626e8a39667cb84132a241cc1bcf407dbd6613671820336473d2e8`  
		Last Modified: Tue, 16 May 2017 20:39:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.3`

```console
$ docker pull telegraf@sha256:95590752112afea3c70df2dad8d7eafc20c49a7a07a680c2612ec5ebafb939b1
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83437198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa75506663d4918dc04ad8829944c08b9559e4b3f292b4e6f4e45233046b9f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 17:05:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:36:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:37:29 GMT
ENV TELEGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:37:33 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_amd64.deb.asc telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_amd64.deb*
# Tue, 16 May 2017 20:37:53 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 May 2017 20:37:54 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 May 2017 20:37:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:37:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b91e692e7824d309e2aacbfb74b09f492a90064fd976acb7ade04823a585fb`  
		Last Modified: Mon, 15 May 2017 17:51:27 GMT  
		Size: 4.7 MB (4705649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fee5aaad4d5f86c49b58d02c15ac6c944e125779022331c46c2831ba21b6af`  
		Last Modified: Tue, 16 May 2017 20:38:56 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0803fa1bacc219a1f98e351ac89486fb64665ad7a59589e2fdf1b5bba202b9d4`  
		Last Modified: Tue, 16 May 2017 20:41:13 GMT  
		Size: 11.5 MB (11547183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c670644e525459ccaa5ad266423edcb260713d1aba7e5023b5d47eeb9631c6`  
		Last Modified: Tue, 16 May 2017 20:41:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.3.0`

```console
$ docker pull telegraf@sha256:95590752112afea3c70df2dad8d7eafc20c49a7a07a680c2612ec5ebafb939b1
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83437198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa75506663d4918dc04ad8829944c08b9559e4b3f292b4e6f4e45233046b9f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 17:05:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:36:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:37:29 GMT
ENV TELEGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:37:33 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_amd64.deb.asc telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_amd64.deb*
# Tue, 16 May 2017 20:37:53 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 May 2017 20:37:54 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 May 2017 20:37:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:37:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b91e692e7824d309e2aacbfb74b09f492a90064fd976acb7ade04823a585fb`  
		Last Modified: Mon, 15 May 2017 17:51:27 GMT  
		Size: 4.7 MB (4705649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fee5aaad4d5f86c49b58d02c15ac6c944e125779022331c46c2831ba21b6af`  
		Last Modified: Tue, 16 May 2017 20:38:56 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0803fa1bacc219a1f98e351ac89486fb64665ad7a59589e2fdf1b5bba202b9d4`  
		Last Modified: Tue, 16 May 2017 20:41:13 GMT  
		Size: 11.5 MB (11547183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c670644e525459ccaa5ad266423edcb260713d1aba7e5023b5d47eeb9631c6`  
		Last Modified: Tue, 16 May 2017 20:41:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:95590752112afea3c70df2dad8d7eafc20c49a7a07a680c2612ec5ebafb939b1
```

-	Platforms:
	-	linux; amd64

### `telegraf:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83437198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa75506663d4918dc04ad8829944c08b9559e4b3f292b4e6f4e45233046b9f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 17:05:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:36:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:37:29 GMT
ENV TELEGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:37:33 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_amd64.deb.asc telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_amd64.deb*
# Tue, 16 May 2017 20:37:53 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 May 2017 20:37:54 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 May 2017 20:37:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:37:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b91e692e7824d309e2aacbfb74b09f492a90064fd976acb7ade04823a585fb`  
		Last Modified: Mon, 15 May 2017 17:51:27 GMT  
		Size: 4.7 MB (4705649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fee5aaad4d5f86c49b58d02c15ac6c944e125779022331c46c2831ba21b6af`  
		Last Modified: Tue, 16 May 2017 20:38:56 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0803fa1bacc219a1f98e351ac89486fb64665ad7a59589e2fdf1b5bba202b9d4`  
		Last Modified: Tue, 16 May 2017 20:41:13 GMT  
		Size: 11.5 MB (11547183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c670644e525459ccaa5ad266423edcb260713d1aba7e5023b5d47eeb9631c6`  
		Last Modified: Tue, 16 May 2017 20:41:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.3-alpine`

```console
$ docker pull telegraf@sha256:fce62936ee63d90e84e8a5475162f5376bd9cf6b9fddcc98b17d3420500223b5
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10924175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050361fdf31e3d84a754db1ed34148742764b4e4bc96aaca24282c644ffe5be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 23:19:16 GMT
RUN apk add --no-cache iputils ca-certificates &&     update-ca-certificates
# Tue, 16 May 2017 20:38:18 GMT
ENV TELEGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:38:28 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:38:29 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 May 2017 20:38:30 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 16 May 2017 20:38:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:38:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef868d42eb17cec41443f842b81a88c74efe93ec48143dc16cc20cb98716d642`  
		Last Modified: Sat, 13 May 2017 19:05:00 GMT  
		Size: 447.4 KB (447405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d9395bcaeb51748dfe88510e909fbdf4d9c8943a4726263fd86708c99816a5`  
		Last Modified: Tue, 16 May 2017 20:42:50 GMT  
		Size: 8.5 MB (8508527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae67dd7b33d5068567cce951bf1e2af529fb742ee97fa52e3292d122fdb4c7a6`  
		Last Modified: Tue, 16 May 2017 20:42:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.3.0-alpine`

```console
$ docker pull telegraf@sha256:fce62936ee63d90e84e8a5475162f5376bd9cf6b9fddcc98b17d3420500223b5
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.3.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10924175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050361fdf31e3d84a754db1ed34148742764b4e4bc96aaca24282c644ffe5be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 23:19:16 GMT
RUN apk add --no-cache iputils ca-certificates &&     update-ca-certificates
# Tue, 16 May 2017 20:38:18 GMT
ENV TELEGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:38:28 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:38:29 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 May 2017 20:38:30 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 16 May 2017 20:38:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:38:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef868d42eb17cec41443f842b81a88c74efe93ec48143dc16cc20cb98716d642`  
		Last Modified: Sat, 13 May 2017 19:05:00 GMT  
		Size: 447.4 KB (447405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d9395bcaeb51748dfe88510e909fbdf4d9c8943a4726263fd86708c99816a5`  
		Last Modified: Tue, 16 May 2017 20:42:50 GMT  
		Size: 8.5 MB (8508527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae67dd7b33d5068567cce951bf1e2af529fb742ee97fa52e3292d122fdb4c7a6`  
		Last Modified: Tue, 16 May 2017 20:42:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:fce62936ee63d90e84e8a5475162f5376bd9cf6b9fddcc98b17d3420500223b5
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10924175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050361fdf31e3d84a754db1ed34148742764b4e4bc96aaca24282c644ffe5be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 23:19:16 GMT
RUN apk add --no-cache iputils ca-certificates &&     update-ca-certificates
# Tue, 16 May 2017 20:38:18 GMT
ENV TELEGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:38:28 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:38:29 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 May 2017 20:38:30 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 16 May 2017 20:38:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:38:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef868d42eb17cec41443f842b81a88c74efe93ec48143dc16cc20cb98716d642`  
		Last Modified: Sat, 13 May 2017 19:05:00 GMT  
		Size: 447.4 KB (447405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d9395bcaeb51748dfe88510e909fbdf4d9c8943a4726263fd86708c99816a5`  
		Last Modified: Tue, 16 May 2017 20:42:50 GMT  
		Size: 8.5 MB (8508527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae67dd7b33d5068567cce951bf1e2af529fb742ee97fa52e3292d122fdb4c7a6`  
		Last Modified: Tue, 16 May 2017 20:42:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
