<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.2`](#kapacitor12)
-	[`kapacitor:1.2.1`](#kapacitor121)
-	[`kapacitor:1.2-alpine`](#kapacitor12-alpine)
-	[`kapacitor:1.2.1-alpine`](#kapacitor121-alpine)
-	[`kapacitor:1.3`](#kapacitor13)
-	[`kapacitor:1.3.1`](#kapacitor131)
-	[`kapacitor:latest`](#kapacitorlatest)
-	[`kapacitor:1.3-alpine`](#kapacitor13-alpine)
-	[`kapacitor:1.3.1-alpine`](#kapacitor131-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)

## `kapacitor:1.2`

```console
$ docker pull kapacitor@sha256:c5a16a228ed7b558932aff09d170d6c568a58348ed47ee25955e31e7fb349d0b
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82068494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6a0a4b55b7fd4d928322dbd0ff95937e4a4d3e355440e39113ad8213b93e41`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:21:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 23 Jun 2017 00:25:36 GMT
ENV KAPACITOR_VERSION=1.2.1
# Fri, 23 Jun 2017 00:25:39 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 23 Jun 2017 00:25:40 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 23 Jun 2017 00:25:41 GMT
EXPOSE 9092/tcp
# Fri, 23 Jun 2017 00:25:42 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Jun 2017 00:25:43 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 23 Jun 2017 00:25:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 00:25:45 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be322bc8fd93f4bebccc5ad8e6b4074a4d3b764bd10299bd804cbfc3f651d0`  
		Last Modified: Fri, 23 Jun 2017 17:19:00 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fdeb6f0d461e06e417dae75c4866a5e9f4dc0273db293e1559c7b3e1afcfb1`  
		Last Modified: Sat, 24 Jun 2017 12:14:11 GMT  
		Size: 10.2 MB (10182073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf2eb8e8db7f190830242d3bd0bd7b7f0fcdb6d4ad71ee6bbf3708c09a41ea3`  
		Last Modified: Sat, 24 Jun 2017 12:14:09 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9743e8d157c2cad0eead2214ac865363d127a1cefd40ec17042badf884c727`  
		Last Modified: Sat, 24 Jun 2017 12:14:07 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1`

```console
$ docker pull kapacitor@sha256:c5a16a228ed7b558932aff09d170d6c568a58348ed47ee25955e31e7fb349d0b
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82068494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6a0a4b55b7fd4d928322dbd0ff95937e4a4d3e355440e39113ad8213b93e41`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:21:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 23 Jun 2017 00:25:36 GMT
ENV KAPACITOR_VERSION=1.2.1
# Fri, 23 Jun 2017 00:25:39 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 23 Jun 2017 00:25:40 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 23 Jun 2017 00:25:41 GMT
EXPOSE 9092/tcp
# Fri, 23 Jun 2017 00:25:42 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Jun 2017 00:25:43 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 23 Jun 2017 00:25:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 00:25:45 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be322bc8fd93f4bebccc5ad8e6b4074a4d3b764bd10299bd804cbfc3f651d0`  
		Last Modified: Fri, 23 Jun 2017 17:19:00 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fdeb6f0d461e06e417dae75c4866a5e9f4dc0273db293e1559c7b3e1afcfb1`  
		Last Modified: Sat, 24 Jun 2017 12:14:11 GMT  
		Size: 10.2 MB (10182073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf2eb8e8db7f190830242d3bd0bd7b7f0fcdb6d4ad71ee6bbf3708c09a41ea3`  
		Last Modified: Sat, 24 Jun 2017 12:14:09 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9743e8d157c2cad0eead2214ac865363d127a1cefd40ec17042badf884c727`  
		Last Modified: Sat, 24 Jun 2017 12:14:07 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2-alpine`

