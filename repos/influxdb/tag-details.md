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
$ docker pull influxdb@sha256:0dc87876dcb7d1fd1c85104f0c35b76459c692f9b2ec0344e85b4836e1cf5720
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87561510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d780f391c04573335bdd98812100a029398fc3221e6db114cb8553f1dbf9d8c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:25:06 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 24 Apr 2017 23:34:54 GMT
ENV INFLUXDB_VERSION=1.1.4
# Mon, 24 Apr 2017 23:35:01 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Mon, 24 Apr 2017 23:35:02 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Mon, 24 Apr 2017 23:35:02 GMT
EXPOSE 8086/tcp
# Mon, 24 Apr 2017 23:35:03 GMT
VOLUME [/var/lib/influxdb]
# Mon, 24 Apr 2017 23:35:04 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Mon, 24 Apr 2017 23:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 23:35:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4715d1852381431f1f56c8cc181c1e32e13bfcf83cbee61bad195b55af9b5d`  
		Last Modified: Tue, 25 Apr 2017 16:56:35 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ad81181c8ac12dbe2f5574c7da57b832f3c28e5201193cb293ab09d393991`  
		Last Modified: Tue, 25 Apr 2017 18:20:21 GMT  
		Size: 15.7 MB (15737818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c248010025b2d6b83b548bc12707275c5c8dd87d6226baa840af26d0d49ca074`  
		Last Modified: Tue, 25 Apr 2017 18:20:17 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cae4f1996235e8a1a8984586cd852ee433cad01aa6f13aede7a2873e8feba10`  
		Last Modified: Tue, 25 Apr 2017 18:20:17 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.4`

```console
$ docker pull influxdb@sha256:0dc87876dcb7d1fd1c85104f0c35b76459c692f9b2ec0344e85b4836e1cf5720
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87561510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d780f391c04573335bdd98812100a029398fc3221e6db114cb8553f1dbf9d8c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:25:06 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 24 Apr 2017 23:34:54 GMT
ENV INFLUXDB_VERSION=1.1.4
# Mon, 24 Apr 2017 23:35:01 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Mon, 24 Apr 2017 23:35:02 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Mon, 24 Apr 2017 23:35:02 GMT
EXPOSE 8086/tcp
# Mon, 24 Apr 2017 23:35:03 GMT
VOLUME [/var/lib/influxdb]
# Mon, 24 Apr 2017 23:35:04 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Mon, 24 Apr 2017 23:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 23:35:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4715d1852381431f1f56c8cc181c1e32e13bfcf83cbee61bad195b55af9b5d`  
		Last Modified: Tue, 25 Apr 2017 16:56:35 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ad81181c8ac12dbe2f5574c7da57b832f3c28e5201193cb293ab09d393991`  
		Last Modified: Tue, 25 Apr 2017 18:20:21 GMT  
		Size: 15.7 MB (15737818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c248010025b2d6b83b548bc12707275c5c8dd87d6226baa840af26d0d49ca074`  
		Last Modified: Tue, 25 Apr 2017 18:20:17 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cae4f1996235e8a1a8984586cd852ee433cad01aa6f13aede7a2873e8feba10`  
		Last Modified: Tue, 25 Apr 2017 18:20:17 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1-alpine`

```console
$ docker pull influxdb@sha256:f548a3d0d670123fd58808042bd094acc9db79da6a0a25ce0a21e3c029dadbea
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12912021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0954e67c84f065e30a4e5d3d722cbf337ccfaba0e03f6a1e1ae8f051308d78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 12 Apr 2017 18:58:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Apr 2017 18:58:25 GMT
ENV INFLUXDB_VERSION=1.1.4
# Wed, 12 Apr 2017 18:58:35 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 12 Apr 2017 18:58:46 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 12 Apr 2017 18:58:47 GMT
EXPOSE 8086/tcp
# Wed, 12 Apr 2017 18:58:48 GMT
VOLUME [/var/lib/influxdb]
# Wed, 12 Apr 2017 18:58:49 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 12 Apr 2017 18:59:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 18:59:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827570184fa82dc6defc05bcf5838dba590096d8add32bb847191bd7232cfcba`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc4cc609f441185fc8f90dd9fee82b71e523e3f844dc793d377c105a0396a21`  
		Last Modified: Wed, 12 Apr 2017 19:02:06 GMT  
		Size: 11.0 MB (11006187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861066707d634718449ab92ce127cbf43b473f4db29343748e89dacda4eb396`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f813f04271c6e9ca0c77aaa3a16ab6619db56a3322cdaac6c8857f2ff1e9a44`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.4-alpine`

