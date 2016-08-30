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
-	[`influxdb:1.0.0-rc2`](#influxdb100-rc2)
-	[`influxdb:1.0.0-rc2-alpine`](#influxdb100-rc2-alpine)

## `influxdb:0.12`

```console
$ docker pull influxdb@sha256:b24c5c2451c4e04d85685f5e5626936868f9eae7dab309d5b0e7c90a6255df71
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84571796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a1d557b36b32640650f1e5b11136ec99cf790f640adbc8c580c24f79c9a1ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 19:49:20 GMT
ENV INFLUXDB_VERSION=0.12.2
# Tue, 30 Aug 2016 19:49:32 GMT
RUN wget -q https://s3.amazonaws.com/influxdb/influxdb_$INFLUXDB_VERSION-1_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/influxdb/influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     gpg --batch --verify influxdb_$INFLUXDB_VERSION-1_amd64.deb.asc influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     dpkg -i influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     rm -f influxdb_$INFLUXDB_VERSION-1_amd64.deb*
# Tue, 30 Aug 2016 19:49:33 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 30 Aug 2016 19:49:33 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 30 Aug 2016 19:49:33 GMT
VOLUME [/var/lib/influxdb]
# Tue, 30 Aug 2016 19:49:33 GMT
COPY file:922a826f6063efc5079d9a5638b49bc5dd43860c8245351b750a74e5a126763d in /entrypoint.sh 
# Tue, 30 Aug 2016 19:49:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 19:49:34 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d800372c69776a1b5485698808e32c4d519d0ab416ff67a9df9ada43ee2414`  
		Last Modified: Tue, 30 Aug 2016 21:49:52 GMT  
		Size: 14.7 MB (14671946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee92d9e66b4074a05ebdfc4ee2af87fd77385940ca1870c83370c87ebac21e3`  
		Last Modified: Tue, 30 Aug 2016 21:49:45 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8459cdca8fec0dd4aa5bad5b7f28aea2a9837f64cb923781fa1077360511ac21`  
		Last Modified: Tue, 30 Aug 2016 21:49:45 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.12.2`

```console
$ docker pull influxdb@sha256:b24c5c2451c4e04d85685f5e5626936868f9eae7dab309d5b0e7c90a6255df71
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.12.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84571796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a1d557b36b32640650f1e5b11136ec99cf790f640adbc8c580c24f79c9a1ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 19:49:20 GMT
ENV INFLUXDB_VERSION=0.12.2
# Tue, 30 Aug 2016 19:49:32 GMT
RUN wget -q https://s3.amazonaws.com/influxdb/influxdb_$INFLUXDB_VERSION-1_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/influxdb/influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     gpg --batch --verify influxdb_$INFLUXDB_VERSION-1_amd64.deb.asc influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     dpkg -i influxdb_$INFLUXDB_VERSION-1_amd64.deb &&     rm -f influxdb_$INFLUXDB_VERSION-1_amd64.deb*
# Tue, 30 Aug 2016 19:49:33 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 30 Aug 2016 19:49:33 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 30 Aug 2016 19:49:33 GMT
VOLUME [/var/lib/influxdb]
# Tue, 30 Aug 2016 19:49:33 GMT
COPY file:922a826f6063efc5079d9a5638b49bc5dd43860c8245351b750a74e5a126763d in /entrypoint.sh 
# Tue, 30 Aug 2016 19:49:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 19:49:34 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d800372c69776a1b5485698808e32c4d519d0ab416ff67a9df9ada43ee2414`  
		Last Modified: Tue, 30 Aug 2016 21:49:52 GMT  
		Size: 14.7 MB (14671946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee92d9e66b4074a05ebdfc4ee2af87fd77385940ca1870c83370c87ebac21e3`  
		Last Modified: Tue, 30 Aug 2016 21:49:45 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8459cdca8fec0dd4aa5bad5b7f28aea2a9837f64cb923781fa1077360511ac21`  
		Last Modified: Tue, 30 Aug 2016 21:49:45 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13`

```console
$ docker pull influxdb@sha256:a50e965f14d5525df273cd0405efed109d5903875e6a757b2876dfb2b7f3fbf1
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88048348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2c4a0f02b2a4568ba924a845efe4461afb3f34d4fcee2b09231f66978d64aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 19:49:34 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 30 Aug 2016 19:49:38 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 19:49:38 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 30 Aug 2016 19:49:38 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 30 Aug 2016 19:49:39 GMT
VOLUME [/var/lib/influxdb]
# Tue, 30 Aug 2016 19:49:39 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 30 Aug 2016 19:49:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 19:49:39 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2357dd946cef10938d88c0ebb07aaf95800b599ceb4a26dbd18c1ac6e5d773`  
		Last Modified: Tue, 30 Aug 2016 21:50:22 GMT  
		Size: 18.1 MB (18148634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507cabd558ef9cf6857e5e5e4a1707fbc4c12b352dedbc5b8f4f00a21c07fbba`  
		Last Modified: Tue, 30 Aug 2016 21:50:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739a3143e0f9c513e0332309e55b23530f4ee1b4ec83179243855abcf1c83eb7`  
		Last Modified: Tue, 30 Aug 2016 21:50:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13.0`

```console
$ docker pull influxdb@sha256:a50e965f14d5525df273cd0405efed109d5903875e6a757b2876dfb2b7f3fbf1
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88048348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2c4a0f02b2a4568ba924a845efe4461afb3f34d4fcee2b09231f66978d64aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 19:49:34 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 30 Aug 2016 19:49:38 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 19:49:38 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 30 Aug 2016 19:49:38 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 30 Aug 2016 19:49:39 GMT
VOLUME [/var/lib/influxdb]
# Tue, 30 Aug 2016 19:49:39 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 30 Aug 2016 19:49:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 19:49:39 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2357dd946cef10938d88c0ebb07aaf95800b599ceb4a26dbd18c1ac6e5d773`  
		Last Modified: Tue, 30 Aug 2016 21:50:22 GMT  
		Size: 18.1 MB (18148634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507cabd558ef9cf6857e5e5e4a1707fbc4c12b352dedbc5b8f4f00a21c07fbba`  
		Last Modified: Tue, 30 Aug 2016 21:50:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739a3143e0f9c513e0332309e55b23530f4ee1b4ec83179243855abcf1c83eb7`  
		Last Modified: Tue, 30 Aug 2016 21:50:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:a50e965f14d5525df273cd0405efed109d5903875e6a757b2876dfb2b7f3fbf1
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88048348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2c4a0f02b2a4568ba924a845efe4461afb3f34d4fcee2b09231f66978d64aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 19:49:34 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 30 Aug 2016 19:49:38 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 19:49:38 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 30 Aug 2016 19:49:38 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 30 Aug 2016 19:49:39 GMT
VOLUME [/var/lib/influxdb]
# Tue, 30 Aug 2016 19:49:39 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 30 Aug 2016 19:49:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 19:49:39 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2357dd946cef10938d88c0ebb07aaf95800b599ceb4a26dbd18c1ac6e5d773`  
		Last Modified: Tue, 30 Aug 2016 21:50:22 GMT  
		Size: 18.1 MB (18148634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507cabd558ef9cf6857e5e5e4a1707fbc4c12b352dedbc5b8f4f00a21c07fbba`  
		Last Modified: Tue, 30 Aug 2016 21:50:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739a3143e0f9c513e0332309e55b23530f4ee1b4ec83179243855abcf1c83eb7`  
		Last Modified: Tue, 30 Aug 2016 21:50:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13-alpine`

```console
$ docker pull influxdb@sha256:3efd6f6a32a08fcdeefcbb1aeb35c7420ee103bae510b6e19a4f2b609e20cf11
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15838561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57dba922c411a91996d1e15777ccbf4f90823e315540472b53e0ddb8fb426318`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:49:40 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 30 Aug 2016 19:49:53 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 Aug 2016 19:49:53 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 30 Aug 2016 19:49:53 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 30 Aug 2016 19:49:53 GMT
VOLUME [/var/lib/influxdb]
# Tue, 30 Aug 2016 19:49:54 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 30 Aug 2016 19:49:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 19:49:54 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9873ab62c9624cf47d885b1becbfc7187c48e69ab7da53d9ec01e89446258705`  
		Last Modified: Tue, 30 Aug 2016 21:50:51 GMT  
		Size: 13.5 MB (13527852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cac15e70ee94baffadfbdcda5d82c59301c1e0d9fa1958e722331ea4e876cc`  
		Last Modified: Tue, 30 Aug 2016 21:50:44 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dd459aa5510575a77717df53b1948edc137978c7a90c5f080dbafc38e6dfd4`  
		Last Modified: Tue, 30 Aug 2016 21:50:45 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13.0-alpine`

```console
$ docker pull influxdb@sha256:3efd6f6a32a08fcdeefcbb1aeb35c7420ee103bae510b6e19a4f2b609e20cf11
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15838561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57dba922c411a91996d1e15777ccbf4f90823e315540472b53e0ddb8fb426318`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:49:40 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 30 Aug 2016 19:49:53 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 Aug 2016 19:49:53 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 30 Aug 2016 19:49:53 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 30 Aug 2016 19:49:53 GMT
VOLUME [/var/lib/influxdb]
# Tue, 30 Aug 2016 19:49:54 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 30 Aug 2016 19:49:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 19:49:54 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9873ab62c9624cf47d885b1becbfc7187c48e69ab7da53d9ec01e89446258705`  
		Last Modified: Tue, 30 Aug 2016 21:50:51 GMT  
		Size: 13.5 MB (13527852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cac15e70ee94baffadfbdcda5d82c59301c1e0d9fa1958e722331ea4e876cc`  
		Last Modified: Tue, 30 Aug 2016 21:50:44 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dd459aa5510575a77717df53b1948edc137978c7a90c5f080dbafc38e6dfd4`  
		Last Modified: Tue, 30 Aug 2016 21:50:45 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:3efd6f6a32a08fcdeefcbb1aeb35c7420ee103bae510b6e19a4f2b609e20cf11
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15838561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57dba922c411a91996d1e15777ccbf4f90823e315540472b53e0ddb8fb426318`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:49:40 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 30 Aug 2016 19:49:53 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 Aug 2016 19:49:53 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 30 Aug 2016 19:49:53 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 30 Aug 2016 19:49:53 GMT
VOLUME [/var/lib/influxdb]
# Tue, 30 Aug 2016 19:49:54 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 30 Aug 2016 19:49:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 19:49:54 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9873ab62c9624cf47d885b1becbfc7187c48e69ab7da53d9ec01e89446258705`  
		Last Modified: Tue, 30 Aug 2016 21:50:51 GMT  
		Size: 13.5 MB (13527852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cac15e70ee94baffadfbdcda5d82c59301c1e0d9fa1958e722331ea4e876cc`  
		Last Modified: Tue, 30 Aug 2016 21:50:44 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dd459aa5510575a77717df53b1948edc137978c7a90c5f080dbafc38e6dfd4`  
		Last Modified: Tue, 30 Aug 2016 21:50:45 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.0-rc2`

```console
$ docker pull influxdb@sha256:87a1a9a2dad36f299497ed529e568572b7ea118d4199958414a114611b721167
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.0-rc2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87667977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9b157148c1ff2ec80f5626f99e2f7149b0e82249e0b6c04c3e73dd538a326c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:16:35 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 21:49:21 GMT
ENV INFLUXDB_VERSION=1.0.0~rc2
# Tue, 30 Aug 2016 21:49:25 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 21:49:25 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 30 Aug 2016 21:49:25 GMT
EXPOSE 8086/tcp
# Tue, 30 Aug 2016 21:49:26 GMT
VOLUME [/var/lib/influxdb]
# Tue, 30 Aug 2016 21:49:26 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 30 Aug 2016 21:49:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 21:49:26 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad03ebd23115f31910bea2892e7a689ce40a6953678258c80fec4717917716a3`  
		Last Modified: Tue, 30 Aug 2016 21:48:21 GMT  
		Size: 6.8 KB (6755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c6edeb8b04a3209c39e69dce4bc03caba9461c534ce6afa6df170cee458882`  
		Last Modified: Tue, 30 Aug 2016 21:51:22 GMT  
		Size: 17.8 MB (17768265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db09eadbee5ff6378191fd763e71df3c51b1d93a0f9f15b064688b81e5a7f76`  
		Last Modified: Tue, 30 Aug 2016 21:51:13 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b0462d6b4f2b97dbadfa795f9b88ca39c55f492a63c3e03d5f4a27a9893fbf`  
		Last Modified: Tue, 30 Aug 2016 21:51:14 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.0-rc2-alpine`

```console
$ docker pull influxdb@sha256:a99cd0574ebd25b5fd30cc63a981193e05fa3d200df0da708f1398b527c677d0
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.0-rc2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15573064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536c8c5e980bfebc5e5c582fdb334cbad8e22963285e21ab68c72228155bb79e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 21:49:27 GMT
ENV INFLUXDB_VERSION=1.0.0~rc2
# Tue, 30 Aug 2016 21:49:38 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 Aug 2016 21:49:38 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 30 Aug 2016 21:49:38 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 30 Aug 2016 21:49:39 GMT
VOLUME [/var/lib/influxdb]
# Tue, 30 Aug 2016 21:49:39 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 30 Aug 2016 21:49:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 21:49:39 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000547fb8537ff186c6de6f40c77f9b3e28a45bd1e221b552efcf6769a41b7da`  
		Last Modified: Tue, 30 Aug 2016 21:51:40 GMT  
		Size: 13.3 MB (13262357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4940cbebc4747080f5850b08e57a09442fdd7e2e754f788ed64c304dab251ff`  
		Last Modified: Tue, 30 Aug 2016 21:51:33 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727370962ff1db69ee9e63adab3e5a7cd74e850e18c9a9ceb3877daf52d150c`  
		Last Modified: Tue, 30 Aug 2016 21:51:33 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
