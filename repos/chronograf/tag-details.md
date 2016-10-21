<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:0.13`](#chronograf013)
-	[`chronograf:0.13.0`](#chronograf0130)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.0.0-rc1`](#chronograf100-rc1)

## `chronograf:0.13`

```console
$ docker pull chronograf@sha256:78a86275a93b6024ff04a2cd38b95e8489d555938162f16ff42b1721f16d674a
```

-	Platforms:
	-	linux; amd64

### `chronograf:0.13` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73889334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2831587c4d7944df6fe3b82eed25f3bd51e3a90a313066976ba7048ffc38c63`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:58 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 21 Oct 2016 17:00:59 GMT
ENV CHRONOGRAF_VERSION=0.13.0
# Fri, 21 Oct 2016 17:01:03 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Fri, 21 Oct 2016 17:01:03 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Fri, 21 Oct 2016 17:01:04 GMT
EXPOSE 10000/tcp
# Fri, 21 Oct 2016 17:01:04 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Oct 2016 17:01:04 GMT
VOLUME [/var/lib/chronograf]
# Fri, 21 Oct 2016 17:01:05 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Fri, 21 Oct 2016 17:01:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 17:01:06 GMT
CMD ["chronograf"]
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
	-	`sha256:d6ff7d588a8106eeb07def68e70cf245b35b66b67052ec8a5cecdc6f5b848421`  
		Last Modified: Fri, 21 Oct 2016 17:01:17 GMT  
		Size: 4.0 MB (4000931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9cf8f564a5f19fccb3a6c259f486fe67845b96b3f4a19d6555ac6948756412`  
		Last Modified: Fri, 21 Oct 2016 17:01:16 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d66bf6146a06c4d34c85363c24141f53da096ffd32e115c68fb462b9584c82`  
		Last Modified: Fri, 21 Oct 2016 17:01:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:0.13.0`

```console
$ docker pull chronograf@sha256:78a86275a93b6024ff04a2cd38b95e8489d555938162f16ff42b1721f16d674a
```

-	Platforms:
	-	linux; amd64

### `chronograf:0.13.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73889334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2831587c4d7944df6fe3b82eed25f3bd51e3a90a313066976ba7048ffc38c63`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:58 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 21 Oct 2016 17:00:59 GMT
ENV CHRONOGRAF_VERSION=0.13.0
# Fri, 21 Oct 2016 17:01:03 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Fri, 21 Oct 2016 17:01:03 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Fri, 21 Oct 2016 17:01:04 GMT
EXPOSE 10000/tcp
# Fri, 21 Oct 2016 17:01:04 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Oct 2016 17:01:04 GMT
VOLUME [/var/lib/chronograf]
# Fri, 21 Oct 2016 17:01:05 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Fri, 21 Oct 2016 17:01:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 17:01:06 GMT
CMD ["chronograf"]
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
	-	`sha256:d6ff7d588a8106eeb07def68e70cf245b35b66b67052ec8a5cecdc6f5b848421`  
		Last Modified: Fri, 21 Oct 2016 17:01:17 GMT  
		Size: 4.0 MB (4000931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9cf8f564a5f19fccb3a6c259f486fe67845b96b3f4a19d6555ac6948756412`  
		Last Modified: Fri, 21 Oct 2016 17:01:16 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d66bf6146a06c4d34c85363c24141f53da096ffd32e115c68fb462b9584c82`  
		Last Modified: Fri, 21 Oct 2016 17:01:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:78a86275a93b6024ff04a2cd38b95e8489d555938162f16ff42b1721f16d674a
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73889334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2831587c4d7944df6fe3b82eed25f3bd51e3a90a313066976ba7048ffc38c63`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:58 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 21 Oct 2016 17:00:59 GMT
ENV CHRONOGRAF_VERSION=0.13.0
# Fri, 21 Oct 2016 17:01:03 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Fri, 21 Oct 2016 17:01:03 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Fri, 21 Oct 2016 17:01:04 GMT
EXPOSE 10000/tcp
# Fri, 21 Oct 2016 17:01:04 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Oct 2016 17:01:04 GMT
VOLUME [/var/lib/chronograf]
# Fri, 21 Oct 2016 17:01:05 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Fri, 21 Oct 2016 17:01:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 17:01:06 GMT
CMD ["chronograf"]
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
	-	`sha256:d6ff7d588a8106eeb07def68e70cf245b35b66b67052ec8a5cecdc6f5b848421`  
		Last Modified: Fri, 21 Oct 2016 17:01:17 GMT  
		Size: 4.0 MB (4000931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9cf8f564a5f19fccb3a6c259f486fe67845b96b3f4a19d6555ac6948756412`  
		Last Modified: Fri, 21 Oct 2016 17:01:16 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d66bf6146a06c4d34c85363c24141f53da096ffd32e115c68fb462b9584c82`  
		Last Modified: Fri, 21 Oct 2016 17:01:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.0.0-rc1`

```console
$ docker pull chronograf@sha256:5e0500e521f47f1edcc7968b43fc556ddd8038308c35770e3e4d15d45cedd6b6
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.0.0-rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73904435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39bb11f1bc4ec71a4c4dcc0c8c3a28710709d93faf921fdae8ca78a75f691e11`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:58 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 21 Oct 2016 17:01:47 GMT
ENV CHRONOGRAF_VERSION=1.0.0-rc1
# Fri, 21 Oct 2016 17:01:51 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Fri, 21 Oct 2016 17:01:51 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Fri, 21 Oct 2016 17:01:52 GMT
EXPOSE 10000/tcp
# Fri, 21 Oct 2016 17:01:52 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Oct 2016 17:01:53 GMT
VOLUME [/var/lib/chronograf]
# Fri, 21 Oct 2016 17:01:53 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Fri, 21 Oct 2016 17:01:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 17:01:54 GMT
CMD ["chronograf"]
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
	-	`sha256:5e86ea45874f474427cbe8d436a0d094ca3c706533b63df24345ca0029078c69`  
		Last Modified: Fri, 21 Oct 2016 17:02:05 GMT  
		Size: 4.0 MB (4016032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8ff2909bb82ca9db8ac699bf9036a3ba2860bbb2f704c54c9dd9f5195fec7e`  
		Last Modified: Fri, 21 Oct 2016 17:02:03 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f22918e3dfbd1fd5841654be6d857d736127a358558426b923b3d7c948324eb`  
		Last Modified: Fri, 21 Oct 2016 17:02:04 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
