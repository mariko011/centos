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
$ docker pull kapacitor@sha256:0ba69cb9dceb92caa59bb4137908537a9e1afc9c1f920a8e7bc4d7f571fef7bf
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10232627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1270ed1e5d1f5c8786df5093470f6f5f23daba2c2f9bb239a38e4ee39e0dd10f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:16:17 GMT
ENV KAPACITOR_VERSION=1.0.2
# Tue, 27 Dec 2016 19:16:25 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:16:25 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 27 Dec 2016 19:16:26 GMT
EXPOSE 9092/tcp
# Tue, 27 Dec 2016 19:16:26 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Dec 2016 19:16:27 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:16:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:16:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1b77cbdff18699401a1b21d0058e77324c2d5a8692f49392860c786187a358`  
		Last Modified: Tue, 27 Dec 2016 19:20:13 GMT  
		Size: 7.9 MB (7919093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548c84a7d255004943effc44af85ffbebd877ac626c64c4904cde1fbc75d5506`  
		Last Modified: Tue, 27 Dec 2016 19:20:07 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a06f23076ef480f357f6cd796c7c09fe1256ad37aded3917b49560145c49a5`  
		Last Modified: Tue, 27 Dec 2016 19:20:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.2-alpine`

```console
$ docker pull kapacitor@sha256:0ba69cb9dceb92caa59bb4137908537a9e1afc9c1f920a8e7bc4d7f571fef7bf
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10232627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1270ed1e5d1f5c8786df5093470f6f5f23daba2c2f9bb239a38e4ee39e0dd10f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:16:17 GMT
ENV KAPACITOR_VERSION=1.0.2
# Tue, 27 Dec 2016 19:16:25 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:16:25 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 27 Dec 2016 19:16:26 GMT
EXPOSE 9092/tcp
# Tue, 27 Dec 2016 19:16:26 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Dec 2016 19:16:27 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:16:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:16:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1b77cbdff18699401a1b21d0058e77324c2d5a8692f49392860c786187a358`  
		Last Modified: Tue, 27 Dec 2016 19:20:13 GMT  
		Size: 7.9 MB (7919093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548c84a7d255004943effc44af85ffbebd877ac626c64c4904cde1fbc75d5506`  
		Last Modified: Tue, 27 Dec 2016 19:20:07 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a06f23076ef480f357f6cd796c7c09fe1256ad37aded3917b49560145c49a5`  
		Last Modified: Tue, 27 Dec 2016 19:20:07 GMT  
		Size: 225.0 B  
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
$ docker pull kapacitor@sha256:9f8bfdec40fe558a5ad70558e8df86637da5d0cb18a57bb10c0165d8a1bfad6d
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8937279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0611c744ed2f710fdf8533d1d247db745ff7842f2031ea5178e6b0ff407b3e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:16:29 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 27 Dec 2016 19:16:36 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:16:46 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 27 Dec 2016 19:16:46 GMT
EXPOSE 9092/tcp
# Tue, 27 Dec 2016 19:16:46 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Dec 2016 19:16:47 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:16:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:16:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a6692e522ab1db29c13dd4abb7b997db0ca5ba69fb56266f301ece471f88e7`  
		Last Modified: Tue, 27 Dec 2016 19:20:58 GMT  
		Size: 6.6 MB (6623738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16d8e243b5da1c300ec41160b56bae76247ea04802efc529b531fbc085d4989`  
		Last Modified: Tue, 27 Dec 2016 19:20:53 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f84b546f03c435815edc11b843a117409080f9a2e2b0bc64eab65e32ceae5e`  
		Last Modified: Tue, 27 Dec 2016 19:20:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1.1-alpine`

```console
$ docker pull kapacitor@sha256:9f8bfdec40fe558a5ad70558e8df86637da5d0cb18a57bb10c0165d8a1bfad6d
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8937279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0611c744ed2f710fdf8533d1d247db745ff7842f2031ea5178e6b0ff407b3e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:16:29 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 27 Dec 2016 19:16:36 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:16:46 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 27 Dec 2016 19:16:46 GMT
EXPOSE 9092/tcp
# Tue, 27 Dec 2016 19:16:46 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Dec 2016 19:16:47 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:16:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:16:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a6692e522ab1db29c13dd4abb7b997db0ca5ba69fb56266f301ece471f88e7`  
		Last Modified: Tue, 27 Dec 2016 19:20:58 GMT  
		Size: 6.6 MB (6623738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16d8e243b5da1c300ec41160b56bae76247ea04802efc529b531fbc085d4989`  
		Last Modified: Tue, 27 Dec 2016 19:20:53 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f84b546f03c435815edc11b843a117409080f9a2e2b0bc64eab65e32ceae5e`  
		Last Modified: Tue, 27 Dec 2016 19:20:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:9f8bfdec40fe558a5ad70558e8df86637da5d0cb18a57bb10c0165d8a1bfad6d
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8937279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0611c744ed2f710fdf8533d1d247db745ff7842f2031ea5178e6b0ff407b3e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:16:29 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 27 Dec 2016 19:16:36 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:16:46 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 27 Dec 2016 19:16:46 GMT
EXPOSE 9092/tcp
# Tue, 27 Dec 2016 19:16:46 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Dec 2016 19:16:47 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:16:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:16:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a6692e522ab1db29c13dd4abb7b997db0ca5ba69fb56266f301ece471f88e7`  
		Last Modified: Tue, 27 Dec 2016 19:20:58 GMT  
		Size: 6.6 MB (6623738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16d8e243b5da1c300ec41160b56bae76247ea04802efc529b531fbc085d4989`  
		Last Modified: Tue, 27 Dec 2016 19:20:53 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f84b546f03c435815edc11b843a117409080f9a2e2b0bc64eab65e32ceae5e`  
		Last Modified: Tue, 27 Dec 2016 19:20:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
