<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.1`](#influxdb11)
-	[`influxdb:1.1.4`](#influxdb114)
-	[`influxdb:1.1-alpine`](#influxdb11-alpine)
-	[`influxdb:1.1.4-alpine`](#influxdb114-alpine)
-	[`influxdb:1.2`](#influxdb12)
-	[`influxdb:1.2.2`](#influxdb122)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:1.2-alpine`](#influxdb12-alpine)
-	[`influxdb:1.2.2-alpine`](#influxdb122-alpine)
-	[`influxdb:alpine`](#influxdbalpine)

## `influxdb:1.1`

```console
$ docker pull influxdb@sha256:92caf0e0fa69bc059dd98512fa1d9973e9ad3a77ea1615d56df8dd5f9f02127d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.6 MB (85614362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c8bed45caae017b771c269185bd95b8bdf85440e05654af67e6d1d632652c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:14:51 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 21 Mar 2017 20:52:01 GMT
ENV INFLUXDB_VERSION=1.1.4
# Tue, 21 Mar 2017 20:52:06 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 21 Mar 2017 20:52:07 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 21 Mar 2017 20:52:07 GMT
EXPOSE 8086/tcp
# Tue, 21 Mar 2017 20:52:07 GMT
VOLUME [/var/lib/influxdb]
# Tue, 21 Mar 2017 20:52:08 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 21 Mar 2017 20:52:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 20:52:09 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d75e2f3672c90fad945d048bb41578640b801cc97c2ca3dd9642e60de13ffd`  
		Last Modified: Thu, 23 Mar 2017 17:26:57 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ff846625affc384a9d0ba24f4074396f9fe93886aab815d30774332bc32b48`  
		Last Modified: Thu, 23 Mar 2017 21:27:59 GMT  
		Size: 15.6 MB (15562251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9636669102cf4a6dd35550415a782b069bf00444a687faa4a8d04862934b8940`  
		Last Modified: Thu, 23 Mar 2017 21:27:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3989c04a61ea2aa7706c8a0532a36c5304bd7badc862a8575a421dbddd075e`  
		Last Modified: Thu, 23 Mar 2017 21:27:53 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.4`

```console
$ docker pull influxdb@sha256:92caf0e0fa69bc059dd98512fa1d9973e9ad3a77ea1615d56df8dd5f9f02127d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.6 MB (85614362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c8bed45caae017b771c269185bd95b8bdf85440e05654af67e6d1d632652c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:14:51 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 21 Mar 2017 20:52:01 GMT
ENV INFLUXDB_VERSION=1.1.4
# Tue, 21 Mar 2017 20:52:06 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 21 Mar 2017 20:52:07 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 21 Mar 2017 20:52:07 GMT
EXPOSE 8086/tcp
# Tue, 21 Mar 2017 20:52:07 GMT
VOLUME [/var/lib/influxdb]
# Tue, 21 Mar 2017 20:52:08 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 21 Mar 2017 20:52:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 20:52:09 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d75e2f3672c90fad945d048bb41578640b801cc97c2ca3dd9642e60de13ffd`  
		Last Modified: Thu, 23 Mar 2017 17:26:57 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ff846625affc384a9d0ba24f4074396f9fe93886aab815d30774332bc32b48`  
		Last Modified: Thu, 23 Mar 2017 21:27:59 GMT  
		Size: 15.6 MB (15562251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9636669102cf4a6dd35550415a782b069bf00444a687faa4a8d04862934b8940`  
		Last Modified: Thu, 23 Mar 2017 21:27:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3989c04a61ea2aa7706c8a0532a36c5304bd7badc862a8575a421dbddd075e`  
		Last Modified: Thu, 23 Mar 2017 21:27:53 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1-alpine`

```console
$ docker pull influxdb@sha256:63a7f42869ba6e1b0517cf929667f21fb7d9da8ed1bcaed2e8577f130da8ec19
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12911866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4accaa9f413dbd43796689d78254e3f828d96b8bd30ce00beda98c7a4e0134`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:59:47 GMT
ENV INFLUXDB_VERSION=1.1.4
# Fri, 03 Mar 2017 21:59:55 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Mar 2017 21:59:56 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 03 Mar 2017 21:59:56 GMT
EXPOSE 8086/tcp
# Fri, 03 Mar 2017 21:59:56 GMT
VOLUME [/var/lib/influxdb]
# Fri, 03 Mar 2017 21:59:57 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 03 Mar 2017 21:59:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Mar 2017 21:59:58 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c784f920610fad3b35fb99aefda2334f5567b9a402bd3b87f07c2571cc683fdf`  
		Last Modified: Sat, 04 Mar 2017 05:06:53 GMT  
		Size: 11.0 MB (11006188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad40f35dfd2a8a2e597b4b41ab28e055683db5cd2b53789ebb2c0496822106c`  
		Last Modified: Sat, 04 Mar 2017 05:06:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a607c1a27564677f1209b06dc5284dd95a2eddb9527e95046aad79a5f5372f`  
		Last Modified: Sat, 04 Mar 2017 05:06:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.4-alpine`

```console
$ docker pull influxdb@sha256:63a7f42869ba6e1b0517cf929667f21fb7d9da8ed1bcaed2e8577f130da8ec19
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12911866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4accaa9f413dbd43796689d78254e3f828d96b8bd30ce00beda98c7a4e0134`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:59:47 GMT
ENV INFLUXDB_VERSION=1.1.4
# Fri, 03 Mar 2017 21:59:55 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Mar 2017 21:59:56 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 03 Mar 2017 21:59:56 GMT
EXPOSE 8086/tcp
# Fri, 03 Mar 2017 21:59:56 GMT
VOLUME [/var/lib/influxdb]
# Fri, 03 Mar 2017 21:59:57 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 03 Mar 2017 21:59:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Mar 2017 21:59:58 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c784f920610fad3b35fb99aefda2334f5567b9a402bd3b87f07c2571cc683fdf`  
		Last Modified: Sat, 04 Mar 2017 05:06:53 GMT  
		Size: 11.0 MB (11006188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad40f35dfd2a8a2e597b4b41ab28e055683db5cd2b53789ebb2c0496822106c`  
		Last Modified: Sat, 04 Mar 2017 05:06:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a607c1a27564677f1209b06dc5284dd95a2eddb9527e95046aad79a5f5372f`  
		Last Modified: Sat, 04 Mar 2017 05:06:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2`

```console
$ docker pull influxdb@sha256:c6e97573d42b37a95f564f5f68abd94f4f2f3fa379640a959ee610cda1902387
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87343674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a53f6a13f2edee2ed3d4ba2e4d8ba4e47f52d410069e0e53341385f495a3ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:14:51 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 21 Mar 2017 20:52:09 GMT
ENV INFLUXDB_VERSION=1.2.2
# Tue, 21 Mar 2017 20:52:12 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 21 Mar 2017 20:52:13 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 21 Mar 2017 20:52:13 GMT
EXPOSE 8086/tcp
# Tue, 21 Mar 2017 20:52:14 GMT
VOLUME [/var/lib/influxdb]
# Tue, 21 Mar 2017 20:52:14 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 21 Mar 2017 20:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 20:52:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d75e2f3672c90fad945d048bb41578640b801cc97c2ca3dd9642e60de13ffd`  
		Last Modified: Thu, 23 Mar 2017 17:26:57 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7caa5898f7970f36e6352f3052e46b606748e0432838010fa79aa90426d63e71`  
		Last Modified: Thu, 23 Mar 2017 21:28:48 GMT  
		Size: 17.3 MB (17291562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf3290c79fb51139be1f3efdfa5274687694ee0c9bde63760ee953deb38047f`  
		Last Modified: Thu, 23 Mar 2017 21:28:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ba77d4038af5d9cedfde84664a2f018277b153ecaad2bc345e10b8c24064c4`  
		Last Modified: Thu, 23 Mar 2017 21:28:42 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.2`

```console
$ docker pull influxdb@sha256:c6e97573d42b37a95f564f5f68abd94f4f2f3fa379640a959ee610cda1902387
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87343674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a53f6a13f2edee2ed3d4ba2e4d8ba4e47f52d410069e0e53341385f495a3ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:14:51 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 21 Mar 2017 20:52:09 GMT
ENV INFLUXDB_VERSION=1.2.2
# Tue, 21 Mar 2017 20:52:12 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 21 Mar 2017 20:52:13 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 21 Mar 2017 20:52:13 GMT
EXPOSE 8086/tcp
# Tue, 21 Mar 2017 20:52:14 GMT
VOLUME [/var/lib/influxdb]
# Tue, 21 Mar 2017 20:52:14 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 21 Mar 2017 20:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 20:52:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d75e2f3672c90fad945d048bb41578640b801cc97c2ca3dd9642e60de13ffd`  
		Last Modified: Thu, 23 Mar 2017 17:26:57 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7caa5898f7970f36e6352f3052e46b606748e0432838010fa79aa90426d63e71`  
		Last Modified: Thu, 23 Mar 2017 21:28:48 GMT  
		Size: 17.3 MB (17291562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf3290c79fb51139be1f3efdfa5274687694ee0c9bde63760ee953deb38047f`  
		Last Modified: Thu, 23 Mar 2017 21:28:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ba77d4038af5d9cedfde84664a2f018277b153ecaad2bc345e10b8c24064c4`  
		Last Modified: Thu, 23 Mar 2017 21:28:42 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:c6e97573d42b37a95f564f5f68abd94f4f2f3fa379640a959ee610cda1902387
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87343674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a53f6a13f2edee2ed3d4ba2e4d8ba4e47f52d410069e0e53341385f495a3ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:14:51 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 21 Mar 2017 20:52:09 GMT
ENV INFLUXDB_VERSION=1.2.2
# Tue, 21 Mar 2017 20:52:12 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 21 Mar 2017 20:52:13 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 21 Mar 2017 20:52:13 GMT
EXPOSE 8086/tcp
# Tue, 21 Mar 2017 20:52:14 GMT
VOLUME [/var/lib/influxdb]
# Tue, 21 Mar 2017 20:52:14 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 21 Mar 2017 20:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 20:52:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d75e2f3672c90fad945d048bb41578640b801cc97c2ca3dd9642e60de13ffd`  
		Last Modified: Thu, 23 Mar 2017 17:26:57 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7caa5898f7970f36e6352f3052e46b606748e0432838010fa79aa90426d63e71`  
		Last Modified: Thu, 23 Mar 2017 21:28:48 GMT  
		Size: 17.3 MB (17291562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf3290c79fb51139be1f3efdfa5274687694ee0c9bde63760ee953deb38047f`  
		Last Modified: Thu, 23 Mar 2017 21:28:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ba77d4038af5d9cedfde84664a2f018277b153ecaad2bc345e10b8c24064c4`  
		Last Modified: Thu, 23 Mar 2017 21:28:42 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:048c1d9afc0eb2ef499f1697d6197a6af3fb0f7450fb8c8e552c521a768c3518
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14139711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61273580599e3e1ea4ed9e3ca2878589bb73cf8d3dd5d288983b555199c70dd3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 15 Mar 2017 21:31:45 GMT
ENV INFLUXDB_VERSION=1.2.2
# Wed, 15 Mar 2017 21:31:53 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 15 Mar 2017 21:31:54 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 15 Mar 2017 21:31:54 GMT
EXPOSE 8086/tcp
# Wed, 15 Mar 2017 21:31:55 GMT
VOLUME [/var/lib/influxdb]
# Wed, 15 Mar 2017 21:31:55 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 15 Mar 2017 21:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 Mar 2017 21:31:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975c55395dc185517cd97ec6ae711d8a0aaee0279e3a4aab944ed1c2ca355ca5`  
		Last Modified: Wed, 15 Mar 2017 21:35:31 GMT  
		Size: 12.2 MB (12234035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff2bdab784746ace0c34609fa93cd3e80a319e8cb0b7758de422f913d3d2bb7`  
		Last Modified: Wed, 15 Mar 2017 21:35:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb02ad705c0a12bb193667969fd55a06bb7411d1c5ee15735016cbb496f7c33e`  
		Last Modified: Wed, 15 Mar 2017 21:35:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.2-alpine`

```console
$ docker pull influxdb@sha256:048c1d9afc0eb2ef499f1697d6197a6af3fb0f7450fb8c8e552c521a768c3518
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14139711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61273580599e3e1ea4ed9e3ca2878589bb73cf8d3dd5d288983b555199c70dd3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 15 Mar 2017 21:31:45 GMT
ENV INFLUXDB_VERSION=1.2.2
# Wed, 15 Mar 2017 21:31:53 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 15 Mar 2017 21:31:54 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 15 Mar 2017 21:31:54 GMT
EXPOSE 8086/tcp
# Wed, 15 Mar 2017 21:31:55 GMT
VOLUME [/var/lib/influxdb]
# Wed, 15 Mar 2017 21:31:55 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 15 Mar 2017 21:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 Mar 2017 21:31:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975c55395dc185517cd97ec6ae711d8a0aaee0279e3a4aab944ed1c2ca355ca5`  
		Last Modified: Wed, 15 Mar 2017 21:35:31 GMT  
		Size: 12.2 MB (12234035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff2bdab784746ace0c34609fa93cd3e80a319e8cb0b7758de422f913d3d2bb7`  
		Last Modified: Wed, 15 Mar 2017 21:35:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb02ad705c0a12bb193667969fd55a06bb7411d1c5ee15735016cbb496f7c33e`  
		Last Modified: Wed, 15 Mar 2017 21:35:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:048c1d9afc0eb2ef499f1697d6197a6af3fb0f7450fb8c8e552c521a768c3518
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14139711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61273580599e3e1ea4ed9e3ca2878589bb73cf8d3dd5d288983b555199c70dd3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 15 Mar 2017 21:31:45 GMT
ENV INFLUXDB_VERSION=1.2.2
# Wed, 15 Mar 2017 21:31:53 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 15 Mar 2017 21:31:54 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 15 Mar 2017 21:31:54 GMT
EXPOSE 8086/tcp
# Wed, 15 Mar 2017 21:31:55 GMT
VOLUME [/var/lib/influxdb]
# Wed, 15 Mar 2017 21:31:55 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 15 Mar 2017 21:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 Mar 2017 21:31:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975c55395dc185517cd97ec6ae711d8a0aaee0279e3a4aab944ed1c2ca355ca5`  
		Last Modified: Wed, 15 Mar 2017 21:35:31 GMT  
		Size: 12.2 MB (12234035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff2bdab784746ace0c34609fa93cd3e80a319e8cb0b7758de422f913d3d2bb7`  
		Last Modified: Wed, 15 Mar 2017 21:35:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb02ad705c0a12bb193667969fd55a06bb7411d1c5ee15735016cbb496f7c33e`  
		Last Modified: Wed, 15 Mar 2017 21:35:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
