<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:0.12`](#kapacitor012)
-	[`kapacitor:0.12.0`](#kapacitor0120)
-	[`kapacitor:0.13`](#kapacitor013)
-	[`kapacitor:0.13.1`](#kapacitor0131)
-	[`kapacitor:latest`](#kapacitorlatest)
-	[`kapacitor:0.13-alpine`](#kapacitor013-alpine)
-	[`kapacitor:0.13.1-alpine`](#kapacitor0131-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:1.0.0-rc1`](#kapacitor100-rc1)
-	[`kapacitor:1.0.0-rc1-alpine`](#kapacitor100-rc1-alpine)

## `kapacitor:0.12`

```console
$ docker pull kapacitor@sha256:b36d2c0cedfcaaef5cd66b6db300a9e9828c4c3859da913cf1e31f0a3983ddb9
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.12` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.9 MB (78939163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c3e526249e9f6e7f88bebe5dbcbb9ea01738fc8042983550bbc16a4dc6901a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 29 Jul 2016 17:03:10 GMT
ENV KAPACITOR_VERSION=0.12.0
# Fri, 29 Jul 2016 17:03:15 GMT
RUN wget -q https://s3.amazonaws.com/kapacitor/kapacitor_$KAPACITOR_VERSION-1_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/kapacitor/kapacitor_$KAPACITOR_VERSION-1_amd64.deb &&     gpg --batch --verify kapacitor_$KAPACITOR_VERSION-1_amd64.deb.asc kapacitor_$KAPACITOR_VERSION-1_amd64.deb &&     dpkg -i kapacitor_$KAPACITOR_VERSION-1_amd64.deb &&     rm -f kapacitor_$KAPACITOR_VERSION-1_amd64.deb*
# Fri, 29 Jul 2016 17:03:16 GMT
EXPOSE 9092/tcp
# Fri, 29 Jul 2016 17:03:17 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 29 Jul 2016 17:03:18 GMT
COPY file:adae1beeca45e4399eb335493285d07396d383b34709ac6c39cfb38867a47849 in /entrypoint.sh
# Fri, 29 Jul 2016 17:03:18 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 17:03:19 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29f2fd1d5b59bca4e74fd78afeb7b2e063e3fd89bf33bdf5487b5146275e46b`  
		Last Modified: Thu, 28 Jul 2016 22:14:58 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9fa7a46d1c038368aa8d1ee40380d09acbb37fe41f50cc284c18a0264ce09f`  
		Last Modified: Fri, 29 Jul 2016 17:03:32 GMT  
		Size: 9.0 MB (9039422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef61346a4e22f3d1f9d1b1a1a24652d05c52ebe5f6db181dc337683231784b5`  
		Last Modified: Fri, 29 Jul 2016 17:03:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.12.0`

```console
$ docker pull kapacitor@sha256:b36d2c0cedfcaaef5cd66b6db300a9e9828c4c3859da913cf1e31f0a3983ddb9
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.12.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.9 MB (78939163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c3e526249e9f6e7f88bebe5dbcbb9ea01738fc8042983550bbc16a4dc6901a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 29 Jul 2016 17:03:10 GMT
ENV KAPACITOR_VERSION=0.12.0
# Fri, 29 Jul 2016 17:03:15 GMT
RUN wget -q https://s3.amazonaws.com/kapacitor/kapacitor_$KAPACITOR_VERSION-1_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/kapacitor/kapacitor_$KAPACITOR_VERSION-1_amd64.deb &&     gpg --batch --verify kapacitor_$KAPACITOR_VERSION-1_amd64.deb.asc kapacitor_$KAPACITOR_VERSION-1_amd64.deb &&     dpkg -i kapacitor_$KAPACITOR_VERSION-1_amd64.deb &&     rm -f kapacitor_$KAPACITOR_VERSION-1_amd64.deb*
# Fri, 29 Jul 2016 17:03:16 GMT
EXPOSE 9092/tcp
# Fri, 29 Jul 2016 17:03:17 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 29 Jul 2016 17:03:18 GMT
COPY file:adae1beeca45e4399eb335493285d07396d383b34709ac6c39cfb38867a47849 in /entrypoint.sh
# Fri, 29 Jul 2016 17:03:18 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 17:03:19 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29f2fd1d5b59bca4e74fd78afeb7b2e063e3fd89bf33bdf5487b5146275e46b`  
		Last Modified: Thu, 28 Jul 2016 22:14:58 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9fa7a46d1c038368aa8d1ee40380d09acbb37fe41f50cc284c18a0264ce09f`  
		Last Modified: Fri, 29 Jul 2016 17:03:32 GMT  
		Size: 9.0 MB (9039422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef61346a4e22f3d1f9d1b1a1a24652d05c52ebe5f6db181dc337683231784b5`  
		Last Modified: Fri, 29 Jul 2016 17:03:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13`

```console
$ docker pull kapacitor@sha256:e1f1c561354d1f0f3cb571b28d0cd6032d4acb8ed2c7fbe22872afc7646c29b3
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81438264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9cfd0ee15cd9b63ab43c0942ab5938bab846736bc1e0bee80bf59a704201fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 29 Jul 2016 17:04:21 GMT
ENV KAPACITOR_VERSION=0.13.1
# Fri, 29 Jul 2016 17:04:28 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 29 Jul 2016 17:04:28 GMT
EXPOSE 9092/tcp
# Fri, 29 Jul 2016 17:04:29 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 29 Jul 2016 17:04:30 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh
# Fri, 29 Jul 2016 17:04:31 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 17:04:31 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29f2fd1d5b59bca4e74fd78afeb7b2e063e3fd89bf33bdf5487b5146275e46b`  
		Last Modified: Thu, 28 Jul 2016 22:14:58 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04937c33b0d585d4f8528b54fd1214348855da7a2906cfc54da38187c22f056`  
		Last Modified: Fri, 29 Jul 2016 17:04:45 GMT  
		Size: 11.5 MB (11538692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb92bdff5d7bb53ee551ef76e1a89b94be1d071d1ee8d95e3f3e9f042857d17`  
		Last Modified: Fri, 29 Jul 2016 17:04:40 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13.1`

```console
$ docker pull kapacitor@sha256:e1f1c561354d1f0f3cb571b28d0cd6032d4acb8ed2c7fbe22872afc7646c29b3
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81438264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9cfd0ee15cd9b63ab43c0942ab5938bab846736bc1e0bee80bf59a704201fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 29 Jul 2016 17:04:21 GMT
ENV KAPACITOR_VERSION=0.13.1
# Fri, 29 Jul 2016 17:04:28 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 29 Jul 2016 17:04:28 GMT
EXPOSE 9092/tcp
# Fri, 29 Jul 2016 17:04:29 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 29 Jul 2016 17:04:30 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh
# Fri, 29 Jul 2016 17:04:31 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 17:04:31 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29f2fd1d5b59bca4e74fd78afeb7b2e063e3fd89bf33bdf5487b5146275e46b`  
		Last Modified: Thu, 28 Jul 2016 22:14:58 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04937c33b0d585d4f8528b54fd1214348855da7a2906cfc54da38187c22f056`  
		Last Modified: Fri, 29 Jul 2016 17:04:45 GMT  
		Size: 11.5 MB (11538692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb92bdff5d7bb53ee551ef76e1a89b94be1d071d1ee8d95e3f3e9f042857d17`  
		Last Modified: Fri, 29 Jul 2016 17:04:40 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:e1f1c561354d1f0f3cb571b28d0cd6032d4acb8ed2c7fbe22872afc7646c29b3
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81438264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9cfd0ee15cd9b63ab43c0942ab5938bab846736bc1e0bee80bf59a704201fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 29 Jul 2016 17:04:21 GMT
ENV KAPACITOR_VERSION=0.13.1
# Fri, 29 Jul 2016 17:04:28 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 29 Jul 2016 17:04:28 GMT
EXPOSE 9092/tcp
# Fri, 29 Jul 2016 17:04:29 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 29 Jul 2016 17:04:30 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh
# Fri, 29 Jul 2016 17:04:31 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 17:04:31 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29f2fd1d5b59bca4e74fd78afeb7b2e063e3fd89bf33bdf5487b5146275e46b`  
		Last Modified: Thu, 28 Jul 2016 22:14:58 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04937c33b0d585d4f8528b54fd1214348855da7a2906cfc54da38187c22f056`  
		Last Modified: Fri, 29 Jul 2016 17:04:45 GMT  
		Size: 11.5 MB (11538692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb92bdff5d7bb53ee551ef76e1a89b94be1d071d1ee8d95e3f3e9f042857d17`  
		Last Modified: Fri, 29 Jul 2016 17:04:40 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13-alpine`

```console
$ docker pull kapacitor@sha256:1583e2a68f60c0a11cd8cf31cc72b6dc07c950872d98f3a7893388ef197e7236
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e48335e3bd5ecec0900fa4682c005e0ceb089f821d0f33fc54bf004ea53dbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:40:39 GMT
ENV KAPACITOR_VERSION=0.13.1
# Thu, 23 Jun 2016 20:40:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 23 Jun 2016 20:40:59 GMT
EXPOSE 9092/tcp
# Thu, 23 Jun 2016 20:40:59 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 23 Jun 2016 20:41:00 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh
# Thu, 23 Jun 2016 20:41:01 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 23 Jun 2016 20:41:02 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69dc4f1b496df5841fcb25dd474938776e6f41d5ec81cc5bd0e0559fc1d3196`  
		Last Modified: Thu, 23 Jun 2016 20:41:16 GMT  
		Size: 8.5 MB (8460050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf71979dca177a1cab0df82aebfb52f1a577799f23e4695a2e2ec87f2f3f682`  
		Last Modified: Thu, 23 Jun 2016 20:41:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:0.13.1-alpine`

```console
$ docker pull kapacitor@sha256:1583e2a68f60c0a11cd8cf31cc72b6dc07c950872d98f3a7893388ef197e7236
```

-	Platforms:
	-	linux; amd64

### `kapacitor:0.13.1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e48335e3bd5ecec0900fa4682c005e0ceb089f821d0f33fc54bf004ea53dbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:40:39 GMT
ENV KAPACITOR_VERSION=0.13.1
# Thu, 23 Jun 2016 20:40:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 23 Jun 2016 20:40:59 GMT
EXPOSE 9092/tcp
# Thu, 23 Jun 2016 20:40:59 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 23 Jun 2016 20:41:00 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh
# Thu, 23 Jun 2016 20:41:01 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 23 Jun 2016 20:41:02 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69dc4f1b496df5841fcb25dd474938776e6f41d5ec81cc5bd0e0559fc1d3196`  
		Last Modified: Thu, 23 Jun 2016 20:41:16 GMT  
		Size: 8.5 MB (8460050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf71979dca177a1cab0df82aebfb52f1a577799f23e4695a2e2ec87f2f3f682`  
		Last Modified: Thu, 23 Jun 2016 20:41:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:1583e2a68f60c0a11cd8cf31cc72b6dc07c950872d98f3a7893388ef197e7236
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e48335e3bd5ecec0900fa4682c005e0ceb089f821d0f33fc54bf004ea53dbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:40:39 GMT
ENV KAPACITOR_VERSION=0.13.1
# Thu, 23 Jun 2016 20:40:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 23 Jun 2016 20:40:59 GMT
EXPOSE 9092/tcp
# Thu, 23 Jun 2016 20:40:59 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 23 Jun 2016 20:41:00 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh
# Thu, 23 Jun 2016 20:41:01 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 23 Jun 2016 20:41:02 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69dc4f1b496df5841fcb25dd474938776e6f41d5ec81cc5bd0e0559fc1d3196`  
		Last Modified: Thu, 23 Jun 2016 20:41:16 GMT  
		Size: 8.5 MB (8460050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf71979dca177a1cab0df82aebfb52f1a577799f23e4695a2e2ec87f2f3f682`  
		Last Modified: Thu, 23 Jun 2016 20:41:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.0-rc1`

```console
$ docker pull kapacitor@sha256:5757aa6e89ccdcd8c410ab1d211618b917780875b34696b490a450ddd4abd135
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.0-rc1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81956818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5937d9c80d994dd1703d1fc0e4175efb4e7150b7206cebed21616a6065bd40`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Thu, 25 Aug 2016 19:34:32 GMT
ENV KAPACITOR_VERSION=1.0.0~rc1
# Thu, 25 Aug 2016 19:34:41 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Thu, 25 Aug 2016 19:34:42 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf
# Thu, 25 Aug 2016 19:34:43 GMT
EXPOSE 9092/tcp
# Thu, 25 Aug 2016 19:34:44 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 25 Aug 2016 19:34:46 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh
# Thu, 25 Aug 2016 19:34:47 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 25 Aug 2016 19:34:48 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29f2fd1d5b59bca4e74fd78afeb7b2e063e3fd89bf33bdf5487b5146275e46b`  
		Last Modified: Thu, 28 Jul 2016 22:14:58 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e5705882a0300f9c9c3ad5439f2c219d6d692f7d7aa55c6bc364c59232d04`  
		Last Modified: Thu, 25 Aug 2016 19:37:32 GMT  
		Size: 12.1 MB (12057027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85219554e3a606cb8f5fdc7e9f31fb49dac5faf5f67daf3689f00c49be77b571`  
		Last Modified: Thu, 25 Aug 2016 19:37:26 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed434e9bccf7b68a3c52fab77e8c9efa46c3c60959697794fede7adf978b9e5`  
		Last Modified: Thu, 25 Aug 2016 19:37:25 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.0-rc1-alpine`

```console
$ docker pull kapacitor@sha256:e0d459e1c71c1ccdbc1cf9e2e09ed718baf4cd9d8620f5b91c5734eefc1d35ce
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.0-rc1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11150609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a951469a1c11dabd25c0bed76296eb4c61da2766ecbf727f53e78eaa38f31f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 25 Aug 2016 19:34:49 GMT
ENV KAPACITOR_VERSION=1.0.0~rc1
# Thu, 25 Aug 2016 19:35:06 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 25 Aug 2016 19:35:08 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf
# Thu, 25 Aug 2016 19:35:09 GMT
EXPOSE 9092/tcp
# Thu, 25 Aug 2016 19:35:10 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 25 Aug 2016 19:35:11 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh
# Thu, 25 Aug 2016 19:35:12 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 25 Aug 2016 19:35:13 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f1d733aa8c8852ded10d1e7ffdc3af0e8b9e3189a64f152454f4e661e83de8`  
		Last Modified: Thu, 25 Aug 2016 19:37:59 GMT  
		Size: 8.8 MB (8839877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625c33e086eca83009c3961d36569cd6edd11716740a13e19fcd7cfce3713193`  
		Last Modified: Thu, 25 Aug 2016 19:37:52 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31322c9c2ae9748ef8c4369757261eee907fc1840a39a4a3cfd7a93e6ac5874`  
		Last Modified: Thu, 25 Aug 2016 19:37:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
