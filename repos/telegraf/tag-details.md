<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.1`](#telegraf11)
-	[`telegraf:1.1.2`](#telegraf112)
-	[`telegraf:1.1-alpine`](#telegraf11-alpine)
-	[`telegraf:1.1.2-alpine`](#telegraf112-alpine)
-	[`telegraf:1.2`](#telegraf12)
-	[`telegraf:1.2.1`](#telegraf121)
-	[`telegraf:latest`](#telegraflatest)
-	[`telegraf:1.2-alpine`](#telegraf12-alpine)
-	[`telegraf:1.2.1-alpine`](#telegraf121-alpine)
-	[`telegraf:alpine`](#telegrafalpine)

## `telegraf:1.1`

```console
$ docker pull telegraf@sha256:4f7073ea239158c60a8f5083fd66831d28e5962ba6dafd26e0d342265bf96b72
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81784023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640d203e91502c482ff5c1722c20b5db5680e7d47984c2b18e94c2a1ec4afdb8`
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
# Mon, 15 May 2017 23:37:50 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 15 May 2017 23:38:10 GMT
ENV TELEGRAF_VERSION=1.1.2
# Mon, 15 May 2017 23:38:19 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Mon, 15 May 2017 23:38:34 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 15 May 2017 23:38:35 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 15 May 2017 23:38:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 May 2017 23:38:56 GMT
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
	-	`sha256:d6a101aba29fd89a5171a4faa9114b685ed2719686d2df71c04880238a703398`  
		Last Modified: Mon, 15 May 2017 23:40:46 GMT  
		Size: 6.9 KB (6884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a27aaab3b1ed304f85b28e1e14cc68aceb4bce7ee9c57d9cbc67715c8a2a193`  
		Last Modified: Mon, 15 May 2017 23:40:50 GMT  
		Size: 9.9 MB (9894004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d12b6e2fbbf1cdff233634ee32fde8a4d4f4ec4399160e3e14a12bed6af7f1`  
		Last Modified: Mon, 15 May 2017 23:40:46 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.1.2`

```console
$ docker pull telegraf@sha256:4f7073ea239158c60a8f5083fd66831d28e5962ba6dafd26e0d342265bf96b72
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.1.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81784023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640d203e91502c482ff5c1722c20b5db5680e7d47984c2b18e94c2a1ec4afdb8`
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
# Mon, 15 May 2017 23:37:50 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 15 May 2017 23:38:10 GMT
ENV TELEGRAF_VERSION=1.1.2
# Mon, 15 May 2017 23:38:19 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Mon, 15 May 2017 23:38:34 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 15 May 2017 23:38:35 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 15 May 2017 23:38:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 May 2017 23:38:56 GMT
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
	-	`sha256:d6a101aba29fd89a5171a4faa9114b685ed2719686d2df71c04880238a703398`  
		Last Modified: Mon, 15 May 2017 23:40:46 GMT  
		Size: 6.9 KB (6884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a27aaab3b1ed304f85b28e1e14cc68aceb4bce7ee9c57d9cbc67715c8a2a193`  
		Last Modified: Mon, 15 May 2017 23:40:50 GMT  
		Size: 9.9 MB (9894004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d12b6e2fbbf1cdff233634ee32fde8a4d4f4ec4399160e3e14a12bed6af7f1`  
		Last Modified: Mon, 15 May 2017 23:40:46 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.1-alpine`

```console
$ docker pull telegraf@sha256:affc47624be02eca5cc13f3e14737ebed39bc216cf71ded41acbec93a2337337
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9380066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99eae525d7fe5e9adac6ea4884a8a49b314dd3cf28423c9fc95d44fce349775`
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
# Wed, 10 May 2017 23:19:17 GMT
ENV TELEGRAF_VERSION=1.1.2
# Wed, 10 May 2017 23:19:25 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 23:19:26 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 10 May 2017 23:19:27 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 10 May 2017 23:19:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 23:19:28 GMT
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
	-	`sha256:dd579b1c9472b13629db7fc561943d19056c38186a1df363e42d99164191a0e5`  
		Last Modified: Sat, 13 May 2017 19:05:01 GMT  
		Size: 7.0 MB (6964419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599a47081fa29726b21937978748a6dacfc1f83ec734f5dad44456127851af71`  
		Last Modified: Sat, 13 May 2017 19:05:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.1.2-alpine`

```console
$ docker pull telegraf@sha256:affc47624be02eca5cc13f3e14737ebed39bc216cf71ded41acbec93a2337337
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.1.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9380066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99eae525d7fe5e9adac6ea4884a8a49b314dd3cf28423c9fc95d44fce349775`
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
# Wed, 10 May 2017 23:19:17 GMT
ENV TELEGRAF_VERSION=1.1.2
# Wed, 10 May 2017 23:19:25 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 23:19:26 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 10 May 2017 23:19:27 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 10 May 2017 23:19:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 23:19:28 GMT
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
	-	`sha256:dd579b1c9472b13629db7fc561943d19056c38186a1df363e42d99164191a0e5`  
		Last Modified: Sat, 13 May 2017 19:05:01 GMT  
		Size: 7.0 MB (6964419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599a47081fa29726b21937978748a6dacfc1f83ec734f5dad44456127851af71`  
		Last Modified: Sat, 13 May 2017 19:05:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.2`

```console
$ docker pull telegraf@sha256:40ea10e5bb8b97c9486e2a394180cca160b3834a555157124cf2f9776785a3f5
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81833127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e63fc5781a1a8300a777c495f85b2778c88fae038c9fe6d1c0b58d4df17638`
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
# Mon, 15 May 2017 23:37:50 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 15 May 2017 23:39:36 GMT
ENV TELEGRAF_VERSION=1.2.1
# Mon, 15 May 2017 23:39:40 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Mon, 15 May 2017 23:39:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 15 May 2017 23:40:00 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 15 May 2017 23:40:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 May 2017 23:40:21 GMT
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
	-	`sha256:d6a101aba29fd89a5171a4faa9114b685ed2719686d2df71c04880238a703398`  
		Last Modified: Mon, 15 May 2017 23:40:46 GMT  
		Size: 6.9 KB (6884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0126e501e19ec793303a6435703e7b2f3ca6bddf9bb3d99acf5f3a4842db6e70`  
		Last Modified: Mon, 15 May 2017 23:42:06 GMT  
		Size: 9.9 MB (9943108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8e25c66512743a9e05f127072161ddbf9c118662ca2501bc5ce8af71927b88`  
		Last Modified: Mon, 15 May 2017 23:42:04 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.2.1`

```console
$ docker pull telegraf@sha256:40ea10e5bb8b97c9486e2a394180cca160b3834a555157124cf2f9776785a3f5
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.2.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81833127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e63fc5781a1a8300a777c495f85b2778c88fae038c9fe6d1c0b58d4df17638`
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
# Mon, 15 May 2017 23:37:50 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 15 May 2017 23:39:36 GMT
ENV TELEGRAF_VERSION=1.2.1
# Mon, 15 May 2017 23:39:40 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Mon, 15 May 2017 23:39:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 15 May 2017 23:40:00 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 15 May 2017 23:40:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 May 2017 23:40:21 GMT
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
	-	`sha256:d6a101aba29fd89a5171a4faa9114b685ed2719686d2df71c04880238a703398`  
		Last Modified: Mon, 15 May 2017 23:40:46 GMT  
		Size: 6.9 KB (6884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0126e501e19ec793303a6435703e7b2f3ca6bddf9bb3d99acf5f3a4842db6e70`  
		Last Modified: Mon, 15 May 2017 23:42:06 GMT  
		Size: 9.9 MB (9943108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8e25c66512743a9e05f127072161ddbf9c118662ca2501bc5ce8af71927b88`  
		Last Modified: Mon, 15 May 2017 23:42:04 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:40ea10e5bb8b97c9486e2a394180cca160b3834a555157124cf2f9776785a3f5
```

-	Platforms:
	-	linux; amd64

### `telegraf:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81833127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e63fc5781a1a8300a777c495f85b2778c88fae038c9fe6d1c0b58d4df17638`
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
# Mon, 15 May 2017 23:37:50 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 15 May 2017 23:39:36 GMT
ENV TELEGRAF_VERSION=1.2.1
# Mon, 15 May 2017 23:39:40 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Mon, 15 May 2017 23:39:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 15 May 2017 23:40:00 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 15 May 2017 23:40:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 May 2017 23:40:21 GMT
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
	-	`sha256:d6a101aba29fd89a5171a4faa9114b685ed2719686d2df71c04880238a703398`  
		Last Modified: Mon, 15 May 2017 23:40:46 GMT  
		Size: 6.9 KB (6884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0126e501e19ec793303a6435703e7b2f3ca6bddf9bb3d99acf5f3a4842db6e70`  
		Last Modified: Mon, 15 May 2017 23:42:06 GMT  
		Size: 9.9 MB (9943108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8e25c66512743a9e05f127072161ddbf9c118662ca2501bc5ce8af71927b88`  
		Last Modified: Mon, 15 May 2017 23:42:04 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.2-alpine`

```console
$ docker pull telegraf@sha256:7a9124d23da9def5f757909de03eea17088b5ee9ca69db18fbe75f34786347af
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9414841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d217600320487c816a1c46afeb5ab14c4beff71044849611947e2452998fec0`
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
# Wed, 10 May 2017 23:19:56 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 23:19:57 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 10 May 2017 23:19:58 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 10 May 2017 23:19:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 23:19:59 GMT
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
	-	`sha256:9deb6371afa614752679d822f01b1225c5df5c8c7bb74f7d548a115e2b6332e9`  
		Last Modified: Sat, 13 May 2017 19:05:50 GMT  
		Size: 7.0 MB (6999194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e3453b613159f00a2b1d0d83fe9c7b617406ca4217d534e85ebac511039990`  
		Last Modified: Sat, 13 May 2017 19:05:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.2.1-alpine`

```console
$ docker pull telegraf@sha256:7a9124d23da9def5f757909de03eea17088b5ee9ca69db18fbe75f34786347af
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.2.1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9414841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d217600320487c816a1c46afeb5ab14c4beff71044849611947e2452998fec0`
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
# Wed, 10 May 2017 23:19:56 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 23:19:57 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 10 May 2017 23:19:58 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 10 May 2017 23:19:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 23:19:59 GMT
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
	-	`sha256:9deb6371afa614752679d822f01b1225c5df5c8c7bb74f7d548a115e2b6332e9`  
		Last Modified: Sat, 13 May 2017 19:05:50 GMT  
		Size: 7.0 MB (6999194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e3453b613159f00a2b1d0d83fe9c7b617406ca4217d534e85ebac511039990`  
		Last Modified: Sat, 13 May 2017 19:05:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:7a9124d23da9def5f757909de03eea17088b5ee9ca69db18fbe75f34786347af
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9414841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d217600320487c816a1c46afeb5ab14c4beff71044849611947e2452998fec0`
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
# Wed, 10 May 2017 23:19:56 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 23:19:57 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 10 May 2017 23:19:58 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 10 May 2017 23:19:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 23:19:59 GMT
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
	-	`sha256:9deb6371afa614752679d822f01b1225c5df5c8c7bb74f7d548a115e2b6332e9`  
		Last Modified: Sat, 13 May 2017 19:05:50 GMT  
		Size: 7.0 MB (6999194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e3453b613159f00a2b1d0d83fe9c7b617406ca4217d534e85ebac511039990`  
		Last Modified: Sat, 13 May 2017 19:05:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
