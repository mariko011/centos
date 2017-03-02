<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.1`](#kapacitor11)
-	[`kapacitor:1.1.1`](#kapacitor111)
-	[`kapacitor:1.1-alpine`](#kapacitor11-alpine)
-	[`kapacitor:1.1.1-alpine`](#kapacitor111-alpine)
-	[`kapacitor:1.2`](#kapacitor12)
-	[`kapacitor:1.2.0`](#kapacitor120)
-	[`kapacitor:latest`](#kapacitorlatest)
-	[`kapacitor:1.2-alpine`](#kapacitor12-alpine)
-	[`kapacitor:1.2.0-alpine`](#kapacitor120-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)

## `kapacitor:1.1`

```console
$ docker pull kapacitor@sha256:b86245a3192fb96c54ef935f8dc27b371a9488b550434e557ea9e1c6723d80c3
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79516118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff379d2ed7491b0197978405f70ebd770d59f05561d500d960a80625b3a14d51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 28 Feb 2017 05:47:12 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 28 Feb 2017 05:47:32 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 05:47:33 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 28 Feb 2017 05:47:33 GMT
EXPOSE 9092/tcp
# Tue, 28 Feb 2017 05:47:34 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 28 Feb 2017 05:47:34 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 28 Feb 2017 05:47:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 05:47:36 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e626acaafea13b2f222d1d8740c50aefbcef69487f85067aa9d9d078291d25`  
		Last Modified: Thu, 02 Mar 2017 01:17:49 GMT  
		Size: 9.6 MB (9609545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d905f52915e592b7016af89e7279ddc21281bf6723d7ac834273318ff51121e`  
		Last Modified: Thu, 02 Mar 2017 01:17:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64419678305ca825b92dbc0ef0e82d52e2cd08343c93f9a38b7ef2dc0ab9e972`  
		Last Modified: Thu, 02 Mar 2017 01:17:46 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1.1`

```console
$ docker pull kapacitor@sha256:b86245a3192fb96c54ef935f8dc27b371a9488b550434e557ea9e1c6723d80c3
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79516118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff379d2ed7491b0197978405f70ebd770d59f05561d500d960a80625b3a14d51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 28 Feb 2017 05:47:12 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 28 Feb 2017 05:47:32 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 05:47:33 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 28 Feb 2017 05:47:33 GMT
EXPOSE 9092/tcp
# Tue, 28 Feb 2017 05:47:34 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 28 Feb 2017 05:47:34 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 28 Feb 2017 05:47:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 05:47:36 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e626acaafea13b2f222d1d8740c50aefbcef69487f85067aa9d9d078291d25`  
		Last Modified: Thu, 02 Mar 2017 01:17:49 GMT  
		Size: 9.6 MB (9609545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d905f52915e592b7016af89e7279ddc21281bf6723d7ac834273318ff51121e`  
		Last Modified: Thu, 02 Mar 2017 01:17:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64419678305ca825b92dbc0ef0e82d52e2cd08343c93f9a38b7ef2dc0ab9e972`  
		Last Modified: Thu, 02 Mar 2017 01:17:46 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1-alpine`

```console
$ docker pull kapacitor@sha256:8baef7c5ef8058853937b255d4a053a18a3dc089aabd4964cf60d0577efb4cd9
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8525609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c72cde0253390aa8e3ee0d2cc0ae64c20d430df3a287737afa569ae123c352`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:14:13 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 13 Jan 2017 20:14:21 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:14:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 13 Jan 2017 20:14:23 GMT
EXPOSE 9092/tcp
# Fri, 13 Jan 2017 20:14:23 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 13 Jan 2017 20:14:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 13 Jan 2017 20:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:14:24 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336482b7efa0c72fada04887f9076ac9acb0a3bc99c503df8d076964b0be4ddc`  
		Last Modified: Fri, 13 Jan 2017 20:16:33 GMT  
		Size: 6.6 MB (6623094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d18ad50acf1cfb57581a9cb43dffda6085d5c7123507de436afed1a018d3cd2`  
		Last Modified: Fri, 13 Jan 2017 20:16:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d62746455930b8904814b7b5da7965cf1e9c3be9784f8912792c942da5ef3b1`  
		Last Modified: Fri, 13 Jan 2017 20:16:32 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1.1-alpine`

```console
$ docker pull kapacitor@sha256:8baef7c5ef8058853937b255d4a053a18a3dc089aabd4964cf60d0577efb4cd9
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8525609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c72cde0253390aa8e3ee0d2cc0ae64c20d430df3a287737afa569ae123c352`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:14:13 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 13 Jan 2017 20:14:21 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:14:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 13 Jan 2017 20:14:23 GMT
EXPOSE 9092/tcp
# Fri, 13 Jan 2017 20:14:23 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 13 Jan 2017 20:14:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 13 Jan 2017 20:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:14:24 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336482b7efa0c72fada04887f9076ac9acb0a3bc99c503df8d076964b0be4ddc`  
		Last Modified: Fri, 13 Jan 2017 20:16:33 GMT  
		Size: 6.6 MB (6623094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d18ad50acf1cfb57581a9cb43dffda6085d5c7123507de436afed1a018d3cd2`  
		Last Modified: Fri, 13 Jan 2017 20:16:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d62746455930b8904814b7b5da7965cf1e9c3be9784f8912792c942da5ef3b1`  
		Last Modified: Fri, 13 Jan 2017 20:16:32 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2`

```console
$ docker pull kapacitor@sha256:f4715ce7fdea0d263cd7cfe463563f12c1169b03beb7a03be2d3ed40911ac6b5
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79979605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12a6d4406cdbcec012af88ddf6addc761b682ca1c4f961970e534a5566d2123`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 28 Feb 2017 05:47:36 GMT
ENV KAPACITOR_VERSION=1.2.0
# Tue, 28 Feb 2017 05:48:19 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 05:48:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 28 Feb 2017 05:48:20 GMT
EXPOSE 9092/tcp
# Tue, 28 Feb 2017 05:48:21 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 28 Feb 2017 05:48:21 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 28 Feb 2017 05:48:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 05:48:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b86efb40a83f0c243bca8e4b2596ba23d1b97c80eec801a840da05b8ba085b`  
		Last Modified: Thu, 02 Mar 2017 01:18:32 GMT  
		Size: 10.1 MB (10073029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2aca9042a758a654036111207b85124516af90f2c8a0441173dad79a013bb2`  
		Last Modified: Thu, 02 Mar 2017 01:18:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e651ba922f4098217b934a53581d579d5fa1f8ee2d0d33868757ce9174aee8`  
		Last Modified: Thu, 02 Mar 2017 01:18:28 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.0`

```console
$ docker pull kapacitor@sha256:f4715ce7fdea0d263cd7cfe463563f12c1169b03beb7a03be2d3ed40911ac6b5
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79979605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12a6d4406cdbcec012af88ddf6addc761b682ca1c4f961970e534a5566d2123`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 28 Feb 2017 05:47:36 GMT
ENV KAPACITOR_VERSION=1.2.0
# Tue, 28 Feb 2017 05:48:19 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 05:48:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 28 Feb 2017 05:48:20 GMT
EXPOSE 9092/tcp
# Tue, 28 Feb 2017 05:48:21 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 28 Feb 2017 05:48:21 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 28 Feb 2017 05:48:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 05:48:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b86efb40a83f0c243bca8e4b2596ba23d1b97c80eec801a840da05b8ba085b`  
		Last Modified: Thu, 02 Mar 2017 01:18:32 GMT  
		Size: 10.1 MB (10073029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2aca9042a758a654036111207b85124516af90f2c8a0441173dad79a013bb2`  
		Last Modified: Thu, 02 Mar 2017 01:18:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e651ba922f4098217b934a53581d579d5fa1f8ee2d0d33868757ce9174aee8`  
		Last Modified: Thu, 02 Mar 2017 01:18:28 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:f4715ce7fdea0d263cd7cfe463563f12c1169b03beb7a03be2d3ed40911ac6b5
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79979605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12a6d4406cdbcec012af88ddf6addc761b682ca1c4f961970e534a5566d2123`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 28 Feb 2017 05:47:36 GMT
ENV KAPACITOR_VERSION=1.2.0
# Tue, 28 Feb 2017 05:48:19 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 05:48:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 28 Feb 2017 05:48:20 GMT
EXPOSE 9092/tcp
# Tue, 28 Feb 2017 05:48:21 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 28 Feb 2017 05:48:21 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 28 Feb 2017 05:48:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 05:48:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b86efb40a83f0c243bca8e4b2596ba23d1b97c80eec801a840da05b8ba085b`  
		Last Modified: Thu, 02 Mar 2017 01:18:32 GMT  
		Size: 10.1 MB (10073029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2aca9042a758a654036111207b85124516af90f2c8a0441173dad79a013bb2`  
		Last Modified: Thu, 02 Mar 2017 01:18:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e651ba922f4098217b934a53581d579d5fa1f8ee2d0d33868757ce9174aee8`  
		Last Modified: Thu, 02 Mar 2017 01:18:28 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2-alpine`

```console
$ docker pull kapacitor@sha256:cbae3e5175e814bc5508d37b852f82b6ec265513549b0c2d321fdef230bb4822
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8858867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d017a20ec26eb75d85e78215200f7ecbf87563961829094fee6e9c09358322`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 24 Jan 2017 17:39:56 GMT
ENV KAPACITOR_VERSION=1.2.0
# Tue, 24 Jan 2017 17:40:05 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 24 Jan 2017 17:40:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 24 Jan 2017 17:40:06 GMT
EXPOSE 9092/tcp
# Tue, 24 Jan 2017 17:40:06 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 24 Jan 2017 17:40:07 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:40:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:40:08 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd707a4eb93c6dcde53522570ea501c7e6d7d4420121ead9a82f9d747c31030a`  
		Last Modified: Tue, 24 Jan 2017 17:42:18 GMT  
		Size: 7.0 MB (6956353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2200c6e32f6e2af9426a10835f8aea1cb27f636babd45238122b0220676e94b1`  
		Last Modified: Tue, 24 Jan 2017 17:42:15 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c964e0668524b02c25773df80593a8da72e8afb55c4ecb755c5821c32a26daac`  
		Last Modified: Tue, 24 Jan 2017 17:42:15 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.0-alpine`

```console
$ docker pull kapacitor@sha256:cbae3e5175e814bc5508d37b852f82b6ec265513549b0c2d321fdef230bb4822
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8858867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d017a20ec26eb75d85e78215200f7ecbf87563961829094fee6e9c09358322`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 24 Jan 2017 17:39:56 GMT
ENV KAPACITOR_VERSION=1.2.0
# Tue, 24 Jan 2017 17:40:05 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 24 Jan 2017 17:40:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 24 Jan 2017 17:40:06 GMT
EXPOSE 9092/tcp
# Tue, 24 Jan 2017 17:40:06 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 24 Jan 2017 17:40:07 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:40:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:40:08 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd707a4eb93c6dcde53522570ea501c7e6d7d4420121ead9a82f9d747c31030a`  
		Last Modified: Tue, 24 Jan 2017 17:42:18 GMT  
		Size: 7.0 MB (6956353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2200c6e32f6e2af9426a10835f8aea1cb27f636babd45238122b0220676e94b1`  
		Last Modified: Tue, 24 Jan 2017 17:42:15 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c964e0668524b02c25773df80593a8da72e8afb55c4ecb755c5821c32a26daac`  
		Last Modified: Tue, 24 Jan 2017 17:42:15 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:cbae3e5175e814bc5508d37b852f82b6ec265513549b0c2d321fdef230bb4822
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8858867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d017a20ec26eb75d85e78215200f7ecbf87563961829094fee6e9c09358322`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 24 Jan 2017 17:39:56 GMT
ENV KAPACITOR_VERSION=1.2.0
# Tue, 24 Jan 2017 17:40:05 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 24 Jan 2017 17:40:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 24 Jan 2017 17:40:06 GMT
EXPOSE 9092/tcp
# Tue, 24 Jan 2017 17:40:06 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 24 Jan 2017 17:40:07 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:40:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:40:08 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd707a4eb93c6dcde53522570ea501c7e6d7d4420121ead9a82f9d747c31030a`  
		Last Modified: Tue, 24 Jan 2017 17:42:18 GMT  
		Size: 7.0 MB (6956353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2200c6e32f6e2af9426a10835f8aea1cb27f636babd45238122b0220676e94b1`  
		Last Modified: Tue, 24 Jan 2017 17:42:15 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c964e0668524b02c25773df80593a8da72e8afb55c4ecb755c5821c32a26daac`  
		Last Modified: Tue, 24 Jan 2017 17:42:15 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