```console
$ docker pull influxdb@sha256:f548a3d0d670123fd58808042bd094acc9db79da6a0a25ce0a21e3c029dadbea
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12912021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0954e67c84f065e30a4e5d3d722cbf337ccfaba0e03f6a1e1ae8f051308d78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 12 Apr 2017 18:58:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Apr 2017 18:58:25 GMT
ENV INFLUXDB_VERSION=1.1.4
# Wed, 12 Apr 2017 18:58:35 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 12 Apr 2017 18:58:46 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 12 Apr 2017 18:58:47 GMT
EXPOSE 8086/tcp
# Wed, 12 Apr 2017 18:58:48 GMT
VOLUME [/var/lib/influxdb]
# Wed, 12 Apr 2017 18:58:49 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 12 Apr 2017 18:59:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 18:59:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827570184fa82dc6defc05bcf5838dba590096d8add32bb847191bd7232cfcba`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc4cc609f441185fc8f90dd9fee82b71e523e3f844dc793d377c105a0396a21`  
		Last Modified: Wed, 12 Apr 2017 19:02:06 GMT  
		Size: 11.0 MB (11006187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861066707d634718449ab92ce127cbf43b473f4db29343748e89dacda4eb396`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f813f04271c6e9ca0c77aaa3a16ab6619db56a3322cdaac6c8857f2ff1e9a44`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2`

```console
$ docker pull influxdb@sha256:7dddf03376348876ed4bdf33d6dfa3326f45a2bae0930dbd80781a374eb519bc
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b868946bae25d6a19efc0d21dbf9afbeaa19791042daa16e2ccb7f2bed9513`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:25:06 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 24 Apr 2017 23:35:39 GMT
ENV INFLUXDB_VERSION=1.2.2
# Mon, 24 Apr 2017 23:35:42 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Mon, 24 Apr 2017 23:35:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Mon, 24 Apr 2017 23:35:43 GMT
EXPOSE 8086/tcp
# Mon, 24 Apr 2017 23:35:44 GMT
VOLUME [/var/lib/influxdb]
# Mon, 24 Apr 2017 23:35:45 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Mon, 24 Apr 2017 23:35:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 23:35:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4715d1852381431f1f56c8cc181c1e32e13bfcf83cbee61bad195b55af9b5d`  
		Last Modified: Tue, 25 Apr 2017 16:56:35 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7904e804e09887d16afe67c3e352489d0453f3508e31adb6aaace240b6788e`  
		Last Modified: Tue, 25 Apr 2017 18:21:08 GMT  
		Size: 17.5 MB (17484992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6881b8006269fc58c4a731351ccc5d980b2f74b9ede85a6e49794bfb11cdf7`  
		Last Modified: Tue, 25 Apr 2017 18:21:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7054bee9aa6529f21bf4eb924be6ec8229cfcc8c3b290e951d1f764cacacb0`  
		Last Modified: Tue, 25 Apr 2017 18:21:02 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.2`

```console
$ docker pull influxdb@sha256:7dddf03376348876ed4bdf33d6dfa3326f45a2bae0930dbd80781a374eb519bc
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b868946bae25d6a19efc0d21dbf9afbeaa19791042daa16e2ccb7f2bed9513`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:25:06 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 24 Apr 2017 23:35:39 GMT
ENV INFLUXDB_VERSION=1.2.2
# Mon, 24 Apr 2017 23:35:42 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Mon, 24 Apr 2017 23:35:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Mon, 24 Apr 2017 23:35:43 GMT
EXPOSE 8086/tcp
# Mon, 24 Apr 2017 23:35:44 GMT
VOLUME [/var/lib/influxdb]
# Mon, 24 Apr 2017 23:35:45 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Mon, 24 Apr 2017 23:35:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 23:35:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4715d1852381431f1f56c8cc181c1e32e13bfcf83cbee61bad195b55af9b5d`  
		Last Modified: Tue, 25 Apr 2017 16:56:35 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7904e804e09887d16afe67c3e352489d0453f3508e31adb6aaace240b6788e`  
		Last Modified: Tue, 25 Apr 2017 18:21:08 GMT  
		Size: 17.5 MB (17484992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6881b8006269fc58c4a731351ccc5d980b2f74b9ede85a6e49794bfb11cdf7`  
		Last Modified: Tue, 25 Apr 2017 18:21:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7054bee9aa6529f21bf4eb924be6ec8229cfcc8c3b290e951d1f764cacacb0`  
		Last Modified: Tue, 25 Apr 2017 18:21:02 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:7dddf03376348876ed4bdf33d6dfa3326f45a2bae0930dbd80781a374eb519bc
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b868946bae25d6a19efc0d21dbf9afbeaa19791042daa16e2ccb7f2bed9513`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:25:06 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 24 Apr 2017 23:35:39 GMT
ENV INFLUXDB_VERSION=1.2.2
# Mon, 24 Apr 2017 23:35:42 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Mon, 24 Apr 2017 23:35:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Mon, 24 Apr 2017 23:35:43 GMT
EXPOSE 8086/tcp
# Mon, 24 Apr 2017 23:35:44 GMT
VOLUME [/var/lib/influxdb]
# Mon, 24 Apr 2017 23:35:45 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Mon, 24 Apr 2017 23:35:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 23:35:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4715d1852381431f1f56c8cc181c1e32e13bfcf83cbee61bad195b55af9b5d`  
		Last Modified: Tue, 25 Apr 2017 16:56:35 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7904e804e09887d16afe67c3e352489d0453f3508e31adb6aaace240b6788e`  
		Last Modified: Tue, 25 Apr 2017 18:21:08 GMT  
		Size: 17.5 MB (17484992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6881b8006269fc58c4a731351ccc5d980b2f74b9ede85a6e49794bfb11cdf7`  
		Last Modified: Tue, 25 Apr 2017 18:21:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7054bee9aa6529f21bf4eb924be6ec8229cfcc8c3b290e951d1f764cacacb0`  
		Last Modified: Tue, 25 Apr 2017 18:21:02 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:300f68ddccd5473e00d7d78ff78034f677bb09e24ecf639d94e8da4151b2a6ac
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14139871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4a9b302ccfe3b2be68a806607ecb7f74d23d352936e96bfb39a61e5bfdc3da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 12 Apr 2017 18:58:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Apr 2017 18:59:28 GMT
ENV INFLUXDB_VERSION=1.2.2
# Wed, 12 Apr 2017 18:59:36 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 12 Apr 2017 18:59:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 12 Apr 2017 18:59:50 GMT
EXPOSE 8086/tcp
# Wed, 12 Apr 2017 18:59:51 GMT
VOLUME [/var/lib/influxdb]
# Wed, 12 Apr 2017 18:59:52 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 12 Apr 2017 19:00:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 19:00:10 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827570184fa82dc6defc05bcf5838dba590096d8add32bb847191bd7232cfcba`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b583d623a2ff9a836bd0da97e7625f4fa4123bd8e2d80d03f743922f64cba0`  
		Last Modified: Wed, 12 Apr 2017 19:04:34 GMT  
		Size: 12.2 MB (12234041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b5c66dcdfcaecb9c3e769e1e8599eafe4647dafc829ab26fdf9822cf2faeb0`  
		Last Modified: Wed, 12 Apr 2017 19:04:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ddc195af58b8a03aca74e7bedfedcaba906a3302fa345223bc3ec400af1dfb`  
		Last Modified: Wed, 12 Apr 2017 19:04:30 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.2-alpine`

