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
$ docker pull kapacitor@sha256:3f8824ec0c2ca73b76318306aa3ebc9dca77efee053c16225bb9112ac102f267
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10771330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9145037dea9803be0d2a50e265ad395e801e04319805b658f545c3b6e978d174`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:27:03 GMT
ENV KAPACITOR_VERSION=0.13.1
# Tue, 20 Sep 2016 00:27:16 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:27:16 GMT
EXPOSE 9092/tcp
# Tue, 20 Sep 2016 00:27:17 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 20 Sep 2016 00:27:17 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:27:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:27:18 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8649aeb71ce478d4e751effc7d6f8fd26d8f3773e89da7c865a39e339ba5faaf`  
		Last Modified: Tue, 20 Sep 2016 00:27:33 GMT  
		Size: 8.5 MB (8460051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a86e6983797788308882a8385589037ea1e6cdb84d1c1956aa0e95a6b92e089`  
		Last Modified: Tue, 20 Sep 2016 00:27:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13.1-alpine`

```console
$ docker pull kapacitor@sha256:3f8824ec0c2ca73b76318306aa3ebc9dca77efee053c16225bb9112ac102f267
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10771330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9145037dea9803be0d2a50e265ad395e801e04319805b658f545c3b6e978d174`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:27:03 GMT
ENV KAPACITOR_VERSION=0.13.1
# Tue, 20 Sep 2016 00:27:16 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:27:16 GMT
EXPOSE 9092/tcp
# Tue, 20 Sep 2016 00:27:17 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 20 Sep 2016 00:27:17 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:27:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:27:18 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8649aeb71ce478d4e751effc7d6f8fd26d8f3773e89da7c865a39e339ba5faaf`  
		Last Modified: Tue, 20 Sep 2016 00:27:33 GMT  
		Size: 8.5 MB (8460051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a86e6983797788308882a8385589037ea1e6cdb84d1c1956aa0e95a6b92e089`  
		Last Modified: Tue, 20 Sep 2016 00:27:29 GMT  
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
$ docker pull kapacitor@sha256:0a89279dbe0da0d5dbfeb2bffebcfe085189f7ca953a68c63b52038ae7dabead
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10184644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d6dbeb39e771eed4b7da3905ecbd00011a0cfc5fabdabdcb961f2f9543530f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:27:52 GMT
ENV KAPACITOR_VERSION=1.0.0
# Tue, 20 Sep 2016 00:28:02 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:28:03 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 20 Sep 2016 00:28:04 GMT
EXPOSE 9092/tcp
# Tue, 20 Sep 2016 00:28:04 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 20 Sep 2016 00:28:05 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:28:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:28:05 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab98bed6b78b06a314db360c379bd460cab0505f6578b2c3bd477391e3f483a`  
		Last Modified: Tue, 20 Sep 2016 00:28:18 GMT  
		Size: 7.9 MB (7873146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eeaf7e9f3ab8ff00ded41d185b8328e8b3c9774625e11c7af07d7d76418c552`  
		Last Modified: Tue, 20 Sep 2016 00:28:13 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52088b01f98a707ddc49fe620a1337a04ef3655ff68d8caa96ef9b558264de35`  
		Last Modified: Tue, 20 Sep 2016 00:28:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.0-alpine`

```console
$ docker pull kapacitor@sha256:0a89279dbe0da0d5dbfeb2bffebcfe085189f7ca953a68c63b52038ae7dabead
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10184644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d6dbeb39e771eed4b7da3905ecbd00011a0cfc5fabdabdcb961f2f9543530f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:27:52 GMT
ENV KAPACITOR_VERSION=1.0.0
# Tue, 20 Sep 2016 00:28:02 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:28:03 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 20 Sep 2016 00:28:04 GMT
EXPOSE 9092/tcp
# Tue, 20 Sep 2016 00:28:04 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 20 Sep 2016 00:28:05 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:28:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:28:05 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab98bed6b78b06a314db360c379bd460cab0505f6578b2c3bd477391e3f483a`  
		Last Modified: Tue, 20 Sep 2016 00:28:18 GMT  
		Size: 7.9 MB (7873146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eeaf7e9f3ab8ff00ded41d185b8328e8b3c9774625e11c7af07d7d76418c552`  
		Last Modified: Tue, 20 Sep 2016 00:28:13 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52088b01f98a707ddc49fe620a1337a04ef3655ff68d8caa96ef9b558264de35`  
		Last Modified: Tue, 20 Sep 2016 00:28:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:0a89279dbe0da0d5dbfeb2bffebcfe085189f7ca953a68c63b52038ae7dabead
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10184644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d6dbeb39e771eed4b7da3905ecbd00011a0cfc5fabdabdcb961f2f9543530f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:27:52 GMT
ENV KAPACITOR_VERSION=1.0.0
# Tue, 20 Sep 2016 00:28:02 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:28:03 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 20 Sep 2016 00:28:04 GMT
EXPOSE 9092/tcp
# Tue, 20 Sep 2016 00:28:04 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 20 Sep 2016 00:28:05 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:28:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:28:05 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab98bed6b78b06a314db360c379bd460cab0505f6578b2c3bd477391e3f483a`  
		Last Modified: Tue, 20 Sep 2016 00:28:18 GMT  
		Size: 7.9 MB (7873146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eeaf7e9f3ab8ff00ded41d185b8328e8b3c9774625e11c7af07d7d76418c552`  
		Last Modified: Tue, 20 Sep 2016 00:28:13 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52088b01f98a707ddc49fe620a1337a04ef3655ff68d8caa96ef9b558264de35`  
		Last Modified: Tue, 20 Sep 2016 00:28:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
