<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:0.13`](#kapacitor013)
-	[`kapacitor:0.13.1`](#kapacitor0131)
-	[`kapacitor:0.13-alpine`](#kapacitor013-alpine)
-	[`kapacitor:0.13.1-alpine`](#kapacitor0131-alpine)
-	[`kapacitor:1.0`](#kapacitor10)
-	[`kapacitor:1.0.0`](#kapacitor100)
-	[`kapacitor:latest`](#kapacitorlatest)
-	[`kapacitor:1.0-alpine`](#kapacitor10-alpine)
-	[`kapacitor:1.0.0-alpine`](#kapacitor100-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)

## `kapacitor:0.13`

```console
$ docker pull kapacitor@sha256:a444c45a50c3199dad135db054d917adc2c7eab23411d152fab9c91a517b309c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81440322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059fb2956024d3253ca7807d3c3c2267e1c7f061b837113108d3a347f66cf093`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:18 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 21:58:25 GMT
ENV KAPACITOR_VERSION=0.13.1
# Tue, 30 Aug 2016 21:58:27 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 21:58:27 GMT
EXPOSE 9092/tcp
# Tue, 30 Aug 2016 21:58:27 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 30 Aug 2016 21:58:28 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 30 Aug 2016 21:58:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 21:58:29 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb171ee4d0b36bdbf042b750841ac151b30674348314de3d762aeeaaf3d69bb`  
		Last Modified: Tue, 30 Aug 2016 21:59:05 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5ed146472e8e579e7af06a97bd15f36dc228b945c8822fdcc00e8e81cff14c`  
		Last Modified: Tue, 30 Aug 2016 21:59:35 GMT  
		Size: 11.5 MB (11538808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3df57c64767cad5ce55255f2be9ffbe53f0e453dee7c2249ae81ba10cd4e0`  
		Last Modified: Tue, 30 Aug 2016 21:59:31 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13.1`

```console
$ docker pull kapacitor@sha256:a444c45a50c3199dad135db054d917adc2c7eab23411d152fab9c91a517b309c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81440322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059fb2956024d3253ca7807d3c3c2267e1c7f061b837113108d3a347f66cf093`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:18 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 21:58:25 GMT
ENV KAPACITOR_VERSION=0.13.1
# Tue, 30 Aug 2016 21:58:27 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 21:58:27 GMT
EXPOSE 9092/tcp
# Tue, 30 Aug 2016 21:58:27 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 30 Aug 2016 21:58:28 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 30 Aug 2016 21:58:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 21:58:29 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb171ee4d0b36bdbf042b750841ac151b30674348314de3d762aeeaaf3d69bb`  
		Last Modified: Tue, 30 Aug 2016 21:59:05 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5ed146472e8e579e7af06a97bd15f36dc228b945c8822fdcc00e8e81cff14c`  
		Last Modified: Tue, 30 Aug 2016 21:59:35 GMT  
		Size: 11.5 MB (11538808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3df57c64767cad5ce55255f2be9ffbe53f0e453dee7c2249ae81ba10cd4e0`  
		Last Modified: Tue, 30 Aug 2016 21:59:31 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13-alpine`

```console
$ docker pull kapacitor@sha256:8572d1876a49925a77ae39c461e838936785cb01e9c83f01c013ed6b5fd22329
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a83054ebc75c1a84ddeaeb210804b8affb3e720649fb33ee1598c84d55187adc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 20:11:11 GMT
ENV KAPACITOR_VERSION=0.13.1
# Tue, 30 Aug 2016 20:11:22 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 Aug 2016 20:11:22 GMT
EXPOSE 9092/tcp
# Tue, 30 Aug 2016 20:11:22 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 30 Aug 2016 20:11:23 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 30 Aug 2016 20:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 20:11:23 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5be808679cb374d72c262d49622f9d6f1c3f908ad141e96efe2f12aec6744c6`  
		Last Modified: Tue, 30 Aug 2016 22:00:00 GMT  
		Size: 8.5 MB (8460036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8543f09b52a55de0cc152782defd43003fd74ec716faa9b502903af12cbf76b`  
		Last Modified: Tue, 30 Aug 2016 21:59:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13.1-alpine`

```console
$ docker pull kapacitor@sha256:8572d1876a49925a77ae39c461e838936785cb01e9c83f01c013ed6b5fd22329
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a83054ebc75c1a84ddeaeb210804b8affb3e720649fb33ee1598c84d55187adc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 20:11:11 GMT
ENV KAPACITOR_VERSION=0.13.1
# Tue, 30 Aug 2016 20:11:22 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 Aug 2016 20:11:22 GMT
EXPOSE 9092/tcp
# Tue, 30 Aug 2016 20:11:22 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 30 Aug 2016 20:11:23 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 30 Aug 2016 20:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 20:11:23 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5be808679cb374d72c262d49622f9d6f1c3f908ad141e96efe2f12aec6744c6`  
		Last Modified: Tue, 30 Aug 2016 22:00:00 GMT  
		Size: 8.5 MB (8460036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8543f09b52a55de0cc152782defd43003fd74ec716faa9b502903af12cbf76b`  
		Last Modified: Tue, 30 Aug 2016 21:59:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0`

```console
$ docker pull kapacitor@sha256:9806f89164e35ef9801b2e8508981be823b1572b616dfeb52faf20639ab17431
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80660898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed77085db16a8754b8dcd4bfc76e7383ea9662e002d261404738474bb2f0e47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:18 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 07 Sep 2016 21:48:52 GMT
ENV KAPACITOR_VERSION=1.0.0
# Wed, 07 Sep 2016 21:52:33 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 07 Sep 2016 21:52:34 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Wed, 07 Sep 2016 21:52:34 GMT
EXPOSE 9092/tcp
# Wed, 07 Sep 2016 21:52:34 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 07 Sep 2016 21:52:35 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 07 Sep 2016 21:52:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:52:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb171ee4d0b36bdbf042b750841ac151b30674348314de3d762aeeaaf3d69bb`  
		Last Modified: Tue, 30 Aug 2016 21:59:05 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a4e19e53e177aeed1d86cd209911f7e72b51dab9a4967ae03b39b60f4abce5`  
		Last Modified: Wed, 07 Sep 2016 21:53:29 GMT  
		Size: 10.8 MB (10759163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669704e1a207913fbd073a990fc18d3b228d5d369aa254a325606e2da322bcda`  
		Last Modified: Wed, 07 Sep 2016 21:53:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54993c2a7a14d46c1bbc69cd91f700c8b55bac3d3da98cc356c309e9975600f9`  
		Last Modified: Wed, 07 Sep 2016 21:53:24 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.0`

```console
$ docker pull kapacitor@sha256:9806f89164e35ef9801b2e8508981be823b1572b616dfeb52faf20639ab17431
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80660898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed77085db16a8754b8dcd4bfc76e7383ea9662e002d261404738474bb2f0e47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:18 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 07 Sep 2016 21:48:52 GMT
ENV KAPACITOR_VERSION=1.0.0
# Wed, 07 Sep 2016 21:52:33 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 07 Sep 2016 21:52:34 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Wed, 07 Sep 2016 21:52:34 GMT
EXPOSE 9092/tcp
# Wed, 07 Sep 2016 21:52:34 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 07 Sep 2016 21:52:35 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 07 Sep 2016 21:52:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:52:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb171ee4d0b36bdbf042b750841ac151b30674348314de3d762aeeaaf3d69bb`  
		Last Modified: Tue, 30 Aug 2016 21:59:05 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a4e19e53e177aeed1d86cd209911f7e72b51dab9a4967ae03b39b60f4abce5`  
		Last Modified: Wed, 07 Sep 2016 21:53:29 GMT  
		Size: 10.8 MB (10759163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669704e1a207913fbd073a990fc18d3b228d5d369aa254a325606e2da322bcda`  
		Last Modified: Wed, 07 Sep 2016 21:53:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54993c2a7a14d46c1bbc69cd91f700c8b55bac3d3da98cc356c309e9975600f9`  
		Last Modified: Wed, 07 Sep 2016 21:53:24 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:9806f89164e35ef9801b2e8508981be823b1572b616dfeb52faf20639ab17431
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80660898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed77085db16a8754b8dcd4bfc76e7383ea9662e002d261404738474bb2f0e47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:18 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 07 Sep 2016 21:48:52 GMT
ENV KAPACITOR_VERSION=1.0.0
# Wed, 07 Sep 2016 21:52:33 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 07 Sep 2016 21:52:34 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Wed, 07 Sep 2016 21:52:34 GMT
EXPOSE 9092/tcp
# Wed, 07 Sep 2016 21:52:34 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 07 Sep 2016 21:52:35 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 07 Sep 2016 21:52:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:52:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb171ee4d0b36bdbf042b750841ac151b30674348314de3d762aeeaaf3d69bb`  
		Last Modified: Tue, 30 Aug 2016 21:59:05 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a4e19e53e177aeed1d86cd209911f7e72b51dab9a4967ae03b39b60f4abce5`  
		Last Modified: Wed, 07 Sep 2016 21:53:29 GMT  
		Size: 10.8 MB (10759163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669704e1a207913fbd073a990fc18d3b228d5d369aa254a325606e2da322bcda`  
		Last Modified: Wed, 07 Sep 2016 21:53:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54993c2a7a14d46c1bbc69cd91f700c8b55bac3d3da98cc356c309e9975600f9`  
		Last Modified: Wed, 07 Sep 2016 21:53:24 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0-alpine`

```console
$ docker pull kapacitor@sha256:a8a30b41f161dd4dc9ce98dec1aafef31736bce1ec623a1f7e20ac5854d75508
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10183838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b4e9ec76a6b859ba5845171e7770445a7d32a9967468ed9b309f8927b17b5c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Wed, 07 Sep 2016 21:52:36 GMT
ENV KAPACITOR_VERSION=1.0.0
# Wed, 07 Sep 2016 21:52:46 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Sep 2016 21:52:46 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Wed, 07 Sep 2016 21:52:46 GMT
EXPOSE 9092/tcp
# Wed, 07 Sep 2016 21:52:46 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 07 Sep 2016 21:52:47 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:52:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:52:47 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914da68cc9927c3b9502bd0ab85b75439d54a1fe67c090cb5670db3d213f5fdd`  
		Last Modified: Wed, 07 Sep 2016 21:54:02 GMT  
		Size: 7.9 MB (7873106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af8fb574d3bbdfac7691bd366119ec816f1518a4b42f4dcc95fa5f9abc1676a`  
		Last Modified: Wed, 07 Sep 2016 21:53:58 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3667c65a856423769e9f8e84a79f77cc86d10e09d1ad451cb16d1d715a788cee`  
		Last Modified: Wed, 07 Sep 2016 21:53:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.0-alpine`

```console
$ docker pull kapacitor@sha256:a8a30b41f161dd4dc9ce98dec1aafef31736bce1ec623a1f7e20ac5854d75508
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10183838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b4e9ec76a6b859ba5845171e7770445a7d32a9967468ed9b309f8927b17b5c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Wed, 07 Sep 2016 21:52:36 GMT
ENV KAPACITOR_VERSION=1.0.0
# Wed, 07 Sep 2016 21:52:46 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Sep 2016 21:52:46 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Wed, 07 Sep 2016 21:52:46 GMT
EXPOSE 9092/tcp
# Wed, 07 Sep 2016 21:52:46 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 07 Sep 2016 21:52:47 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:52:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:52:47 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914da68cc9927c3b9502bd0ab85b75439d54a1fe67c090cb5670db3d213f5fdd`  
		Last Modified: Wed, 07 Sep 2016 21:54:02 GMT  
		Size: 7.9 MB (7873106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af8fb574d3bbdfac7691bd366119ec816f1518a4b42f4dcc95fa5f9abc1676a`  
		Last Modified: Wed, 07 Sep 2016 21:53:58 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3667c65a856423769e9f8e84a79f77cc86d10e09d1ad451cb16d1d715a788cee`  
		Last Modified: Wed, 07 Sep 2016 21:53:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:a8a30b41f161dd4dc9ce98dec1aafef31736bce1ec623a1f7e20ac5854d75508
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10183838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b4e9ec76a6b859ba5845171e7770445a7d32a9967468ed9b309f8927b17b5c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Wed, 07 Sep 2016 21:52:36 GMT
ENV KAPACITOR_VERSION=1.0.0
# Wed, 07 Sep 2016 21:52:46 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Sep 2016 21:52:46 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Wed, 07 Sep 2016 21:52:46 GMT
EXPOSE 9092/tcp
# Wed, 07 Sep 2016 21:52:46 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 07 Sep 2016 21:52:47 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:52:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:52:47 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914da68cc9927c3b9502bd0ab85b75439d54a1fe67c090cb5670db3d213f5fdd`  
		Last Modified: Wed, 07 Sep 2016 21:54:02 GMT  
		Size: 7.9 MB (7873106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af8fb574d3bbdfac7691bd366119ec816f1518a4b42f4dcc95fa5f9abc1676a`  
		Last Modified: Wed, 07 Sep 2016 21:53:58 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3667c65a856423769e9f8e84a79f77cc86d10e09d1ad451cb16d1d715a788cee`  
		Last Modified: Wed, 07 Sep 2016 21:53:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