```console
$ docker pull influxdb@sha256:300f68ddccd5473e00d7d78ff78034f677bb09e24ecf639d94e8da4151b2a6ac
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14139871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4a9b302ccfe3b2be68a806607ecb7f74d23d352936e96bfb39a61e5bfdc3da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 12 Apr 2017 18:58:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Apr 2017 18:59:28 GMT
ENV INFLUXDB_VERSION=1.2.2
# Wed, 12 Apr 2017 18:59:36 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 12 Apr 2017 18:59:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 12 Apr 2017 18:59:50 GMT
EXPOSE 8086/tcp
# Wed, 12 Apr 2017 18:59:51 GMT
VOLUME [/var/lib/influxdb]
# Wed, 12 Apr 2017 18:59:52 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 12 Apr 2017 19:00:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 19:00:10 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827570184fa82dc6defc05bcf5838dba590096d8add32bb847191bd7232cfcba`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b583d623a2ff9a836bd0da97e7625f4fa4123bd8e2d80d03f743922f64cba0`  
		Last Modified: Wed, 12 Apr 2017 19:04:34 GMT  
		Size: 12.2 MB (12234041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b5c66dcdfcaecb9c3e769e1e8599eafe4647dafc829ab26fdf9822cf2faeb0`  
		Last Modified: Wed, 12 Apr 2017 19:04:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ddc195af58b8a03aca74e7bedfedcaba906a3302fa345223bc3ec400af1dfb`  
		Last Modified: Wed, 12 Apr 2017 19:04:30 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:300f68ddccd5473e00d7d78ff78034f677bb09e24ecf639d94e8da4151b2a6ac
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14139871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4a9b302ccfe3b2be68a806607ecb7f74d23d352936e96bfb39a61e5bfdc3da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 12 Apr 2017 18:58:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Apr 2017 18:59:28 GMT
ENV INFLUXDB_VERSION=1.2.2
# Wed, 12 Apr 2017 18:59:36 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 12 Apr 2017 18:59:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 12 Apr 2017 18:59:50 GMT
EXPOSE 8086/tcp
# Wed, 12 Apr 2017 18:59:51 GMT
VOLUME [/var/lib/influxdb]
# Wed, 12 Apr 2017 18:59:52 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 12 Apr 2017 19:00:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 19:00:10 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827570184fa82dc6defc05bcf5838dba590096d8add32bb847191bd7232cfcba`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b583d623a2ff9a836bd0da97e7625f4fa4123bd8e2d80d03f743922f64cba0`  
		Last Modified: Wed, 12 Apr 2017 19:04:34 GMT  
		Size: 12.2 MB (12234041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b5c66dcdfcaecb9c3e769e1e8599eafe4647dafc829ab26fdf9822cf2faeb0`  
		Last Modified: Wed, 12 Apr 2017 19:04:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ddc195af58b8a03aca74e7bedfedcaba906a3302fa345223bc3ec400af1dfb`  
		Last Modified: Wed, 12 Apr 2017 19:04:30 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
