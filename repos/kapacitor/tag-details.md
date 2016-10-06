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
$ docker pull kapacitor@sha256:418c16b6a81e8ac03a70fbb0ccb7861b3d238b28a07c25e5b21b32949bf857d8
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10773193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1609bf2a8e2e0f2303d5b00473f3a8317d671c1937e24bb8fe262ff8932662aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:08:03 GMT
ENV KAPACITOR_VERSION=0.13.1
# Fri, 23 Sep 2016 17:08:13 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 23 Sep 2016 17:08:14 GMT
EXPOSE 9092/tcp
# Fri, 23 Sep 2016 17:08:14 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Sep 2016 17:08:15 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 23 Sep 2016 17:08:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 17:08:15 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b22903c33f4c162c8ba01b99abdb3af4236227b9553a544bee43a7be9f04b33`  
		Last Modified: Fri, 23 Sep 2016 17:08:28 GMT  
		Size: 8.5 MB (8460036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3adb54d5292f1b80b8c4dd5fdc441814d2cd3de9623d7609e017ff101c8685`  
		Last Modified: Fri, 23 Sep 2016 17:08:23 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13.1-alpine`

```console
$ docker pull kapacitor@sha256:418c16b6a81e8ac03a70fbb0ccb7861b3d238b28a07c25e5b21b32949bf857d8
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10773193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1609bf2a8e2e0f2303d5b00473f3a8317d671c1937e24bb8fe262ff8932662aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:08:03 GMT
ENV KAPACITOR_VERSION=0.13.1
# Fri, 23 Sep 2016 17:08:13 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 23 Sep 2016 17:08:14 GMT
EXPOSE 9092/tcp
# Fri, 23 Sep 2016 17:08:14 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Sep 2016 17:08:15 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 23 Sep 2016 17:08:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 17:08:15 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b22903c33f4c162c8ba01b99abdb3af4236227b9553a544bee43a7be9f04b33`  
		Last Modified: Fri, 23 Sep 2016 17:08:28 GMT  
		Size: 8.5 MB (8460036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3adb54d5292f1b80b8c4dd5fdc441814d2cd3de9623d7609e017ff101c8685`  
		Last Modified: Fri, 23 Sep 2016 17:08:23 GMT  
		Size: 227.0 B  
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
$ docker pull kapacitor@sha256:a5fac47067b665c8f5b96a23c92a518c8a675247354dca67bd7241ae0e40efdf
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10232459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed8d078577134bff362dd69c40bb0cdacf9ef290c2dc768a7f9c0465e727b01`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Thu, 06 Oct 2016 19:21:31 GMT
ENV KAPACITOR_VERSION=1.0.2
# Thu, 06 Oct 2016 19:21:43 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2016 19:21:43 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Thu, 06 Oct 2016 19:21:43 GMT
EXPOSE 9092/tcp
# Thu, 06 Oct 2016 19:21:44 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 06 Oct 2016 19:21:44 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Thu, 06 Oct 2016 19:21:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2016 19:21:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499c20020ee3dcd727776414aa7fcd6a3ccbee9435c4f1cd25420f285df2bdbb`  
		Last Modified: Thu, 06 Oct 2016 19:23:17 GMT  
		Size: 7.9 MB (7919085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9b62c60112b6d22f70f9c3b7baf8fa78cd90b096794fff3a28721f1292b2d8`  
		Last Modified: Thu, 06 Oct 2016 19:23:14 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900d980cc339ff58a6830bb236f8910dfcaf35168dca3ce534d40b82ca0c615a`  
		Last Modified: Thu, 06 Oct 2016 19:23:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.2-alpine`

```console
$ docker pull kapacitor@sha256:a5fac47067b665c8f5b96a23c92a518c8a675247354dca67bd7241ae0e40efdf
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10232459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed8d078577134bff362dd69c40bb0cdacf9ef290c2dc768a7f9c0465e727b01`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Thu, 06 Oct 2016 19:21:31 GMT
ENV KAPACITOR_VERSION=1.0.2
# Thu, 06 Oct 2016 19:21:43 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2016 19:21:43 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Thu, 06 Oct 2016 19:21:43 GMT
EXPOSE 9092/tcp
# Thu, 06 Oct 2016 19:21:44 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 06 Oct 2016 19:21:44 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Thu, 06 Oct 2016 19:21:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2016 19:21:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499c20020ee3dcd727776414aa7fcd6a3ccbee9435c4f1cd25420f285df2bdbb`  
		Last Modified: Thu, 06 Oct 2016 19:23:17 GMT  
		Size: 7.9 MB (7919085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9b62c60112b6d22f70f9c3b7baf8fa78cd90b096794fff3a28721f1292b2d8`  
		Last Modified: Thu, 06 Oct 2016 19:23:14 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900d980cc339ff58a6830bb236f8910dfcaf35168dca3ce534d40b82ca0c615a`  
		Last Modified: Thu, 06 Oct 2016 19:23:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:a5fac47067b665c8f5b96a23c92a518c8a675247354dca67bd7241ae0e40efdf
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10232459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed8d078577134bff362dd69c40bb0cdacf9ef290c2dc768a7f9c0465e727b01`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Thu, 06 Oct 2016 19:21:31 GMT
ENV KAPACITOR_VERSION=1.0.2
# Thu, 06 Oct 2016 19:21:43 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2016 19:21:43 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Thu, 06 Oct 2016 19:21:43 GMT
EXPOSE 9092/tcp
# Thu, 06 Oct 2016 19:21:44 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 06 Oct 2016 19:21:44 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Thu, 06 Oct 2016 19:21:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2016 19:21:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499c20020ee3dcd727776414aa7fcd6a3ccbee9435c4f1cd25420f285df2bdbb`  
		Last Modified: Thu, 06 Oct 2016 19:23:17 GMT  
		Size: 7.9 MB (7919085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9b62c60112b6d22f70f9c3b7baf8fa78cd90b096794fff3a28721f1292b2d8`  
		Last Modified: Thu, 06 Oct 2016 19:23:14 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900d980cc339ff58a6830bb236f8910dfcaf35168dca3ce534d40b82ca0c615a`  
		Last Modified: Thu, 06 Oct 2016 19:23:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
