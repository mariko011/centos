<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:0.13`](#kapacitor013)
-	[`kapacitor:0.13.1`](#kapacitor0131)
-	[`kapacitor:0.13-alpine`](#kapacitor013-alpine)
-	[`kapacitor:0.13.1-alpine`](#kapacitor0131-alpine)
-	[`kapacitor:1.0`](#kapacitor10)
-	[`kapacitor:1.0.2`](#kapacitor102)
-	[`kapacitor:latest`](#kapacitorlatest)
-	[`kapacitor:1.0-alpine`](#kapacitor10-alpine)
-	[`kapacitor:1.0.2-alpine`](#kapacitor102-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:1.1.0-rc1`](#kapacitor110-rc1)
-	[`kapacitor:1.1.0-rc1-alpine`](#kapacitor110-rc1-alpine)

## `kapacitor:0.13`

```console
$ docker pull kapacitor@sha256:dc63c536fe5e154f4d94e6403d9e86b59104a2ce97318340907c3574a8c7e9d1
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81426829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257c845da4ce1da749ad8eaec511ae3972ffedac36c2a19509ced777d4f6efb7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:58 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 21 Oct 2016 20:23:08 GMT
ENV KAPACITOR_VERSION=0.13.1
# Fri, 21 Oct 2016 20:23:13 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 21 Oct 2016 20:23:13 GMT
EXPOSE 9092/tcp
# Fri, 21 Oct 2016 20:23:14 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 21 Oct 2016 20:23:14 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 21 Oct 2016 20:23:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 20:23:15 GMT
CMD ["kapacitord"]
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
	-	`sha256:c62decc277d773b90336fa9d57c24992b628cdaf0d331c40f07ebe7b46ee492e`  
		Last Modified: Fri, 21 Oct 2016 20:23:29 GMT  
		Size: 11.5 MB (11538590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37125ceb1d8d4946b3b4aaea1505f3d2daf6e8219a761f6abce8ab9149ece5d1`  
		Last Modified: Fri, 21 Oct 2016 20:23:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13.1`

```console
$ docker pull kapacitor@sha256:dc63c536fe5e154f4d94e6403d9e86b59104a2ce97318340907c3574a8c7e9d1
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81426829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257c845da4ce1da749ad8eaec511ae3972ffedac36c2a19509ced777d4f6efb7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:58 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 21 Oct 2016 20:23:08 GMT
ENV KAPACITOR_VERSION=0.13.1
# Fri, 21 Oct 2016 20:23:13 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 21 Oct 2016 20:23:13 GMT
EXPOSE 9092/tcp
# Fri, 21 Oct 2016 20:23:14 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 21 Oct 2016 20:23:14 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 21 Oct 2016 20:23:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 20:23:15 GMT
CMD ["kapacitord"]
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
	-	`sha256:c62decc277d773b90336fa9d57c24992b628cdaf0d331c40f07ebe7b46ee492e`  
		Last Modified: Fri, 21 Oct 2016 20:23:29 GMT  
		Size: 11.5 MB (11538590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37125ceb1d8d4946b3b4aaea1505f3d2daf6e8219a761f6abce8ab9149ece5d1`  
		Last Modified: Fri, 21 Oct 2016 20:23:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13-alpine`

```console
$ docker pull kapacitor@sha256:2f6eadef1f993a678e662f2fa69c656255cdf0672479799376ae7cc3b96bf1df
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10773228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65ea1dd012141523b3c274c34ad04b5962f77995a043b18ef6f336b82dae0580`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:38:28 GMT
ENV KAPACITOR_VERSION=0.13.1
# Tue, 18 Oct 2016 23:38:38 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Oct 2016 23:38:41 GMT
EXPOSE 9092/tcp
# Tue, 18 Oct 2016 23:38:42 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 18 Oct 2016 23:38:42 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:38:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:38:43 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4531afb6e55ddb7dac517401bd23e5f7a55d0b841198a13e8eacaca99028fc`  
		Last Modified: Tue, 18 Oct 2016 23:38:55 GMT  
		Size: 8.5 MB (8460044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52befbb8761a55c8ff701a098c5253fb5b162d177a02a37fe039fd7e02e88c`  
		Last Modified: Tue, 18 Oct 2016 23:38:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13.1-alpine`

```console
$ docker pull kapacitor@sha256:2f6eadef1f993a678e662f2fa69c656255cdf0672479799376ae7cc3b96bf1df
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10773228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65ea1dd012141523b3c274c34ad04b5962f77995a043b18ef6f336b82dae0580`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:38:28 GMT
ENV KAPACITOR_VERSION=0.13.1
# Tue, 18 Oct 2016 23:38:38 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Oct 2016 23:38:41 GMT
EXPOSE 9092/tcp
# Tue, 18 Oct 2016 23:38:42 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 18 Oct 2016 23:38:42 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:38:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:38:43 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4531afb6e55ddb7dac517401bd23e5f7a55d0b841198a13e8eacaca99028fc`  
		Last Modified: Tue, 18 Oct 2016 23:38:55 GMT  
		Size: 8.5 MB (8460044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52befbb8761a55c8ff701a098c5253fb5b162d177a02a37fe039fd7e02e88c`  
		Last Modified: Tue, 18 Oct 2016 23:38:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0`

```console
$ docker pull kapacitor@sha256:50776f5a1c70ae08a6ec86324df7d2e06c2121e7bc790485b62aa0f5e22b9bba
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80714933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d19abac1419e724552a647777a173c4053524baca92dc116b7203ff2d69b4c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:58 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 21 Oct 2016 20:23:48 GMT
ENV KAPACITOR_VERSION=1.0.2
# Fri, 21 Oct 2016 20:23:53 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 21 Oct 2016 20:23:54 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Fri, 21 Oct 2016 20:23:54 GMT
EXPOSE 9092/tcp
# Fri, 21 Oct 2016 20:23:54 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 21 Oct 2016 20:23:55 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 21 Oct 2016 20:23:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 20:23:56 GMT
CMD ["kapacitord"]
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
	-	`sha256:6f7c2bfa7e0859c2ecfe010cfbed6174cdc345fa8820450c334b4c12231d5937`  
		Last Modified: Fri, 21 Oct 2016 20:24:09 GMT  
		Size: 10.8 MB (10826476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daae2d4cc9e6024142ab97f21da6afb0b903d4bb44143667b5acd3715e04fc9f`  
		Last Modified: Fri, 21 Oct 2016 20:24:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274049b9406262ceab03df0d29f6ee9df3b6d81a8d1a1067c4a3aebee38c4ace`  
		Last Modified: Fri, 21 Oct 2016 20:24:05 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.2`

```console
$ docker pull kapacitor@sha256:50776f5a1c70ae08a6ec86324df7d2e06c2121e7bc790485b62aa0f5e22b9bba
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80714933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d19abac1419e724552a647777a173c4053524baca92dc116b7203ff2d69b4c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:58 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 21 Oct 2016 20:23:48 GMT
ENV KAPACITOR_VERSION=1.0.2
# Fri, 21 Oct 2016 20:23:53 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 21 Oct 2016 20:23:54 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Fri, 21 Oct 2016 20:23:54 GMT
EXPOSE 9092/tcp
# Fri, 21 Oct 2016 20:23:54 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 21 Oct 2016 20:23:55 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 21 Oct 2016 20:23:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 20:23:56 GMT
CMD ["kapacitord"]
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
	-	`sha256:6f7c2bfa7e0859c2ecfe010cfbed6174cdc345fa8820450c334b4c12231d5937`  
		Last Modified: Fri, 21 Oct 2016 20:24:09 GMT  
		Size: 10.8 MB (10826476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daae2d4cc9e6024142ab97f21da6afb0b903d4bb44143667b5acd3715e04fc9f`  
		Last Modified: Fri, 21 Oct 2016 20:24:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274049b9406262ceab03df0d29f6ee9df3b6d81a8d1a1067c4a3aebee38c4ace`  
		Last Modified: Fri, 21 Oct 2016 20:24:05 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:50776f5a1c70ae08a6ec86324df7d2e06c2121e7bc790485b62aa0f5e22b9bba
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80714933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d19abac1419e724552a647777a173c4053524baca92dc116b7203ff2d69b4c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:58 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 21 Oct 2016 20:23:48 GMT
ENV KAPACITOR_VERSION=1.0.2
# Fri, 21 Oct 2016 20:23:53 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 21 Oct 2016 20:23:54 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Fri, 21 Oct 2016 20:23:54 GMT
EXPOSE 9092/tcp
# Fri, 21 Oct 2016 20:23:54 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 21 Oct 2016 20:23:55 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 21 Oct 2016 20:23:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 20:23:56 GMT
CMD ["kapacitord"]
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
	-	`sha256:6f7c2bfa7e0859c2ecfe010cfbed6174cdc345fa8820450c334b4c12231d5937`  
		Last Modified: Fri, 21 Oct 2016 20:24:09 GMT  
		Size: 10.8 MB (10826476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daae2d4cc9e6024142ab97f21da6afb0b903d4bb44143667b5acd3715e04fc9f`  
		Last Modified: Fri, 21 Oct 2016 20:24:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274049b9406262ceab03df0d29f6ee9df3b6d81a8d1a1067c4a3aebee38c4ace`  
		Last Modified: Fri, 21 Oct 2016 20:24:05 GMT  
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

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:df0b92cd3aff28d6539b5650461e22a192891664d35cda6a8bb2198d7dcaa965
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

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

## `kapacitor:1.1.0-rc1`

```console
$ docker pull kapacitor@sha256:5944cb0c46971a40a5392e6f78bae426887040517c190f0803415af35f8b473e
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.0-rc1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79483371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d86a7547433c662caec83a36033377ca2a58b0089d500b823f3fa99df756de`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:58 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 01 Nov 2016 17:48:17 GMT
ENV KAPACITOR_VERSION=1.1.0~rc1
# Tue, 01 Nov 2016 17:48:22 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 01 Nov 2016 17:48:29 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 01 Nov 2016 17:48:30 GMT
EXPOSE 9092/tcp
# Tue, 01 Nov 2016 17:48:30 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 01 Nov 2016 17:48:31 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 01 Nov 2016 17:48:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 17:48:31 GMT
CMD ["kapacitord"]
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
	-	`sha256:a18d96107697ae627d0d853dffbeafbc2fb26d6a033f180a1396cb69959f46e2`  
		Last Modified: Tue, 01 Nov 2016 17:51:14 GMT  
		Size: 9.6 MB (9594914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3487eca9ef17bbb48c97c9e442f461d51209ae0eeb7c82348f8c70b59957e7ed`  
		Last Modified: Tue, 01 Nov 2016 17:51:09 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7533ee59336768484ca92c0edfddb9aebba67022fa553298e8dc5e58fe36a3d3`  
		Last Modified: Tue, 01 Nov 2016 17:51:09 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1.0-rc1-alpine`

```console
$ docker pull kapacitor@sha256:b4ada70c0ed2805fec532045669cd98caced55254351fb8705e2767b53188502
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.0-rc1-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8926981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f0e5cc049590cffe668d3676297dd9a0a12784806bbd8b753bf0abe994a5958`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 01 Nov 2016 17:48:32 GMT
ENV KAPACITOR_VERSION=1.1.0~rc1
# Tue, 01 Nov 2016 17:48:41 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 01 Nov 2016 17:48:42 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 01 Nov 2016 17:48:42 GMT
EXPOSE 9092/tcp
# Tue, 01 Nov 2016 17:48:42 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 01 Nov 2016 17:48:43 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 01 Nov 2016 17:48:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 17:48:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35be954743a92694ba3c0f7b0ffe267c9241eaf4a8fb7ae9bd792b49e9827f`  
		Last Modified: Tue, 01 Nov 2016 17:51:34 GMT  
		Size: 6.6 MB (6613578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efe832dcacd4ed14c839704b4445e8a5fb3e97239409dd6ba92987e7506ec3d`  
		Last Modified: Tue, 01 Nov 2016 17:51:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34159606968f9dfbba2bb28095bc8404532b500a6daecf144a067e5a5b13fdc5`  
		Last Modified: Tue, 01 Nov 2016 17:51:31 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
