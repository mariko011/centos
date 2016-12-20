<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.0`](#kapacitor10)
-	[`kapacitor:1.0.2`](#kapacitor102)
-	[`kapacitor:1.0-alpine`](#kapacitor10-alpine)
-	[`kapacitor:1.0.2-alpine`](#kapacitor102-alpine)
-	[`kapacitor:1.1`](#kapacitor11)
-	[`kapacitor:1.1.1`](#kapacitor111)
-	[`kapacitor:latest`](#kapacitorlatest)
-	[`kapacitor:1.1-alpine`](#kapacitor11-alpine)
-	[`kapacitor:1.1.1-alpine`](#kapacitor111-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)

## `kapacitor:1.0`

```console
$ docker pull kapacitor@sha256:f2b7744ca4d39a7f006ee7d0da573652797f1a592f7c617750df3fa72aba74d2
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80727100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d7a3e05cde8356fd18c4312798b5e0be22125f9882251a1bb9afdc5476eae6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:10 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 14 Dec 2016 00:57:54 GMT
ENV KAPACITOR_VERSION=1.0.2
# Wed, 14 Dec 2016 00:57:56 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 14 Dec 2016 00:57:57 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Dec 2016 00:57:57 GMT
EXPOSE 9092/tcp
# Wed, 14 Dec 2016 00:57:57 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Dec 2016 00:57:58 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 14 Dec 2016 00:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 00:57:58 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2976d4d206c5b9ac9fc57facba5fa461b15ccbce76a3cd314a77695608545`  
		Last Modified: Mon, 19 Dec 2016 18:17:22 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100498c96720b377eeb1ae06134b181d359ae7cae764a98dea07bfa5e1031b2e`  
		Last Modified: Mon, 19 Dec 2016 23:33:56 GMT  
		Size: 10.8 MB (10826791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41482c64841d380d346cab0b5a5d69120f3872d275cc02128ff1b9b83a80098a`  
		Last Modified: Mon, 19 Dec 2016 23:33:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553034a0631f922baa7aaee7a90d6de559e09ca9bd8991549ac832ed39ff1317`  
		Last Modified: Mon, 19 Dec 2016 23:33:51 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.2`

```console
$ docker pull kapacitor@sha256:f2b7744ca4d39a7f006ee7d0da573652797f1a592f7c617750df3fa72aba74d2
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80727100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d7a3e05cde8356fd18c4312798b5e0be22125f9882251a1bb9afdc5476eae6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:10 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 14 Dec 2016 00:57:54 GMT
ENV KAPACITOR_VERSION=1.0.2
# Wed, 14 Dec 2016 00:57:56 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 14 Dec 2016 00:57:57 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Dec 2016 00:57:57 GMT
EXPOSE 9092/tcp
# Wed, 14 Dec 2016 00:57:57 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Dec 2016 00:57:58 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 14 Dec 2016 00:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 00:57:58 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2976d4d206c5b9ac9fc57facba5fa461b15ccbce76a3cd314a77695608545`  
		Last Modified: Mon, 19 Dec 2016 18:17:22 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100498c96720b377eeb1ae06134b181d359ae7cae764a98dea07bfa5e1031b2e`  
		Last Modified: Mon, 19 Dec 2016 23:33:56 GMT  
		Size: 10.8 MB (10826791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41482c64841d380d346cab0b5a5d69120f3872d275cc02128ff1b9b83a80098a`  
		Last Modified: Mon, 19 Dec 2016 23:33:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553034a0631f922baa7aaee7a90d6de559e09ca9bd8991549ac832ed39ff1317`  
		Last Modified: Mon, 19 Dec 2016 23:33:51 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0-alpine`