```console
$ docker pull kapacitor@sha256:fadc5d06d6261a30011f26d2a83ffb62ea126c478285b00bf382d6f452032d5c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e33fec706f52e9d0b557b87e4a740af52f9d82e03216938f94ba1f6e8d2288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 28 Jun 2017 18:24:28 GMT
ENV KAPACITOR_VERSION=1.2.1
# Wed, 28 Jun 2017 18:24:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 28 Jun 2017 18:24:41 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 28 Jun 2017 18:24:42 GMT
EXPOSE 9092/tcp
# Wed, 28 Jun 2017 18:24:43 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 28 Jun 2017 18:24:44 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 28 Jun 2017 18:24:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 18:24:45 GMT
CMD ["kapacitord"]
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
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9efdab7b8b9d7166ea17cd717ed62ca0665d8fec1b337ff2c7fdf4f9634bb`  
		Last Modified: Thu, 29 Jun 2017 21:33:40 GMT  
		Size: 7.1 MB (7072647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4428893d488a8db9d5b443ce52926265a2bdaa23d5e94911fd48c86307d89865`  
		Last Modified: Thu, 29 Jun 2017 21:33:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7559504025b65137c954bdc73e95ed66756661d07b2596794c9bed5b29824b25`  
		Last Modified: Thu, 29 Jun 2017 21:33:39 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1-alpine`

```console
$ docker pull kapacitor@sha256:fadc5d06d6261a30011f26d2a83ffb62ea126c478285b00bf382d6f452032d5c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e33fec706f52e9d0b557b87e4a740af52f9d82e03216938f94ba1f6e8d2288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 28 Jun 2017 18:24:28 GMT
ENV KAPACITOR_VERSION=1.2.1
# Wed, 28 Jun 2017 18:24:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 28 Jun 2017 18:24:41 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 28 Jun 2017 18:24:42 GMT
EXPOSE 9092/tcp
# Wed, 28 Jun 2017 18:24:43 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 28 Jun 2017 18:24:44 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 28 Jun 2017 18:24:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 18:24:45 GMT
CMD ["kapacitord"]
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
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9efdab7b8b9d7166ea17cd717ed62ca0665d8fec1b337ff2c7fdf4f9634bb`  
		Last Modified: Thu, 29 Jun 2017 21:33:40 GMT  
		Size: 7.1 MB (7072647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4428893d488a8db9d5b443ce52926265a2bdaa23d5e94911fd48c86307d89865`  
		Last Modified: Thu, 29 Jun 2017 21:33:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7559504025b65137c954bdc73e95ed66756661d07b2596794c9bed5b29824b25`  
		Last Modified: Thu, 29 Jun 2017 21:33:39 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3`

```console
$ docker pull kapacitor@sha256:3caad26b5cc4692f8d184711d7f5b7db9d3049d52e268fdd78002c6904fa4b4c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92624645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecaf798e4ea21e35ce10a640a6bd22f8b55bf82147b2eb08211c12d62ba0896a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:21:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 23 Jun 2017 00:26:10 GMT
ENV KAPACITOR_VERSION=1.3.1
# Fri, 23 Jun 2017 00:26:16 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 23 Jun 2017 00:26:17 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 23 Jun 2017 00:26:18 GMT
EXPOSE 9092/tcp
# Fri, 23 Jun 2017 00:26:19 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Jun 2017 00:26:20 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 23 Jun 2017 00:26:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 00:26:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be322bc8fd93f4bebccc5ad8e6b4074a4d3b764bd10299bd804cbfc3f651d0`  
		Last Modified: Fri, 23 Jun 2017 17:19:00 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38399938a39e50f97cee47d8f86ee560ff0b1a7c9af6b565fedcfdf9ceef9c6`  
		Last Modified: Sat, 24 Jun 2017 12:16:27 GMT  
		Size: 20.7 MB (20738227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293fe8dbd741547d66feb05321fa5870e1b30f09400fbeb9ac59aaa6518131c8`  
		Last Modified: Sat, 24 Jun 2017 12:16:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5e4dac247f7ef1ecd88fd696688b363606536bed8c650c2be35388b67f7ad5`  
		Last Modified: Sat, 24 Jun 2017 12:16:21 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.1`

```console
$ docker pull kapacitor@sha256:3caad26b5cc4692f8d184711d7f5b7db9d3049d52e268fdd78002c6904fa4b4c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92624645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecaf798e4ea21e35ce10a640a6bd22f8b55bf82147b2eb08211c12d62ba0896a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:21:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 23 Jun 2017 00:26:10 GMT
ENV KAPACITOR_VERSION=1.3.1
# Fri, 23 Jun 2017 00:26:16 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 23 Jun 2017 00:26:17 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 23 Jun 2017 00:26:18 GMT
EXPOSE 9092/tcp
# Fri, 23 Jun 2017 00:26:19 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Jun 2017 00:26:20 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 23 Jun 2017 00:26:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 00:26:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be322bc8fd93f4bebccc5ad8e6b4074a4d3b764bd10299bd804cbfc3f651d0`  
		Last Modified: Fri, 23 Jun 2017 17:19:00 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38399938a39e50f97cee47d8f86ee560ff0b1a7c9af6b565fedcfdf9ceef9c6`  
		Last Modified: Sat, 24 Jun 2017 12:16:27 GMT  
		Size: 20.7 MB (20738227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293fe8dbd741547d66feb05321fa5870e1b30f09400fbeb9ac59aaa6518131c8`  
		Last Modified: Sat, 24 Jun 2017 12:16:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5e4dac247f7ef1ecd88fd696688b363606536bed8c650c2be35388b67f7ad5`  
		Last Modified: Sat, 24 Jun 2017 12:16:21 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:3caad26b5cc4692f8d184711d7f5b7db9d3049d52e268fdd78002c6904fa4b4c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92624645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecaf798e4ea21e35ce10a640a6bd22f8b55bf82147b2eb08211c12d62ba0896a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:21:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 23 Jun 2017 00:26:10 GMT
ENV KAPACITOR_VERSION=1.3.1
# Fri, 23 Jun 2017 00:26:16 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 23 Jun 2017 00:26:17 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 23 Jun 2017 00:26:18 GMT
EXPOSE 9092/tcp
# Fri, 23 Jun 2017 00:26:19 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Jun 2017 00:26:20 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 23 Jun 2017 00:26:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 00:26:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be322bc8fd93f4bebccc5ad8e6b4074a4d3b764bd10299bd804cbfc3f651d0`  
		Last Modified: Fri, 23 Jun 2017 17:19:00 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38399938a39e50f97cee47d8f86ee560ff0b1a7c9af6b565fedcfdf9ceef9c6`  
		Last Modified: Sat, 24 Jun 2017 12:16:27 GMT  
		Size: 20.7 MB (20738227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293fe8dbd741547d66feb05321fa5870e1b30f09400fbeb9ac59aaa6518131c8`  
		Last Modified: Sat, 24 Jun 2017 12:16:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5e4dac247f7ef1ecd88fd696688b363606536bed8c650c2be35388b67f7ad5`  
		Last Modified: Sat, 24 Jun 2017 12:16:21 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3-alpine`

```console
$ docker pull kapacitor@sha256:2673eab6a61c4e2c44913dd889585d0d5d1f818f14de5b4f7f6d550550c3a1b7
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16876059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13082e57956c19f3fcbba808b14f90aed7fad6fc0d04092172a7bf7693bd0700`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 28 Jun 2017 18:25:11 GMT
ENV KAPACITOR_VERSION=1.3.1
# Wed, 28 Jun 2017 18:25:23 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 28 Jun 2017 18:25:25 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 28 Jun 2017 18:25:26 GMT
EXPOSE 9092/tcp
# Wed, 28 Jun 2017 18:25:26 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 28 Jun 2017 18:25:28 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 28 Jun 2017 18:25:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 18:25:30 GMT
CMD ["kapacitord"]
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
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36942c147871d2ac6be76a78c2aa95dced3cf8c7cf545fd64e83ad1e21b4752`  
		Last Modified: Thu, 29 Jun 2017 21:34:59 GMT  
		Size: 14.6 MB (14554545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e4f1be187bdd25bbde26ddd260b18a241faaa8d1590dd1fe5b2dffe13d7a3b`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601c7ed64ea18da28cc9ecb924710707986791b411f180f4783b69a5c3140df3`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.1-alpine`

```console
$ docker pull kapacitor@sha256:2673eab6a61c4e2c44913dd889585d0d5d1f818f14de5b4f7f6d550550c3a1b7
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16876059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13082e57956c19f3fcbba808b14f90aed7fad6fc0d04092172a7bf7693bd0700`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 28 Jun 2017 18:25:11 GMT
ENV KAPACITOR_VERSION=1.3.1
# Wed, 28 Jun 2017 18:25:23 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 28 Jun 2017 18:25:25 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 28 Jun 2017 18:25:26 GMT
EXPOSE 9092/tcp
# Wed, 28 Jun 2017 18:25:26 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 28 Jun 2017 18:25:28 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 28 Jun 2017 18:25:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 18:25:30 GMT
CMD ["kapacitord"]
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
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36942c147871d2ac6be76a78c2aa95dced3cf8c7cf545fd64e83ad1e21b4752`  
		Last Modified: Thu, 29 Jun 2017 21:34:59 GMT  
		Size: 14.6 MB (14554545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e4f1be187bdd25bbde26ddd260b18a241faaa8d1590dd1fe5b2dffe13d7a3b`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601c7ed64ea18da28cc9ecb924710707986791b411f180f4783b69a5c3140df3`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:2673eab6a61c4e2c44913dd889585d0d5d1f818f14de5b4f7f6d550550c3a1b7
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16876059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13082e57956c19f3fcbba808b14f90aed7fad6fc0d04092172a7bf7693bd0700`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 28 Jun 2017 18:25:11 GMT
ENV KAPACITOR_VERSION=1.3.1
# Wed, 28 Jun 2017 18:25:23 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 28 Jun 2017 18:25:25 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 28 Jun 2017 18:25:26 GMT
EXPOSE 9092/tcp
# Wed, 28 Jun 2017 18:25:26 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 28 Jun 2017 18:25:28 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 28 Jun 2017 18:25:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 18:25:30 GMT
CMD ["kapacitord"]
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
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36942c147871d2ac6be76a78c2aa95dced3cf8c7cf545fd64e83ad1e21b4752`  
		Last Modified: Thu, 29 Jun 2017 21:34:59 GMT  
		Size: 14.6 MB (14554545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e4f1be187bdd25bbde26ddd260b18a241faaa8d1590dd1fe5b2dffe13d7a3b`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601c7ed64ea18da28cc9ecb924710707986791b411f180f4783b69a5c3140df3`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
