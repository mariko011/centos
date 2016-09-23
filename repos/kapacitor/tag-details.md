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
$ docker pull kapacitor@sha256:a5f8de6dee3f6f1da5d7e40f82df3c81d570f07dd66de7cc423d9489b5a6bb71
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
$ docker pull kapacitor@sha256:a5f8de6dee3f6f1da5d7e40f82df3c81d570f07dd66de7cc423d9489b5a6bb71
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
$ docker pull kapacitor@sha256:17355f4f8cd29e63e59f2b0a50dcda7097261a7bbcad7002eca916c11cd048af
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
$ docker pull kapacitor@sha256:17355f4f8cd29e63e59f2b0a50dcda7097261a7bbcad7002eca916c11cd048af
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
$ docker pull kapacitor@sha256:6c4b2df03f157930f6dbfb38a1a22d4f2d10c0cad9fa9eda07654afcc3808314
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80648772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb3ae72e1144fb909dfe9bf7871157a27a41e57067ba652e7b58040abfb6c9d`
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
# Fri, 23 Sep 2016 19:48:50 GMT
ENV KAPACITOR_VERSION=1.0.0
# Fri, 23 Sep 2016 19:48:55 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 23 Sep 2016 19:48:55 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Fri, 23 Sep 2016 19:48:55 GMT
EXPOSE 9092/tcp
# Fri, 23 Sep 2016 19:48:56 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Sep 2016 19:48:56 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 23 Sep 2016 19:48:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 19:48:57 GMT
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
	-	`sha256:65166aaae4b9332ba4fea87a492d3efc3d1732e06a1a0651ae940f4b8789f26d`  
		Last Modified: Fri, 23 Sep 2016 19:49:09 GMT  
		Size: 10.8 MB (10758951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1265bdd69e8dd0c73aac19db566a8f14557532af445824a1c6a71090c3b2f4`  
		Last Modified: Fri, 23 Sep 2016 19:49:04 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546ec187b66bb84d6a4de73773975c92b5f5dafc33d088dfbe4d6ef43d132a9`  
		Last Modified: Fri, 23 Sep 2016 19:49:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.0`