```console
$ docker pull kapacitor@sha256:df0b92cd3aff28d6539b5650461e22a192891664d35cda6a8bb2198d7dcaa965
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10232495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80dea0594edb29423f996f365fea2a6e1a359fbaeb0299a3a6eedd872575f2a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:39:14 GMT
ENV KAPACITOR_VERSION=1.0.2
# Tue, 18 Oct 2016 23:39:21 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Oct 2016 23:39:22 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 18 Oct 2016 23:39:22 GMT
EXPOSE 9092/tcp
# Tue, 18 Oct 2016 23:39:23 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 18 Oct 2016 23:39:23 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:39:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:39:24 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fb62a5baa0780d2b86618b2f4052f65c69fbb80b7ebb1da3af792818b91ddf`  
		Last Modified: Tue, 18 Oct 2016 23:39:36 GMT  
		Size: 7.9 MB (7919090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877ce9124c77eaf662a90235d168a22d46e9bb617ae947bb8782a59b8b42f665`  
		Last Modified: Tue, 18 Oct 2016 23:39:33 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97339a508fd2717f631bba51f9ba7e4c4e3e44dcf5eb91cd4138af3ff2a550bd`  
		Last Modified: Tue, 18 Oct 2016 23:39:33 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.2-alpine`

```console
$ docker pull kapacitor@sha256:df0b92cd3aff28d6539b5650461e22a192891664d35cda6a8bb2198d7dcaa965
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10232495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80dea0594edb29423f996f365fea2a6e1a359fbaeb0299a3a6eedd872575f2a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:39:14 GMT
ENV KAPACITOR_VERSION=1.0.2
# Tue, 18 Oct 2016 23:39:21 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Oct 2016 23:39:22 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 18 Oct 2016 23:39:22 GMT
EXPOSE 9092/tcp
# Tue, 18 Oct 2016 23:39:23 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 18 Oct 2016 23:39:23 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:39:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:39:24 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fb62a5baa0780d2b86618b2f4052f65c69fbb80b7ebb1da3af792818b91ddf`  
		Last Modified: Tue, 18 Oct 2016 23:39:36 GMT  
		Size: 7.9 MB (7919090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877ce9124c77eaf662a90235d168a22d46e9bb617ae947bb8782a59b8b42f665`  
		Last Modified: Tue, 18 Oct 2016 23:39:33 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97339a508fd2717f631bba51f9ba7e4c4e3e44dcf5eb91cd4138af3ff2a550bd`  
		Last Modified: Tue, 18 Oct 2016 23:39:33 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1`

```console
$ docker pull kapacitor@sha256:7b952baa7a37b30f0743a70a4415381667cba0c6f5779a13370669b94116437d
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79509912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a711c9fec86a1da8f06dab7ac6c9044d02cf887b4bd9bbe2b7bf6f41f43289ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:10 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 14 Dec 2016 00:57:59 GMT
ENV KAPACITOR_VERSION=1.1.1
# Wed, 14 Dec 2016 00:58:07 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 14 Dec 2016 00:58:08 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Dec 2016 00:58:08 GMT
EXPOSE 9092/tcp
# Wed, 14 Dec 2016 00:58:09 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Dec 2016 00:58:09 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 14 Dec 2016 00:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 00:58:10 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2976d4d206c5b9ac9fc57facba5fa461b15ccbce76a3cd314a77695608545`  
		Last Modified: Mon, 19 Dec 2016 18:17:22 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a07eef10046a53cf96b5a3b9bfc8b5491e1b3663900562e38a127f8244f11`  
		Last Modified: Mon, 19 Dec 2016 23:34:42 GMT  
		Size: 9.6 MB (9609596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e868426e5c8c194d3bd192f4cfea5b03de7382267ca8da698dead52eb5974de`  
		Last Modified: Mon, 19 Dec 2016 23:34:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab83f3c6eb8116582e74740a3361faabb0e8ba9bf41c9130cefbf261c162310`  
		Last Modified: Mon, 19 Dec 2016 23:34:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1.1`

```console
$ docker pull kapacitor@sha256:7b952baa7a37b30f0743a70a4415381667cba0c6f5779a13370669b94116437d
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79509912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a711c9fec86a1da8f06dab7ac6c9044d02cf887b4bd9bbe2b7bf6f41f43289ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:10 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 14 Dec 2016 00:57:59 GMT
ENV KAPACITOR_VERSION=1.1.1
# Wed, 14 Dec 2016 00:58:07 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 14 Dec 2016 00:58:08 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Dec 2016 00:58:08 GMT
EXPOSE 9092/tcp
# Wed, 14 Dec 2016 00:58:09 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Dec 2016 00:58:09 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 14 Dec 2016 00:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 00:58:10 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2976d4d206c5b9ac9fc57facba5fa461b15ccbce76a3cd314a77695608545`  
		Last Modified: Mon, 19 Dec 2016 18:17:22 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a07eef10046a53cf96b5a3b9bfc8b5491e1b3663900562e38a127f8244f11`  
		Last Modified: Mon, 19 Dec 2016 23:34:42 GMT  
		Size: 9.6 MB (9609596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e868426e5c8c194d3bd192f4cfea5b03de7382267ca8da698dead52eb5974de`  
		Last Modified: Mon, 19 Dec 2016 23:34:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab83f3c6eb8116582e74740a3361faabb0e8ba9bf41c9130cefbf261c162310`  
		Last Modified: Mon, 19 Dec 2016 23:34:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:7b952baa7a37b30f0743a70a4415381667cba0c6f5779a13370669b94116437d
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79509912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a711c9fec86a1da8f06dab7ac6c9044d02cf887b4bd9bbe2b7bf6f41f43289ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:10 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 14 Dec 2016 00:57:59 GMT
ENV KAPACITOR_VERSION=1.1.1
# Wed, 14 Dec 2016 00:58:07 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 14 Dec 2016 00:58:08 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Dec 2016 00:58:08 GMT
EXPOSE 9092/tcp
# Wed, 14 Dec 2016 00:58:09 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Dec 2016 00:58:09 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 14 Dec 2016 00:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 00:58:10 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2976d4d206c5b9ac9fc57facba5fa461b15ccbce76a3cd314a77695608545`  
		Last Modified: Mon, 19 Dec 2016 18:17:22 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a07eef10046a53cf96b5a3b9bfc8b5491e1b3663900562e38a127f8244f11`  
		Last Modified: Mon, 19 Dec 2016 23:34:42 GMT  
		Size: 9.6 MB (9609596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e868426e5c8c194d3bd192f4cfea5b03de7382267ca8da698dead52eb5974de`  
		Last Modified: Mon, 19 Dec 2016 23:34:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab83f3c6eb8116582e74740a3361faabb0e8ba9bf41c9130cefbf261c162310`  
		Last Modified: Mon, 19 Dec 2016 23:34:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1-alpine`

```console
$ docker pull kapacitor@sha256:0ee895788164d9a06fd4ee8ecdad75595cccd8aa9c4ae40bbe77e3247cfe0a24
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8937187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32c77417ca94ed0184b0fff85e0ee2837000434f6f8bf9e8d5c27cd65ae17db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Fri, 02 Dec 2016 20:50:44 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 02 Dec 2016 20:50:52 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 06 Dec 2016 18:26:09 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 06 Dec 2016 18:26:09 GMT
EXPOSE 9092/tcp
# Tue, 06 Dec 2016 18:26:09 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 06 Dec 2016 18:26:10 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 06 Dec 2016 18:26:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Dec 2016 18:26:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05b227730d1d6ba244aa88e9c23a9b32d63b80d6c46679035805a4015a1f0358`  
		Last Modified: Fri, 02 Dec 2016 20:53:03 GMT  
		Size: 6.6 MB (6623785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9756fb518365b0eababb67514fe731f14b62437bd0892890cab1a3cddf36e2`  
		Last Modified: Tue, 06 Dec 2016 18:28:08 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13db1cb1318467230892c05cd18673dff5d85f93418eb0ee82325dcf3c2564a`  
		Last Modified: Tue, 06 Dec 2016 18:28:08 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1.1-alpine`

```console
$ docker pull kapacitor@sha256:0ee895788164d9a06fd4ee8ecdad75595cccd8aa9c4ae40bbe77e3247cfe0a24
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8937187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32c77417ca94ed0184b0fff85e0ee2837000434f6f8bf9e8d5c27cd65ae17db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Fri, 02 Dec 2016 20:50:44 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 02 Dec 2016 20:50:52 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 06 Dec 2016 18:26:09 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 06 Dec 2016 18:26:09 GMT
EXPOSE 9092/tcp
# Tue, 06 Dec 2016 18:26:09 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 06 Dec 2016 18:26:10 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 06 Dec 2016 18:26:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Dec 2016 18:26:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05b227730d1d6ba244aa88e9c23a9b32d63b80d6c46679035805a4015a1f0358`  
		Last Modified: Fri, 02 Dec 2016 20:53:03 GMT  
		Size: 6.6 MB (6623785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9756fb518365b0eababb67514fe731f14b62437bd0892890cab1a3cddf36e2`  
		Last Modified: Tue, 06 Dec 2016 18:28:08 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13db1cb1318467230892c05cd18673dff5d85f93418eb0ee82325dcf3c2564a`  
		Last Modified: Tue, 06 Dec 2016 18:28:08 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:0ee895788164d9a06fd4ee8ecdad75595cccd8aa9c4ae40bbe77e3247cfe0a24
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8937187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32c77417ca94ed0184b0fff85e0ee2837000434f6f8bf9e8d5c27cd65ae17db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Fri, 02 Dec 2016 20:50:44 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 02 Dec 2016 20:50:52 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 06 Dec 2016 18:26:09 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 06 Dec 2016 18:26:09 GMT
EXPOSE 9092/tcp
# Tue, 06 Dec 2016 18:26:09 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 06 Dec 2016 18:26:10 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 06 Dec 2016 18:26:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Dec 2016 18:26:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05b227730d1d6ba244aa88e9c23a9b32d63b80d6c46679035805a4015a1f0358`  
		Last Modified: Fri, 02 Dec 2016 20:53:03 GMT  
		Size: 6.6 MB (6623785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9756fb518365b0eababb67514fe731f14b62437bd0892890cab1a3cddf36e2`  
		Last Modified: Tue, 06 Dec 2016 18:28:08 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13db1cb1318467230892c05cd18673dff5d85f93418eb0ee82325dcf3c2564a`  
		Last Modified: Tue, 06 Dec 2016 18:28:08 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
