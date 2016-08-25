<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `influxdb`

-	[`influxdb:0.12`](#influxdb012)
-	[`influxdb:0.12.2`](#influxdb0122)
-	[`influxdb:0.13`](#influxdb013)
-	[`influxdb:0.13.0`](#influxdb0130)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:0.13-alpine`](#influxdb013-alpine)
-	[`influxdb:0.13.0-alpine`](#influxdb0130-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:1.0.0-rc1`](#influxdb100-rc1)
-	[`influxdb:1.0.0-rc1-alpine`](#influxdb100-rc1-alpine)

## `influxdb:0.12`

```console
$ docker pull influxdb@sha256:c7ca1b192967a2a59665b94a39fa4b48add597a95c44549c942261fa4d18b633
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.12` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84571897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb212dd9198341d01c49f6d00265956f12079f5f9599a563f8ab27bf4338b53`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 29 Jul 2016 04:28:16 GMT
ENV INFLUXDB_VERSION=0.12.2
# Fri, 29 Jul 2016 04:28:21 GMT
RUN wget -q https://s3.amazonaws.com/influxdb/influxdb_$INFLUXDB_VERSION-1_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/influxdb/influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     gpg --batch --verify influxdb_$INFLUXDB_VERSION-1_amd64.deb.asc influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     dpkg -i influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     rm -f influxdb_$INFLUXDB_VERSION-1_amd64.deb*
# Fri, 29 Jul 2016 04:28:22 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf
# Fri, 29 Jul 2016 04:28:23 GMT
EXPOSE 8083/tcp 8086/tcp
# Fri, 29 Jul 2016 04:28:24 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Jul 2016 04:28:25 GMT
COPY file:922a826f6063efc5079d9a5638b49bc5dd43860c8245351b750a74e5a126763d in /entrypoint.sh
# Fri, 29 Jul 2016 04:28:25 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 04:28:26 GMT
CMD ["influxd"]
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
	-	`sha256:c2d624634ebb0a516c1340544ef045696750b05364dc07274b6e30244821b1ef`  
		Last Modified: Fri, 29 Jul 2016 04:28:40 GMT  
		Size: 14.7 MB (14671997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add185fcd8a0964a8d09b2fb1f034b96b8fee570435bbf5201f6b3b5bd61eaa9`  
		Last Modified: Fri, 29 Jul 2016 04:28:34 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5a89676344c70f1fa516049d8e0664cfc64a1d04800c220431f3bc2fb34c81`  
		Last Modified: Fri, 29 Jul 2016 04:28:34 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.12.2`

```console
$ docker pull influxdb@sha256:c7ca1b192967a2a59665b94a39fa4b48add597a95c44549c942261fa4d18b633
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.12.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84571897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb212dd9198341d01c49f6d00265956f12079f5f9599a563f8ab27bf4338b53`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 29 Jul 2016 04:28:16 GMT
ENV INFLUXDB_VERSION=0.12.2
# Fri, 29 Jul 2016 04:28:21 GMT
RUN wget -q https://s3.amazonaws.com/influxdb/influxdb_$INFLUXDB_VERSION-1_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/influxdb/influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     gpg --batch --verify influxdb_$INFLUXDB_VERSION-1_amd64.deb.asc influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     dpkg -i influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     rm -f influxdb_$INFLUXDB_VERSION-1_amd64.deb*
# Fri, 29 Jul 2016 04:28:22 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf
# Fri, 29 Jul 2016 04:28:23 GMT
EXPOSE 8083/tcp 8086/tcp
# Fri, 29 Jul 2016 04:28:24 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Jul 2016 04:28:25 GMT
COPY file:922a826f6063efc5079d9a5638b49bc5dd43860c8245351b750a74e5a126763d in /entrypoint.sh
# Fri, 29 Jul 2016 04:28:25 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 04:28:26 GMT
CMD ["influxd"]
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
	-	`sha256:c2d624634ebb0a516c1340544ef045696750b05364dc07274b6e30244821b1ef`  
		Last Modified: Fri, 29 Jul 2016 04:28:40 GMT  
		Size: 14.7 MB (14671997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add185fcd8a0964a8d09b2fb1f034b96b8fee570435bbf5201f6b3b5bd61eaa9`  
		Last Modified: Fri, 29 Jul 2016 04:28:34 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5a89676344c70f1fa516049d8e0664cfc64a1d04800c220431f3bc2fb34c81`  
		Last Modified: Fri, 29 Jul 2016 04:28:34 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13`

```console
$ docker pull influxdb@sha256:b7de7aefd2b297e734bc2178dc6c3ab5cba712524936d9059fac46c14b95d67e
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88048407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9832da8416cff45d0097f879334fd5e32b5329e751975b43009324e617b6f4ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 29 Jul 2016 04:29:31 GMT
ENV INFLUXDB_VERSION=0.13.0
# Fri, 29 Jul 2016 04:29:35 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 29 Jul 2016 04:29:36 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf
# Fri, 29 Jul 2016 04:29:37 GMT
EXPOSE 8083/tcp 8086/tcp
# Fri, 29 Jul 2016 04:29:38 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Jul 2016 04:29:39 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh
# Fri, 29 Jul 2016 04:29:40 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 04:29:40 GMT
CMD ["influxd"]
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
	-	`sha256:df9cb83a5fedbbdcfd76fc21ef9161469b7ed2f13beeee4ab1ac2b1bffd7739c`  
		Last Modified: Fri, 29 Jul 2016 04:29:56 GMT  
		Size: 18.1 MB (18148641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab29acac86ed69994efc6c53aab3d095a25d02d35c5fdb7ff7f879c2264a61c`  
		Last Modified: Fri, 29 Jul 2016 04:29:49 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dad7b73f976f27d3e82705ae3a936dc4734f9a56ae23ce5b0fffeb7066d6ec`  
		Last Modified: Fri, 29 Jul 2016 04:29:49 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13.0`

```console
$ docker pull influxdb@sha256:b7de7aefd2b297e734bc2178dc6c3ab5cba712524936d9059fac46c14b95d67e
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88048407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9832da8416cff45d0097f879334fd5e32b5329e751975b43009324e617b6f4ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 29 Jul 2016 04:29:31 GMT
ENV INFLUXDB_VERSION=0.13.0
# Fri, 29 Jul 2016 04:29:35 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 29 Jul 2016 04:29:36 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf
# Fri, 29 Jul 2016 04:29:37 GMT
EXPOSE 8083/tcp 8086/tcp
# Fri, 29 Jul 2016 04:29:38 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Jul 2016 04:29:39 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh
# Fri, 29 Jul 2016 04:29:40 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 04:29:40 GMT
CMD ["influxd"]
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
	-	`sha256:df9cb83a5fedbbdcfd76fc21ef9161469b7ed2f13beeee4ab1ac2b1bffd7739c`  
		Last Modified: Fri, 29 Jul 2016 04:29:56 GMT  
		Size: 18.1 MB (18148641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab29acac86ed69994efc6c53aab3d095a25d02d35c5fdb7ff7f879c2264a61c`  
		Last Modified: Fri, 29 Jul 2016 04:29:49 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dad7b73f976f27d3e82705ae3a936dc4734f9a56ae23ce5b0fffeb7066d6ec`  
		Last Modified: Fri, 29 Jul 2016 04:29:49 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:b7de7aefd2b297e734bc2178dc6c3ab5cba712524936d9059fac46c14b95d67e
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88048407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9832da8416cff45d0097f879334fd5e32b5329e751975b43009324e617b6f4ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 29 Jul 2016 04:29:31 GMT
ENV INFLUXDB_VERSION=0.13.0
# Fri, 29 Jul 2016 04:29:35 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 29 Jul 2016 04:29:36 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf
# Fri, 29 Jul 2016 04:29:37 GMT
EXPOSE 8083/tcp 8086/tcp
# Fri, 29 Jul 2016 04:29:38 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Jul 2016 04:29:39 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh
# Fri, 29 Jul 2016 04:29:40 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 04:29:40 GMT
CMD ["influxd"]
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
	-	`sha256:df9cb83a5fedbbdcfd76fc21ef9161469b7ed2f13beeee4ab1ac2b1bffd7739c`  
		Last Modified: Fri, 29 Jul 2016 04:29:56 GMT  
		Size: 18.1 MB (18148641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab29acac86ed69994efc6c53aab3d095a25d02d35c5fdb7ff7f879c2264a61c`  
		Last Modified: Fri, 29 Jul 2016 04:29:49 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dad7b73f976f27d3e82705ae3a936dc4734f9a56ae23ce5b0fffeb7066d6ec`  
		Last Modified: Fri, 29 Jul 2016 04:29:49 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13-alpine`

```console
$ docker pull influxdb@sha256:1dfedc970ebdb0f733c833034628e06929d15207cdcf6ed3e920fb51afeade7b
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15838548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c654250866dd9bae4ef468e1d960bd07caae0e309975c30c35302d77e1f9496`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:33:04 GMT
ENV INFLUXDB_VERSION=0.13.0
# Thu, 23 Jun 2016 20:33:23 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 23 Jun 2016 20:33:24 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf
# Thu, 23 Jun 2016 20:33:25 GMT
EXPOSE 8083/tcp 8086/tcp
# Thu, 23 Jun 2016 20:33:25 GMT
VOLUME [/var/lib/influxdb]
# Thu, 23 Jun 2016 20:33:26 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh
# Thu, 23 Jun 2016 20:33:27 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 23 Jun 2016 20:33:28 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66227c0772b40ce242981ca3b869f573f7a470987fdae25f83eaf6d3622ea618`  
		Last Modified: Thu, 23 Jun 2016 20:33:44 GMT  
		Size: 13.5 MB (13527841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921f1775cf6ee585028fb1a48dffc41fd698b03b3e2588ca344043a7a1d4140b`  
		Last Modified: Thu, 23 Jun 2016 20:33:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ea6649d85f1fe074e41e64ddd6ae3f340fe814ac992c5de4ebad7df77eb805`  
		Last Modified: Thu, 23 Jun 2016 20:33:36 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13.0-alpine`

```console
$ docker pull influxdb@sha256:1dfedc970ebdb0f733c833034628e06929d15207cdcf6ed3e920fb51afeade7b
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13.0-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15838548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c654250866dd9bae4ef468e1d960bd07caae0e309975c30c35302d77e1f9496`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:33:04 GMT
ENV INFLUXDB_VERSION=0.13.0
# Thu, 23 Jun 2016 20:33:23 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 23 Jun 2016 20:33:24 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf
# Thu, 23 Jun 2016 20:33:25 GMT
EXPOSE 8083/tcp 8086/tcp
# Thu, 23 Jun 2016 20:33:25 GMT
VOLUME [/var/lib/influxdb]
# Thu, 23 Jun 2016 20:33:26 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh
# Thu, 23 Jun 2016 20:33:27 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 23 Jun 2016 20:33:28 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66227c0772b40ce242981ca3b869f573f7a470987fdae25f83eaf6d3622ea618`  
		Last Modified: Thu, 23 Jun 2016 20:33:44 GMT  
		Size: 13.5 MB (13527841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921f1775cf6ee585028fb1a48dffc41fd698b03b3e2588ca344043a7a1d4140b`  
		Last Modified: Thu, 23 Jun 2016 20:33:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ea6649d85f1fe074e41e64ddd6ae3f340fe814ac992c5de4ebad7df77eb805`  
		Last Modified: Thu, 23 Jun 2016 20:33:36 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:1dfedc970ebdb0f733c833034628e06929d15207cdcf6ed3e920fb51afeade7b
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15838548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c654250866dd9bae4ef468e1d960bd07caae0e309975c30c35302d77e1f9496`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:33:04 GMT
ENV INFLUXDB_VERSION=0.13.0
# Thu, 23 Jun 2016 20:33:23 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 23 Jun 2016 20:33:24 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf
# Thu, 23 Jun 2016 20:33:25 GMT
EXPOSE 8083/tcp 8086/tcp
# Thu, 23 Jun 2016 20:33:25 GMT
VOLUME [/var/lib/influxdb]
# Thu, 23 Jun 2016 20:33:26 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh
# Thu, 23 Jun 2016 20:33:27 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 23 Jun 2016 20:33:28 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66227c0772b40ce242981ca3b869f573f7a470987fdae25f83eaf6d3622ea618`  
		Last Modified: Thu, 23 Jun 2016 20:33:44 GMT  
		Size: 13.5 MB (13527841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921f1775cf6ee585028fb1a48dffc41fd698b03b3e2588ca344043a7a1d4140b`  
		Last Modified: Thu, 23 Jun 2016 20:33:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ea6649d85f1fe074e41e64ddd6ae3f340fe814ac992c5de4ebad7df77eb805`  
		Last Modified: Thu, 23 Jun 2016 20:33:36 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.0-rc1`

```console
$ docker pull influxdb@sha256:a18f58f9f10bc3f6aa919c79588ebf17c92c3e9e42e916618e3e8d127497f543
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.0-rc1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87670202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bb0898d578f05cb7b974bf0fdec88c51da14e79f381c2503d19681bd02093d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 22:14:37 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Thu, 25 Aug 2016 19:30:44 GMT
ENV INFLUXDB_VERSION=1.0.0~rc1
# Thu, 25 Aug 2016 19:30:52 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 25 Aug 2016 19:30:53 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf
# Thu, 25 Aug 2016 19:30:54 GMT
EXPOSE 8086/tcp
# Thu, 25 Aug 2016 19:30:55 GMT
VOLUME [/var/lib/influxdb]
# Thu, 25 Aug 2016 19:30:56 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh
# Thu, 25 Aug 2016 19:30:57 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 25 Aug 2016 19:30:58 GMT
CMD ["influxd"]
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
	-	`sha256:98157604bce7a8c9a6259bdcb6ef0f0fefb522361aea7131ef277a6589cca4a9`  
		Last Modified: Thu, 25 Aug 2016 19:33:51 GMT  
		Size: 17.8 MB (17770439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5affd5ff3a8ec1ca595311997c3ff5d1ff3c5c2720d0d2a7fd82d69feebcfc9d`  
		Last Modified: Thu, 25 Aug 2016 19:33:40 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b78b661afa84c4d1c780f50877e94bda87ca7e68bb631a5887d64f091be951d`  
		Last Modified: Thu, 25 Aug 2016 19:33:41 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.0-rc1-alpine`

```console
$ docker pull influxdb@sha256:cbfbdab781e1bd8ace74332780203f9ce337e6a0c6526524ebd9b3874fb8e233
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.0-rc1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15575424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:920afa280dee619600bf488696ab1f2bf9cd137ef9c3f22d18aba26141624622`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 25 Aug 2016 19:30:59 GMT
ENV INFLUXDB_VERSION=1.0.0~rc1
# Thu, 25 Aug 2016 19:31:14 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 25 Aug 2016 19:31:16 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf
# Thu, 25 Aug 2016 19:31:16 GMT
EXPOSE 8083/tcp 8086/tcp
# Thu, 25 Aug 2016 19:31:17 GMT
VOLUME [/var/lib/influxdb]
# Thu, 25 Aug 2016 19:31:18 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh
# Thu, 25 Aug 2016 19:31:19 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 25 Aug 2016 19:31:20 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3ce0613a9a83cbf9e91bb9cdd00dd5e169d14965d0a1091e317708994f95f4`  
		Last Modified: Thu, 25 Aug 2016 19:34:22 GMT  
		Size: 13.3 MB (13264715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf78a72492feb76ea80c0b4bf79b1093ef6cabf1de4a2db16f483f46a3b8550`  
		Last Modified: Thu, 25 Aug 2016 19:34:14 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc022c02f52e35e7432d39d348d1e40378af363961c3951c9d5e964f4da7cc2d`  
		Last Modified: Thu, 25 Aug 2016 19:34:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