```console
$ docker pull kapacitor@sha256:6c4b2df03f157930f6dbfb38a1a22d4f2d10c0cad9fa9eda07654afcc3808314
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80648772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb3ae72e1144fb909dfe9bf7871157a27a41e57067ba652e7b58040abfb6c9d`
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
# Fri, 23 Sep 2016 19:48:50 GMT
ENV KAPACITOR_VERSION=1.0.0
# Fri, 23 Sep 2016 19:48:55 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 23 Sep 2016 19:48:55 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Fri, 23 Sep 2016 19:48:55 GMT
EXPOSE 9092/tcp
# Fri, 23 Sep 2016 19:48:56 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Sep 2016 19:48:56 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 23 Sep 2016 19:48:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 19:48:57 GMT
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
	-	`sha256:65166aaae4b9332ba4fea87a492d3efc3d1732e06a1a0651ae940f4b8789f26d`  
		Last Modified: Fri, 23 Sep 2016 19:49:09 GMT  
		Size: 10.8 MB (10758951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1265bdd69e8dd0c73aac19db566a8f14557532af445824a1c6a71090c3b2f4`  
		Last Modified: Fri, 23 Sep 2016 19:49:04 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546ec187b66bb84d6a4de73773975c92b5f5dafc33d088dfbe4d6ef43d132a9`  
		Last Modified: Fri, 23 Sep 2016 19:49:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:6c4b2df03f157930f6dbfb38a1a22d4f2d10c0cad9fa9eda07654afcc3808314
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80648772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb3ae72e1144fb909dfe9bf7871157a27a41e57067ba652e7b58040abfb6c9d`
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
# Fri, 23 Sep 2016 19:48:50 GMT
ENV KAPACITOR_VERSION=1.0.0
# Fri, 23 Sep 2016 19:48:55 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 23 Sep 2016 19:48:55 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Fri, 23 Sep 2016 19:48:55 GMT
EXPOSE 9092/tcp
# Fri, 23 Sep 2016 19:48:56 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Sep 2016 19:48:56 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 23 Sep 2016 19:48:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 19:48:57 GMT
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
	-	`sha256:65166aaae4b9332ba4fea87a492d3efc3d1732e06a1a0651ae940f4b8789f26d`  
		Last Modified: Fri, 23 Sep 2016 19:49:09 GMT  
		Size: 10.8 MB (10758951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1265bdd69e8dd0c73aac19db566a8f14557532af445824a1c6a71090c3b2f4`  
		Last Modified: Fri, 23 Sep 2016 19:49:04 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546ec187b66bb84d6a4de73773975c92b5f5dafc33d088dfbe4d6ef43d132a9`  
		Last Modified: Fri, 23 Sep 2016 19:49:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0-alpine`

```console
$ docker pull kapacitor@sha256:d8e70528268c1e6fb3e2d2e5f053319dd79b7aecf57bfde8f701629e9343d927
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10186523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e264172706cd2e4a4b03e5eb182c132a7975ed2b283b945d82a0cc0d98b0a945`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:08:44 GMT
ENV KAPACITOR_VERSION=1.0.0
# Fri, 23 Sep 2016 17:08:52 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 23 Sep 2016 17:08:53 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Fri, 23 Sep 2016 17:08:53 GMT
EXPOSE 9092/tcp
# Fri, 23 Sep 2016 17:08:53 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Sep 2016 17:08:54 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 23 Sep 2016 17:08:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 17:08:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c80c9f70b53a3e9c09b8514b8e9830805013e404c4b93a96c38c69a96d54`  
		Last Modified: Fri, 23 Sep 2016 17:09:05 GMT  
		Size: 7.9 MB (7873149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2ff98e1e1db0197b29cdd7e543a323cf1fff99cb8319f5f98c5c592bb2587a`  
		Last Modified: Fri, 23 Sep 2016 17:09:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ea75d5962de5715a13dd8fe76b260fb8e7468cd307a7f71fd00ef63ecb107b`  
		Last Modified: Fri, 23 Sep 2016 17:09:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.0-alpine`

```console
$ docker pull kapacitor@sha256:d8e70528268c1e6fb3e2d2e5f053319dd79b7aecf57bfde8f701629e9343d927
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10186523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e264172706cd2e4a4b03e5eb182c132a7975ed2b283b945d82a0cc0d98b0a945`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:08:44 GMT
ENV KAPACITOR_VERSION=1.0.0
# Fri, 23 Sep 2016 17:08:52 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 23 Sep 2016 17:08:53 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Fri, 23 Sep 2016 17:08:53 GMT
EXPOSE 9092/tcp
# Fri, 23 Sep 2016 17:08:53 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Sep 2016 17:08:54 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 23 Sep 2016 17:08:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 17:08:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c80c9f70b53a3e9c09b8514b8e9830805013e404c4b93a96c38c69a96d54`  
		Last Modified: Fri, 23 Sep 2016 17:09:05 GMT  
		Size: 7.9 MB (7873149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2ff98e1e1db0197b29cdd7e543a323cf1fff99cb8319f5f98c5c592bb2587a`  
		Last Modified: Fri, 23 Sep 2016 17:09:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ea75d5962de5715a13dd8fe76b260fb8e7468cd307a7f71fd00ef63ecb107b`  
		Last Modified: Fri, 23 Sep 2016 17:09:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:d8e70528268c1e6fb3e2d2e5f053319dd79b7aecf57bfde8f701629e9343d927
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10186523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e264172706cd2e4a4b03e5eb182c132a7975ed2b283b945d82a0cc0d98b0a945`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:08:44 GMT
ENV KAPACITOR_VERSION=1.0.0
# Fri, 23 Sep 2016 17:08:52 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 23 Sep 2016 17:08:53 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Fri, 23 Sep 2016 17:08:53 GMT
EXPOSE 9092/tcp
# Fri, 23 Sep 2016 17:08:53 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 23 Sep 2016 17:08:54 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 23 Sep 2016 17:08:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 17:08:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c80c9f70b53a3e9c09b8514b8e9830805013e404c4b93a96c38c69a96d54`  
		Last Modified: Fri, 23 Sep 2016 17:09:05 GMT  
		Size: 7.9 MB (7873149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2ff98e1e1db0197b29cdd7e543a323cf1fff99cb8319f5f98c5c592bb2587a`  
		Last Modified: Fri, 23 Sep 2016 17:09:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ea75d5962de5715a13dd8fe76b260fb8e7468cd307a7f71fd00ef63ecb107b`  
		Last Modified: Fri, 23 Sep 2016 17:09:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
