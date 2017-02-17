<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.1`](#influxdb11)
-	[`influxdb:1.1.2`](#influxdb112)
-	[`influxdb:1.1-alpine`](#influxdb11-alpine)
-	[`influxdb:1.1.2-alpine`](#influxdb112-alpine)
-	[`influxdb:1.2`](#influxdb12)
-	[`influxdb:1.2.0`](#influxdb120)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:1.2-alpine`](#influxdb12-alpine)
-	[`influxdb:1.2.0-alpine`](#influxdb120-alpine)
-	[`influxdb:alpine`](#influxdbalpine)

## `influxdb:1.1`

```console
$ docker pull influxdb@sha256:2980c1d16a98995987c4830f3b40add54c587625df2953521fe2c93aa603946d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85443712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46981833ee587135b802bca69f998cb344c60072ac8cf91532a6c8ae671b16c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 17 Feb 2017 18:19:48 GMT
ENV INFLUXDB_VERSION=1.1.2
# Fri, 17 Feb 2017 18:19:56 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 17 Feb 2017 18:20:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 17 Feb 2017 18:20:04 GMT
EXPOSE 8086/tcp
# Fri, 17 Feb 2017 18:20:04 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Feb 2017 18:20:05 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Fri, 17 Feb 2017 18:20:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Feb 2017 18:20:20 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcdb4fb714fb6b3acf4b689cc752e0ff22413e2c5e36a3dc2e810bbf831511e`  
		Last Modified: Fri, 17 Feb 2017 18:21:32 GMT  
		Size: 15.5 MB (15539902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88faae0bfe6a510561ebef0e1d7a5840b4d07f5448356b5d86e07c3dc35db660`  
		Last Modified: Fri, 17 Feb 2017 18:21:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945325235a75592545b6b433d35610458748fb7dad47838a66ceb6dbc2a9afa1`  
		Last Modified: Fri, 17 Feb 2017 18:21:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.2`

```console
$ docker pull influxdb@sha256:2980c1d16a98995987c4830f3b40add54c587625df2953521fe2c93aa603946d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85443712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46981833ee587135b802bca69f998cb344c60072ac8cf91532a6c8ae671b16c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 17 Feb 2017 18:19:48 GMT
ENV INFLUXDB_VERSION=1.1.2
# Fri, 17 Feb 2017 18:19:56 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 17 Feb 2017 18:20:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 17 Feb 2017 18:20:04 GMT
EXPOSE 8086/tcp
# Fri, 17 Feb 2017 18:20:04 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Feb 2017 18:20:05 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Fri, 17 Feb 2017 18:20:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Feb 2017 18:20:20 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcdb4fb714fb6b3acf4b689cc752e0ff22413e2c5e36a3dc2e810bbf831511e`  
		Last Modified: Fri, 17 Feb 2017 18:21:32 GMT  
		Size: 15.5 MB (15539902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88faae0bfe6a510561ebef0e1d7a5840b4d07f5448356b5d86e07c3dc35db660`  
		Last Modified: Fri, 17 Feb 2017 18:21:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945325235a75592545b6b433d35610458748fb7dad47838a66ceb6dbc2a9afa1`  
		Last Modified: Fri, 17 Feb 2017 18:21:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1-alpine`

```console
$ docker pull influxdb@sha256:3ecb8b97f872f76c4f9a146fa63bd410578d54bd63087104c9201389aab3a128
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12904543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2283fe9b603d8d1be1da3d8742c436e6f289a28f3afd4942ab93a4b2ebacdc3c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 17 Feb 2017 18:20:20 GMT
ENV INFLUXDB_VERSION=1.1.2
# Fri, 17 Feb 2017 18:20:43 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 17 Feb 2017 18:20:51 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 17 Feb 2017 18:20:51 GMT
EXPOSE 8086/tcp
# Fri, 17 Feb 2017 18:20:52 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Feb 2017 18:20:53 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 17 Feb 2017 18:20:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Feb 2017 18:21:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3a19a29ff6eeace273b7bf7aa2b300157cce556c02bf7848991d2b2f7564ed`  
		Last Modified: Fri, 17 Feb 2017 18:22:28 GMT  
		Size: 11.0 MB (11002075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df351dc4c2d49249e3211dcfde47c85b0c33d4658edd13e25c5547956b7f0c76`  
		Last Modified: Fri, 17 Feb 2017 18:22:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3142276beadb888a528c95f9570664ed0274d8d1b02d46f128d1cc3083770eb`  
		Last Modified: Fri, 17 Feb 2017 18:22:23 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.2-alpine`

```console
$ docker pull influxdb@sha256:3ecb8b97f872f76c4f9a146fa63bd410578d54bd63087104c9201389aab3a128
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12904543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2283fe9b603d8d1be1da3d8742c436e6f289a28f3afd4942ab93a4b2ebacdc3c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 17 Feb 2017 18:20:20 GMT
ENV INFLUXDB_VERSION=1.1.2
# Fri, 17 Feb 2017 18:20:43 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 17 Feb 2017 18:20:51 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 17 Feb 2017 18:20:51 GMT
EXPOSE 8086/tcp
# Fri, 17 Feb 2017 18:20:52 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Feb 2017 18:20:53 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 17 Feb 2017 18:20:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Feb 2017 18:21:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3a19a29ff6eeace273b7bf7aa2b300157cce556c02bf7848991d2b2f7564ed`  
		Last Modified: Fri, 17 Feb 2017 18:22:28 GMT  
		Size: 11.0 MB (11002075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df351dc4c2d49249e3211dcfde47c85b0c33d4658edd13e25c5547956b7f0c76`  
		Last Modified: Fri, 17 Feb 2017 18:22:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3142276beadb888a528c95f9570664ed0274d8d1b02d46f128d1cc3083770eb`  
		Last Modified: Fri, 17 Feb 2017 18:22:23 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2`

```console
$ docker pull influxdb@sha256:667f4e645c5688bba3353ed908fbd14606b99ef39abb597d564b11615895ca01
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87179037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd95e2be956e1aee9a3f4ff0d8059782faf228ca7283e00aa72f82fac1725ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 24 Jan 2017 17:36:42 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 24 Jan 2017 17:36:48 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 24 Jan 2017 17:36:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 24 Jan 2017 17:36:49 GMT
EXPOSE 8086/tcp
# Tue, 24 Jan 2017 17:36:50 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Jan 2017 17:36:50 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:36:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:36:51 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28aeeaf3f5cca05c1da05e17abd234f68307ea92df47e849e1bb12c1fee8fec7`  
		Last Modified: Tue, 24 Jan 2017 17:38:20 GMT  
		Size: 17.3 MB (17275230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b449d0667ddbfc0efd92d66cd88c7f2bc2771f7710992358cedd66e889f1f87`  
		Last Modified: Tue, 24 Jan 2017 17:38:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c10f2951a9eb19aca494a1a0f869c314708024c2f36b67e82c4f7d2c9149182`  
		Last Modified: Tue, 24 Jan 2017 17:38:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.0`

```console
$ docker pull influxdb@sha256:667f4e645c5688bba3353ed908fbd14606b99ef39abb597d564b11615895ca01
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87179037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd95e2be956e1aee9a3f4ff0d8059782faf228ca7283e00aa72f82fac1725ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 24 Jan 2017 17:36:42 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 24 Jan 2017 17:36:48 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 24 Jan 2017 17:36:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 24 Jan 2017 17:36:49 GMT
EXPOSE 8086/tcp
# Tue, 24 Jan 2017 17:36:50 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Jan 2017 17:36:50 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:36:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:36:51 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28aeeaf3f5cca05c1da05e17abd234f68307ea92df47e849e1bb12c1fee8fec7`  
		Last Modified: Tue, 24 Jan 2017 17:38:20 GMT  
		Size: 17.3 MB (17275230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b449d0667ddbfc0efd92d66cd88c7f2bc2771f7710992358cedd66e889f1f87`  
		Last Modified: Tue, 24 Jan 2017 17:38:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c10f2951a9eb19aca494a1a0f869c314708024c2f36b67e82c4f7d2c9149182`  
		Last Modified: Tue, 24 Jan 2017 17:38:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:667f4e645c5688bba3353ed908fbd14606b99ef39abb597d564b11615895ca01
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87179037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd95e2be956e1aee9a3f4ff0d8059782faf228ca7283e00aa72f82fac1725ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 24 Jan 2017 17:36:42 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 24 Jan 2017 17:36:48 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 24 Jan 2017 17:36:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 24 Jan 2017 17:36:49 GMT
EXPOSE 8086/tcp
# Tue, 24 Jan 2017 17:36:50 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Jan 2017 17:36:50 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:36:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:36:51 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28aeeaf3f5cca05c1da05e17abd234f68307ea92df47e849e1bb12c1fee8fec7`  
		Last Modified: Tue, 24 Jan 2017 17:38:20 GMT  
		Size: 17.3 MB (17275230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b449d0667ddbfc0efd92d66cd88c7f2bc2771f7710992358cedd66e889f1f87`  
		Last Modified: Tue, 24 Jan 2017 17:38:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c10f2951a9eb19aca494a1a0f869c314708024c2f36b67e82c4f7d2c9149182`  
		Last Modified: Tue, 24 Jan 2017 17:38:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:bc540474acadea623eb81ea2b70f26dfc326b8a64f54f0f54979766c843cc53d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14123685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a859cac1ae506434d8c82c1bdf98736f6b2e55e0e0547be65679a97d2659841`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 24 Jan 2017 17:36:52 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 24 Jan 2017 17:36:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 24 Jan 2017 17:36:58 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 24 Jan 2017 17:36:59 GMT
EXPOSE 8086/tcp
# Tue, 24 Jan 2017 17:36:59 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Jan 2017 17:37:00 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:37:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:37:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82140f70046588622c146e8d487c400bdfbe598930ea710e57cec2ef3934ccc6`  
		Last Modified: Tue, 24 Jan 2017 17:39:12 GMT  
		Size: 12.2 MB (12221216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed14a7d1ef403888f0e60e626ece4cf2b2cfbfdb4328c9ed24fe21bf41db87f0`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df5ce638a4a48566852a5d828f7a7bcfa69d91d4304cbe03a3baf3b97d66361`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.0-alpine`

```console
$ docker pull influxdb@sha256:bc540474acadea623eb81ea2b70f26dfc326b8a64f54f0f54979766c843cc53d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14123685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a859cac1ae506434d8c82c1bdf98736f6b2e55e0e0547be65679a97d2659841`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 24 Jan 2017 17:36:52 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 24 Jan 2017 17:36:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 24 Jan 2017 17:36:58 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 24 Jan 2017 17:36:59 GMT
EXPOSE 8086/tcp
# Tue, 24 Jan 2017 17:36:59 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Jan 2017 17:37:00 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:37:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:37:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82140f70046588622c146e8d487c400bdfbe598930ea710e57cec2ef3934ccc6`  
		Last Modified: Tue, 24 Jan 2017 17:39:12 GMT  
		Size: 12.2 MB (12221216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed14a7d1ef403888f0e60e626ece4cf2b2cfbfdb4328c9ed24fe21bf41db87f0`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df5ce638a4a48566852a5d828f7a7bcfa69d91d4304cbe03a3baf3b97d66361`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:bc540474acadea623eb81ea2b70f26dfc326b8a64f54f0f54979766c843cc53d
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14123685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a859cac1ae506434d8c82c1bdf98736f6b2e55e0e0547be65679a97d2659841`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 24 Jan 2017 17:36:52 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 24 Jan 2017 17:36:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 24 Jan 2017 17:36:58 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 24 Jan 2017 17:36:59 GMT
EXPOSE 8086/tcp
# Tue, 24 Jan 2017 17:36:59 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Jan 2017 17:37:00 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:37:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:37:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82140f70046588622c146e8d487c400bdfbe598930ea710e57cec2ef3934ccc6`  
		Last Modified: Tue, 24 Jan 2017 17:39:12 GMT  
		Size: 12.2 MB (12221216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed14a7d1ef403888f0e60e626ece4cf2b2cfbfdb4328c9ed24fe21bf41db87f0`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df5ce638a4a48566852a5d828f7a7bcfa69d91d4304cbe03a3baf3b97d66361`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
