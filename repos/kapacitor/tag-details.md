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

## `kapacitor:0.13`

```console
$ docker pull kapacitor@sha256:b6ea0ae809040ab65f2a9837ddeb68e1b52e17b5bcefe2c1381c38fd401e9c1f
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81428182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91717fcf574d9144813cc4fd69e1838eacc71a89690e7f865df27db54f766a61`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:37:22 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 23 Sep 2016 19:48:13 GMT
ENV KAPACITOR_VERSION=0.13.1
# Fri, 23 Sep 2016 19:48:19 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 23 Sep 2016 19:48:19 GMT
EXPOSE 9092/tcp
# Fri, 23 Sep 2016 19:48:20 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Sep 2016 19:48:20 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 23 Sep 2016 19:48:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 19:48:21 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e52e6a870d4ffd1552b1fb68bc795ee167b6bd468371060d483893e2669f7`  
		Last Modified: Fri, 23 Sep 2016 18:37:41 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1169cd64fb5c6ce79f3f8ebcade023b4661985240d8869858d20ac6f129d558f`  
		Last Modified: Fri, 23 Sep 2016 19:48:34 GMT  
		Size: 11.5 MB (11538579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab71620df2f89b08cb0a058fc654b0d0d941e25c2021d7f154436956c499b87f`  
		Last Modified: Fri, 23 Sep 2016 19:48:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13.1`

```console
$ docker pull kapacitor@sha256:b6ea0ae809040ab65f2a9837ddeb68e1b52e17b5bcefe2c1381c38fd401e9c1f
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81428182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91717fcf574d9144813cc4fd69e1838eacc71a89690e7f865df27db54f766a61`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:37:22 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 23 Sep 2016 19:48:13 GMT
ENV KAPACITOR_VERSION=0.13.1
# Fri, 23 Sep 2016 19:48:19 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 23 Sep 2016 19:48:19 GMT
EXPOSE 9092/tcp
# Fri, 23 Sep 2016 19:48:20 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Sep 2016 19:48:20 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 23 Sep 2016 19:48:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 19:48:21 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e52e6a870d4ffd1552b1fb68bc795ee167b6bd468371060d483893e2669f7`  
		Last Modified: Fri, 23 Sep 2016 18:37:41 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1169cd64fb5c6ce79f3f8ebcade023b4661985240d8869858d20ac6f129d558f`  
		Last Modified: Fri, 23 Sep 2016 19:48:34 GMT  
		Size: 11.5 MB (11538579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab71620df2f89b08cb0a058fc654b0d0d941e25c2021d7f154436956c499b87f`  
		Last Modified: Fri, 23 Sep 2016 19:48:30 GMT  
		Size: 229.0 B  
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
$ docker pull kapacitor@sha256:d93faed3d8c0aa9951a159a94443fc9293725f6f2bd5de3b49e0c145806199ef
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80716316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8dce84b823f6282288a663e314e809728d5aec43a50c1901954210729ef088`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:37:22 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Thu, 06 Oct 2016 19:21:24 GMT
ENV KAPACITOR_VERSION=1.0.2
# Thu, 06 Oct 2016 19:21:29 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Thu, 06 Oct 2016 19:21:29 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Thu, 06 Oct 2016 19:21:29 GMT
EXPOSE 9092/tcp
# Thu, 06 Oct 2016 19:21:30 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 06 Oct 2016 19:21:30 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 06 Oct 2016 19:21:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2016 19:21:31 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e52e6a870d4ffd1552b1fb68bc795ee167b6bd468371060d483893e2669f7`  
		Last Modified: Fri, 23 Sep 2016 18:37:41 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04801da1a67c29b1de06c45fa20c7b4c30497d418e4bbe32e08c9de40753680a`  
		Last Modified: Thu, 06 Oct 2016 19:22:35 GMT  
		Size: 10.8 MB (10826496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7650761d9bcb2a2e85b9a8dbf68c156ef966908fe17dcbb8336176f1a05c59d8`  
		Last Modified: Thu, 06 Oct 2016 19:22:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27e8caf4ee5523bba580be37cfd18b504333db59102887ea038d6f164a7d5ed`  
		Last Modified: Thu, 06 Oct 2016 19:22:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.2`

```console
$ docker pull kapacitor@sha256:d93faed3d8c0aa9951a159a94443fc9293725f6f2bd5de3b49e0c145806199ef
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80716316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8dce84b823f6282288a663e314e809728d5aec43a50c1901954210729ef088`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:37:22 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Thu, 06 Oct 2016 19:21:24 GMT
ENV KAPACITOR_VERSION=1.0.2
# Thu, 06 Oct 2016 19:21:29 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Thu, 06 Oct 2016 19:21:29 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Thu, 06 Oct 2016 19:21:29 GMT
EXPOSE 9092/tcp
# Thu, 06 Oct 2016 19:21:30 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 06 Oct 2016 19:21:30 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 06 Oct 2016 19:21:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2016 19:21:31 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e52e6a870d4ffd1552b1fb68bc795ee167b6bd468371060d483893e2669f7`  
		Last Modified: Fri, 23 Sep 2016 18:37:41 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04801da1a67c29b1de06c45fa20c7b4c30497d418e4bbe32e08c9de40753680a`  
		Last Modified: Thu, 06 Oct 2016 19:22:35 GMT  
		Size: 10.8 MB (10826496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7650761d9bcb2a2e85b9a8dbf68c156ef966908fe17dcbb8336176f1a05c59d8`  
		Last Modified: Thu, 06 Oct 2016 19:22:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27e8caf4ee5523bba580be37cfd18b504333db59102887ea038d6f164a7d5ed`  
		Last Modified: Thu, 06 Oct 2016 19:22:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:d93faed3d8c0aa9951a159a94443fc9293725f6f2bd5de3b49e0c145806199ef
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80716316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8dce84b823f6282288a663e314e809728d5aec43a50c1901954210729ef088`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:37:22 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Thu, 06 Oct 2016 19:21:24 GMT
ENV KAPACITOR_VERSION=1.0.2
# Thu, 06 Oct 2016 19:21:29 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Thu, 06 Oct 2016 19:21:29 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Thu, 06 Oct 2016 19:21:29 GMT
EXPOSE 9092/tcp
# Thu, 06 Oct 2016 19:21:30 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 06 Oct 2016 19:21:30 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 06 Oct 2016 19:21:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2016 19:21:31 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e52e6a870d4ffd1552b1fb68bc795ee167b6bd468371060d483893e2669f7`  
		Last Modified: Fri, 23 Sep 2016 18:37:41 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04801da1a67c29b1de06c45fa20c7b4c30497d418e4bbe32e08c9de40753680a`  
		Last Modified: Thu, 06 Oct 2016 19:22:35 GMT  
		Size: 10.8 MB (10826496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7650761d9bcb2a2e85b9a8dbf68c156ef966908fe17dcbb8336176f1a05c59d8`  
		Last Modified: Thu, 06 Oct 2016 19:22:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27e8caf4ee5523bba580be37cfd18b504333db59102887ea038d6f164a7d5ed`  
		Last Modified: Thu, 06 Oct 2016 19:22:31 GMT  
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
