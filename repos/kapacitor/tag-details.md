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
$ docker pull kapacitor@sha256:176add522d8fbffd74e65d00fde5bd73c91b2eeaa2ce14ac74d8e0a9f78e3abc
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80719400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e3ac4bf833a39b625d78faa2308e38e178453508d9d8a4fd1f22e5877d39f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 08 Nov 2016 20:23:46 GMT
ENV KAPACITOR_VERSION=1.0.2
# Tue, 08 Nov 2016 20:23:48 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 08 Nov 2016 20:23:49 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 08 Nov 2016 20:23:49 GMT
EXPOSE 9092/tcp
# Tue, 08 Nov 2016 20:23:50 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 08 Nov 2016 20:23:50 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 08 Nov 2016 20:23:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 20:23:51 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f01375f7e66a9b3fee53c9af8ffbb48889af0ca5c43da66d479d35a02a4988a`  
		Last Modified: Tue, 08 Nov 2016 20:24:07 GMT  
		Size: 10.8 MB (10826744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea377decfbdc8f5e50d0d444f582811e11a5c84143cba5a6c2ffbe38cab5285a`  
		Last Modified: Tue, 08 Nov 2016 20:24:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5623a70d43ea47b0be85265a4fc4ba0a688e7711957d08587801aa96d31e8725`  
		Last Modified: Tue, 08 Nov 2016 20:24:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.2`

```console
$ docker pull kapacitor@sha256:176add522d8fbffd74e65d00fde5bd73c91b2eeaa2ce14ac74d8e0a9f78e3abc
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80719400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e3ac4bf833a39b625d78faa2308e38e178453508d9d8a4fd1f22e5877d39f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 08 Nov 2016 20:23:46 GMT
ENV KAPACITOR_VERSION=1.0.2
# Tue, 08 Nov 2016 20:23:48 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 08 Nov 2016 20:23:49 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 08 Nov 2016 20:23:49 GMT
EXPOSE 9092/tcp
# Tue, 08 Nov 2016 20:23:50 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 08 Nov 2016 20:23:50 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 08 Nov 2016 20:23:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 20:23:51 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f01375f7e66a9b3fee53c9af8ffbb48889af0ca5c43da66d479d35a02a4988a`  
		Last Modified: Tue, 08 Nov 2016 20:24:07 GMT  
		Size: 10.8 MB (10826744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea377decfbdc8f5e50d0d444f582811e11a5c84143cba5a6c2ffbe38cab5285a`  
		Last Modified: Tue, 08 Nov 2016 20:24:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5623a70d43ea47b0be85265a4fc4ba0a688e7711957d08587801aa96d31e8725`  
		Last Modified: Tue, 08 Nov 2016 20:24:03 GMT  
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
$ docker pull kapacitor@sha256:deba0e42e8db29a4ca39447b3391e0b1bb7618f15d134b65044915eadf647c6e
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79502224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee829d2111c8f500a8a6edf49f731886db5ae419ca592dc63f6ec56c00cb995`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 02 Dec 2016 20:50:38 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 02 Dec 2016 20:50:41 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 06 Dec 2016 18:26:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 06 Dec 2016 18:26:06 GMT
EXPOSE 9092/tcp
# Tue, 06 Dec 2016 18:26:06 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 06 Dec 2016 18:26:07 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 06 Dec 2016 18:26:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Dec 2016 18:26:08 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a3b40ca6e0cf115fd7ae2a870d56bc534eaaa5ad5fa4fe3be67c51e39ad7e1`  
		Last Modified: Fri, 02 Dec 2016 20:52:12 GMT  
		Size: 9.6 MB (9609566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c339171213aaed8d7a7964b256e0728feeb22da85ddd93e852ae6ae785be122`  
		Last Modified: Tue, 06 Dec 2016 18:27:21 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2fc1e49890e18161499fd2eb2ef64cad638d153a7e1b994b12e0d2505af3c5`  
		Last Modified: Tue, 06 Dec 2016 18:27:21 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1.1`

```console
$ docker pull kapacitor@sha256:deba0e42e8db29a4ca39447b3391e0b1bb7618f15d134b65044915eadf647c6e
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79502224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee829d2111c8f500a8a6edf49f731886db5ae419ca592dc63f6ec56c00cb995`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 02 Dec 2016 20:50:38 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 02 Dec 2016 20:50:41 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 06 Dec 2016 18:26:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 06 Dec 2016 18:26:06 GMT
EXPOSE 9092/tcp
# Tue, 06 Dec 2016 18:26:06 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 06 Dec 2016 18:26:07 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 06 Dec 2016 18:26:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Dec 2016 18:26:08 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a3b40ca6e0cf115fd7ae2a870d56bc534eaaa5ad5fa4fe3be67c51e39ad7e1`  
		Last Modified: Fri, 02 Dec 2016 20:52:12 GMT  
		Size: 9.6 MB (9609566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c339171213aaed8d7a7964b256e0728feeb22da85ddd93e852ae6ae785be122`  
		Last Modified: Tue, 06 Dec 2016 18:27:21 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2fc1e49890e18161499fd2eb2ef64cad638d153a7e1b994b12e0d2505af3c5`  
		Last Modified: Tue, 06 Dec 2016 18:27:21 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:deba0e42e8db29a4ca39447b3391e0b1bb7618f15d134b65044915eadf647c6e
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79502224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee829d2111c8f500a8a6edf49f731886db5ae419ca592dc63f6ec56c00cb995`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 02 Dec 2016 20:50:38 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 02 Dec 2016 20:50:41 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 06 Dec 2016 18:26:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 06 Dec 2016 18:26:06 GMT
EXPOSE 9092/tcp
# Tue, 06 Dec 2016 18:26:06 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 06 Dec 2016 18:26:07 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 06 Dec 2016 18:26:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Dec 2016 18:26:08 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a3b40ca6e0cf115fd7ae2a870d56bc534eaaa5ad5fa4fe3be67c51e39ad7e1`  
		Last Modified: Fri, 02 Dec 2016 20:52:12 GMT  
		Size: 9.6 MB (9609566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c339171213aaed8d7a7964b256e0728feeb22da85ddd93e852ae6ae785be122`  
		Last Modified: Tue, 06 Dec 2016 18:27:21 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2fc1e49890e18161499fd2eb2ef64cad638d153a7e1b994b12e0d2505af3c5`  
		Last Modified: Tue, 06 Dec 2016 18:27:21 GMT  
		Size: 228.0 B  
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
