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
$ docker pull kapacitor@sha256:5253620cceb033fd11cc7856f4cdcabc280ad912d0928a9302ff8ab08f6c456e
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300ba440bcb7cc62604b225cdbc48d4b33ef26e8ae03ad19139cb27a4cf0c062`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 17:23:48 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Mon, 19 Jun 2017 20:41:23 GMT
ENV KAPACITOR_VERSION=1.2.1
# Mon, 19 Jun 2017 20:41:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 20:41:38 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Mon, 19 Jun 2017 20:41:38 GMT
EXPOSE 9092/tcp
# Mon, 19 Jun 2017 20:41:39 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 19 Jun 2017 20:41:41 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Mon, 19 Jun 2017 20:41:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 20:41:42 GMT
CMD ["kapacitord"]
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
	-	`sha256:93ea91aea37e04f7bed400652311a31c39c607e0112610e1dcb8814db0015559`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 350.6 KB (350642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4221a718d80afcb21549e495bc9174636a8369125367401db1c3eb1af1ee9b1c`  
		Last Modified: Sat, 24 Jun 2017 12:15:12 GMT  
		Size: 7.1 MB (7072607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa00b7578c3e1f638a945209cac62032998f564b7f0a189281e7a536db658fb3`  
		Last Modified: Sat, 24 Jun 2017 12:15:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11bab6f11feac7cc1051e8320b22b8331e3ebc3c83765ff14b347b638e82e5d`  
		Last Modified: Sat, 24 Jun 2017 12:15:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1-alpine`

```console
$ docker pull kapacitor@sha256:5253620cceb033fd11cc7856f4cdcabc280ad912d0928a9302ff8ab08f6c456e
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300ba440bcb7cc62604b225cdbc48d4b33ef26e8ae03ad19139cb27a4cf0c062`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 17:23:48 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Mon, 19 Jun 2017 20:41:23 GMT
ENV KAPACITOR_VERSION=1.2.1
# Mon, 19 Jun 2017 20:41:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 20:41:38 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Mon, 19 Jun 2017 20:41:38 GMT
EXPOSE 9092/tcp
# Mon, 19 Jun 2017 20:41:39 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 19 Jun 2017 20:41:41 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Mon, 19 Jun 2017 20:41:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 20:41:42 GMT
CMD ["kapacitord"]
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
	-	`sha256:93ea91aea37e04f7bed400652311a31c39c607e0112610e1dcb8814db0015559`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 350.6 KB (350642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4221a718d80afcb21549e495bc9174636a8369125367401db1c3eb1af1ee9b1c`  
		Last Modified: Sat, 24 Jun 2017 12:15:12 GMT  
		Size: 7.1 MB (7072607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa00b7578c3e1f638a945209cac62032998f564b7f0a189281e7a536db658fb3`  
		Last Modified: Sat, 24 Jun 2017 12:15:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11bab6f11feac7cc1051e8320b22b8331e3ebc3c83765ff14b347b638e82e5d`  
		Last Modified: Sat, 24 Jun 2017 12:15:10 GMT  
		Size: 228.0 B  
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
$ docker pull kapacitor@sha256:ead4246d8075c229f2e11132cf370e4d4b9e7ed1a115c3aa40ed78f7f0796177
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16876110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce15f60e4fbbb099f1c402b1bd1c1e2d26811662fd83f2b05b1c2a4209301417`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 17:23:48 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Mon, 19 Jun 2017 20:42:08 GMT
ENV KAPACITOR_VERSION=1.3.1
# Mon, 19 Jun 2017 20:42:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 20:42:21 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Mon, 19 Jun 2017 20:42:22 GMT
EXPOSE 9092/tcp
# Mon, 19 Jun 2017 20:42:23 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 19 Jun 2017 20:42:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Mon, 19 Jun 2017 20:42:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 20:42:26 GMT
CMD ["kapacitord"]
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
	-	`sha256:93ea91aea37e04f7bed400652311a31c39c607e0112610e1dcb8814db0015559`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 350.6 KB (350642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dad8a72b0b4e54300fa53d2bb814d91e8826a03939fec92c42b085e1979913`  
		Last Modified: Sat, 24 Jun 2017 12:17:56 GMT  
		Size: 14.6 MB (14554549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b56b02efe0464f56d1a98176b967d2cf7875f5cbfb8b179c410ef4463e8d13a`  
		Last Modified: Sat, 24 Jun 2017 12:17:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf1b4d9329bf7d99c5972c00493e990b7db8c2a29647c39fa5d516f729182e7`  
		Last Modified: Sat, 24 Jun 2017 12:17:52 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.1-alpine`

```console
$ docker pull kapacitor@sha256:ead4246d8075c229f2e11132cf370e4d4b9e7ed1a115c3aa40ed78f7f0796177
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16876110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce15f60e4fbbb099f1c402b1bd1c1e2d26811662fd83f2b05b1c2a4209301417`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 17:23:48 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Mon, 19 Jun 2017 20:42:08 GMT
ENV KAPACITOR_VERSION=1.3.1
# Mon, 19 Jun 2017 20:42:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 20:42:21 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Mon, 19 Jun 2017 20:42:22 GMT
EXPOSE 9092/tcp
# Mon, 19 Jun 2017 20:42:23 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 19 Jun 2017 20:42:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Mon, 19 Jun 2017 20:42:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 20:42:26 GMT
CMD ["kapacitord"]
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
	-	`sha256:93ea91aea37e04f7bed400652311a31c39c607e0112610e1dcb8814db0015559`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 350.6 KB (350642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dad8a72b0b4e54300fa53d2bb814d91e8826a03939fec92c42b085e1979913`  
		Last Modified: Sat, 24 Jun 2017 12:17:56 GMT  
		Size: 14.6 MB (14554549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b56b02efe0464f56d1a98176b967d2cf7875f5cbfb8b179c410ef4463e8d13a`  
		Last Modified: Sat, 24 Jun 2017 12:17:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf1b4d9329bf7d99c5972c00493e990b7db8c2a29647c39fa5d516f729182e7`  
		Last Modified: Sat, 24 Jun 2017 12:17:52 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:ead4246d8075c229f2e11132cf370e4d4b9e7ed1a115c3aa40ed78f7f0796177
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16876110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce15f60e4fbbb099f1c402b1bd1c1e2d26811662fd83f2b05b1c2a4209301417`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 17:23:48 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Mon, 19 Jun 2017 20:42:08 GMT
ENV KAPACITOR_VERSION=1.3.1
# Mon, 19 Jun 2017 20:42:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 20:42:21 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Mon, 19 Jun 2017 20:42:22 GMT
EXPOSE 9092/tcp
# Mon, 19 Jun 2017 20:42:23 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 19 Jun 2017 20:42:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Mon, 19 Jun 2017 20:42:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 20:42:26 GMT
CMD ["kapacitord"]
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
	-	`sha256:93ea91aea37e04f7bed400652311a31c39c607e0112610e1dcb8814db0015559`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 350.6 KB (350642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dad8a72b0b4e54300fa53d2bb814d91e8826a03939fec92c42b085e1979913`  
		Last Modified: Sat, 24 Jun 2017 12:17:56 GMT  
		Size: 14.6 MB (14554549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b56b02efe0464f56d1a98176b967d2cf7875f5cbfb8b179c410ef4463e8d13a`  
		Last Modified: Sat, 24 Jun 2017 12:17:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf1b4d9329bf7d99c5972c00493e990b7db8c2a29647c39fa5d516f729182e7`  
		Last Modified: Sat, 24 Jun 2017 12:17:52 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
