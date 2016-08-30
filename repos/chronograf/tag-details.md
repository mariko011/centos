<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `chronograf`

-	[`chronograf:0.12`](#chronograf012)
-	[`chronograf:0.12.0`](#chronograf0120)
-	[`chronograf:0.13`](#chronograf013)
-	[`chronograf:0.13.0`](#chronograf0130)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.0.0-rc1`](#chronograf100-rc1)

## `chronograf:0.12`

```console
$ docker pull chronograf@sha256:2414019944326b85ca229e323eac4fb76fb20afa4627b4e2554ba15c5b7574d0
```

-	Platforms:
	-	linux; amd64

### `chronograf:0.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73898350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1880190084171519094db4486671a7a0f7487814fb1ffc01dd9cc136348069`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 18:16:35 GMT
ENV CHRONOGRAF_VERSION=0.12.0
# Tue, 30 Aug 2016 18:16:39 GMT
RUN wget -q https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 18:16:39 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Tue, 30 Aug 2016 18:16:40 GMT
EXPOSE 10000/tcp
# Tue, 30 Aug 2016 18:16:40 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 18:16:40 GMT
VOLUME [/var/lib/chronograf]
# Tue, 30 Aug 2016 18:16:40 GMT
COPY file:52e80689a6559bcd429d0da2d2a991bcc0e31bcf066ca062d33be82a9ec6a48d in /entrypoint.sh 
# Tue, 30 Aug 2016 18:16:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 18:16:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3b2fd774464caf42943034505c94c660ae52a21b1f898761bfbb0a99ec7655`  
		Last Modified: Tue, 30 Aug 2016 21:48:23 GMT  
		Size: 4.0 MB (3998610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afba41118a4050a2332895cab708c98f278b768ab1f150cd3ac43c3ce75a1670`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede1a644ee444831372fcdbb26a76085d259cc9c883ca6662fb340616b452f21`  
		Last Modified: Tue, 30 Aug 2016 21:48:22 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:0.12.0`

```console
$ docker pull chronograf@sha256:2414019944326b85ca229e323eac4fb76fb20afa4627b4e2554ba15c5b7574d0
```

-	Platforms:
	-	linux; amd64

### `chronograf:0.12.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73898350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1880190084171519094db4486671a7a0f7487814fb1ffc01dd9cc136348069`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 18:16:35 GMT
ENV CHRONOGRAF_VERSION=0.12.0
# Tue, 30 Aug 2016 18:16:39 GMT
RUN wget -q https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 18:16:39 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Tue, 30 Aug 2016 18:16:40 GMT
EXPOSE 10000/tcp
# Tue, 30 Aug 2016 18:16:40 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 18:16:40 GMT
VOLUME [/var/lib/chronograf]
# Tue, 30 Aug 2016 18:16:40 GMT
COPY file:52e80689a6559bcd429d0da2d2a991bcc0e31bcf066ca062d33be82a9ec6a48d in /entrypoint.sh 
# Tue, 30 Aug 2016 18:16:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 18:16:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3b2fd774464caf42943034505c94c660ae52a21b1f898761bfbb0a99ec7655`  
		Last Modified: Tue, 30 Aug 2016 21:48:23 GMT  
		Size: 4.0 MB (3998610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afba41118a4050a2332895cab708c98f278b768ab1f150cd3ac43c3ce75a1670`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede1a644ee444831372fcdbb26a76085d259cc9c883ca6662fb340616b452f21`  
		Last Modified: Tue, 30 Aug 2016 21:48:22 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:0.13`

```console
$ docker pull chronograf@sha256:e72e4381498f58f9d60f1be9697f182f49af7ee4a1c96110904eeebb2eb81764
```

-	Platforms:
	-	linux; amd64

### `chronograf:0.13` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73900676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa1411b20b6e13e6879c0f70850c80f2f028a684a95f9d05902c82bbc728975`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 18:16:41 GMT
ENV CHRONOGRAF_VERSION=0.13.0
# Tue, 30 Aug 2016 18:16:45 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 18:16:45 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Tue, 30 Aug 2016 18:16:45 GMT
EXPOSE 10000/tcp
# Tue, 30 Aug 2016 18:16:46 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 18:16:46 GMT
VOLUME [/var/lib/chronograf]
# Tue, 30 Aug 2016 18:16:46 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Tue, 30 Aug 2016 18:16:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 18:16:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3792dff838e3e6047889f6f4da63e2539b2d1b289768910113697cd1ad5847`  
		Last Modified: Tue, 30 Aug 2016 21:48:43 GMT  
		Size: 4.0 MB (4000994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd192b0ae71b865d3549223bb30dba68a277ebc7473d0133e6c9582cce4215`  
		Last Modified: Tue, 30 Aug 2016 21:48:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f3fefad3fab2e93e7d1b51a9021b8f00af2b33dd8e3c45de9137dc1f62b00f`  
		Last Modified: Tue, 30 Aug 2016 21:48:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:0.13.0`

```console
$ docker pull chronograf@sha256:e72e4381498f58f9d60f1be9697f182f49af7ee4a1c96110904eeebb2eb81764
```

-	Platforms:
	-	linux; amd64

### `chronograf:0.13.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73900676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa1411b20b6e13e6879c0f70850c80f2f028a684a95f9d05902c82bbc728975`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 18:16:41 GMT
ENV CHRONOGRAF_VERSION=0.13.0
# Tue, 30 Aug 2016 18:16:45 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 18:16:45 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Tue, 30 Aug 2016 18:16:45 GMT
EXPOSE 10000/tcp
# Tue, 30 Aug 2016 18:16:46 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 18:16:46 GMT
VOLUME [/var/lib/chronograf]
# Tue, 30 Aug 2016 18:16:46 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Tue, 30 Aug 2016 18:16:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 18:16:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3792dff838e3e6047889f6f4da63e2539b2d1b289768910113697cd1ad5847`  
		Last Modified: Tue, 30 Aug 2016 21:48:43 GMT  
		Size: 4.0 MB (4000994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd192b0ae71b865d3549223bb30dba68a277ebc7473d0133e6c9582cce4215`  
		Last Modified: Tue, 30 Aug 2016 21:48:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f3fefad3fab2e93e7d1b51a9021b8f00af2b33dd8e3c45de9137dc1f62b00f`  
		Last Modified: Tue, 30 Aug 2016 21:48:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:e72e4381498f58f9d60f1be9697f182f49af7ee4a1c96110904eeebb2eb81764
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73900676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa1411b20b6e13e6879c0f70850c80f2f028a684a95f9d05902c82bbc728975`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 18:16:41 GMT
ENV CHRONOGRAF_VERSION=0.13.0
# Tue, 30 Aug 2016 18:16:45 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 18:16:45 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Tue, 30 Aug 2016 18:16:45 GMT
EXPOSE 10000/tcp
# Tue, 30 Aug 2016 18:16:46 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 18:16:46 GMT
VOLUME [/var/lib/chronograf]
# Tue, 30 Aug 2016 18:16:46 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Tue, 30 Aug 2016 18:16:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 18:16:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3792dff838e3e6047889f6f4da63e2539b2d1b289768910113697cd1ad5847`  
		Last Modified: Tue, 30 Aug 2016 21:48:43 GMT  
		Size: 4.0 MB (4000994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd192b0ae71b865d3549223bb30dba68a277ebc7473d0133e6c9582cce4215`  
		Last Modified: Tue, 30 Aug 2016 21:48:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f3fefad3fab2e93e7d1b51a9021b8f00af2b33dd8e3c45de9137dc1f62b00f`  
		Last Modified: Tue, 30 Aug 2016 21:48:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.0.0-rc1`

```console
$ docker pull chronograf@sha256:b11e46d29b3a397a4b128e3414a59602db5b7991f54a8d299afe3ea62de4acdc
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.0.0-rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73915816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa7e27d55a71f3554e6829108d4b831a4455b909d1b82dc5c289d7fe10c3ad5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 18:16:47 GMT
ENV CHRONOGRAF_VERSION=1.0.0-rc1
# Tue, 30 Aug 2016 18:16:51 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 18:16:52 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Tue, 30 Aug 2016 18:16:52 GMT
EXPOSE 10000/tcp
# Tue, 30 Aug 2016 18:16:52 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 18:16:52 GMT
VOLUME [/var/lib/chronograf]
# Tue, 30 Aug 2016 18:16:53 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Tue, 30 Aug 2016 18:16:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 18:16:53 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9767e96dc00c784d5d987a7cfa4a17b50596b615484858d50afe198fe637493`  
		Last Modified: Tue, 30 Aug 2016 21:49:14 GMT  
		Size: 4.0 MB (4016132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0c1cf0a5b7abc23a6243b8b26699830b78692877bc398fef398391d5a3ff78`  
		Last Modified: Tue, 30 Aug 2016 21:49:06 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee047837f15ee437a50ba66947b0e745dbe6980455acf05806d952b0cf29def6`  
		Last Modified: Tue, 30 Aug 2016 21:49:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
