<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10`](#postgres10)
-	[`postgres:10.1`](#postgres101)
-	[`postgres:10.1-alpine`](#postgres101-alpine)
-	[`postgres:10-alpine`](#postgres10-alpine)
-	[`postgres:9`](#postgres9)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.20`](#postgres9320)
-	[`postgres:9.3.20-alpine`](#postgres9320-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.15`](#postgres9415)
-	[`postgres:9.4.15-alpine`](#postgres9415-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.10`](#postgres9510)
-	[`postgres:9.5.10-alpine`](#postgres9510-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9.6.6`](#postgres966)
-	[`postgres:9.6.6-alpine`](#postgres966-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:latest`](#postgreslatest)

## `postgres:10`

```console
$ docker pull postgres@sha256:7d2245fc62ef0b12788e6f764f8f8a14021265c2607b40af772063fdd1341eca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:10` - linux; amd64

```console
$ docker pull postgres@sha256:df5b5545e937ab152f2cf401fccb515d49363dfce1333c4b8b2580b6c0bbc207
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116693158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec61d13c85666651ff092b89d46ae958d81c7f3d387ed91ae5c530a38b9896e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:04:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:04:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:04:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:04:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:04:44 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:04:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:04:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:04:48 GMT
ENV PG_MAJOR=10
# Tue, 12 Dec 2017 06:04:48 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 12 Dec 2017 06:05:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:05:11 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:05:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:05:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 12 Dec 2017 06:05:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:05:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:05:13 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:05:13 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:05:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:05:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:05:14 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:05:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ec0e6c372cb6a90b3c04cab7c4134482753e799da4c656f788d7cd49e96518`  
		Last Modified: Tue, 12 Dec 2017 06:14:23 GMT  
		Size: 6.9 MB (6920957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1542fb91f3cd6043831f02c687a7dbfd4d379887287f397fc6cfb6288cccd3`  
		Last Modified: Tue, 12 Dec 2017 06:14:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7195e6423888bfbdb8384d7fded1fa5c7db1699a30ba5058cf48ce3abab3b63`  
		Last Modified: Tue, 12 Dec 2017 06:14:18 GMT  
		Size: 956.7 KB (956678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95424deca6a23c0774b150aac53a17ccc9a1fdcb33d20e9db0c74aa5b2ac5995`  
		Last Modified: Tue, 12 Dec 2017 06:14:20 GMT  
		Size: 6.6 MB (6577482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7d4b3a4ce29f536e447c68e63cb887ac105090f61ee19754495787afb52077`  
		Last Modified: Tue, 12 Dec 2017 06:14:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbde41d4a8cce145353a8a71a3f19e3d3085c8996636a92bf7a4f022f93f72f5`  
		Last Modified: Tue, 12 Dec 2017 06:14:17 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880120b92addb9a725ed7733fa121c40f187680f966752406dc930d687705245`  
		Last Modified: Tue, 12 Dec 2017 06:14:27 GMT  
		Size: 57.1 MB (57100544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a217c784089e11313d9f916e4d99b3b200e425a3c7dde0a553a169bc00b66a7`  
		Last Modified: Tue, 12 Dec 2017 06:14:14 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d581543fe8e7a594c6486145bd27bd6c6d41dffd273e27fb843b094f430f4258`  
		Last Modified: Tue, 12 Dec 2017 06:14:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5eff8940bb05426f577617765c6c11387d73f67f430cd9cefbc6fbefdc99f16`  
		Last Modified: Tue, 12 Dec 2017 06:14:14 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462d60a56b09019ef6af979504a8c2d7a2a712a05d94b89f8450ce9931b954ac`  
		Last Modified: Tue, 12 Dec 2017 06:14:14 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135fa6b9c139781e8fa2ab31983acab3e5a25647f81bc5ebb3bbb3b49a1c1ba6`  
		Last Modified: Tue, 12 Dec 2017 06:14:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v5

```console
$ docker pull postgres@sha256:ff7aeead5c6ec708e09ecaeff5ecf10c36b4467ee824f2f419274732fce519f3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116012022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:586d2af983fe6bc6f97145ce77f5956e6549e9e057e4697457fa592eea1e241a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:38:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:38:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:38:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:39:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:39:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:39:35 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:39:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 06:38:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 06:38:43 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 07:38:38 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 07:58:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 07:58:10 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 07:58:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 07:58:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 07:58:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 07:58:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 07:58:12 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 07:38:37 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 07:38:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 07:38:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 07:38:39 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 07:38:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b3077bf3f73016525600577a9af11dc0a121689a44962aa2a391a25bfe61b8`  
		Last Modified: Sat, 04 Nov 2017 06:58:58 GMT  
		Size: 6.7 MB (6654541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5c506d0be5e01938015781b0004da2cff7b1154a00ea106e452bb2f9a13b0e`  
		Last Modified: Sat, 04 Nov 2017 06:58:56 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed1b94871e601e57d5b0217cfa42640ef4848d62264f3f13d14fe08284135f`  
		Last Modified: Sat, 04 Nov 2017 06:58:56 GMT  
		Size: 946.7 KB (946688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a26ac5770464d510a8128689a44a9d9ce54a7a35383873a48d27661fbd96325`  
		Last Modified: Sat, 04 Nov 2017 06:58:58 GMT  
		Size: 6.6 MB (6577408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c3ae6fdf9b4a2d3b0e63acdfb84c46245285977071c811937477e14911079c`  
		Last Modified: Sat, 04 Nov 2017 06:58:55 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cd43c696a6e5b07032bbb8b3b7f634ce6e7fa573d13841d8e9cb083843cba5`  
		Last Modified: Sat, 04 Nov 2017 06:58:55 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a4d5a0b76aabb4c88e26649e17c0fdde6faf9cc5815ae51864acec3bbd0310`  
		Last Modified: Tue, 14 Nov 2017 09:11:14 GMT  
		Size: 58.0 MB (58001553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8208339cbbdb347b53cebea4ec9d4e2beb0371b0953b98098c9b0cce2cd1d35`  
		Last Modified: Tue, 14 Nov 2017 09:10:55 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f21aad6c4d3539cba8c65fa6000a1870520bad24dbc9f20491045d8d5d120c`  
		Last Modified: Tue, 14 Nov 2017 09:10:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f631eede17369004890bf3b3acfaae7dfb7e4a662ce0857102dfe35b238c427`  
		Last Modified: Tue, 14 Nov 2017 09:10:56 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c8edec6e0f49d1a642cbcf64c5eb096fd48f4c11ae5d07b30de35fddc2ec6`  
		Last Modified: Thu, 16 Nov 2017 07:39:03 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052122d0d696b53aa75cbc8dcdd6fd3565aa7296596c60bad5828cd355fcb1be`  
		Last Modified: Thu, 16 Nov 2017 07:39:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v7

```console
$ docker pull postgres@sha256:4aecfac04d231d0105616f9d52c965f514a59ebd7f6dc1136e130e48a1ebf2fe
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111941348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b34ded16f0eaf6181b56e3ee0a51c718798f2bdf360929e2537a78b62643008c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:38:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:38:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:38:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:39:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:39:11 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:39:11 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:39:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:39:16 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 03:39:17 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 04:38:41 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 04:55:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 04:55:26 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 04:55:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 04:55:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 04:55:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 04:55:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 04:55:29 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 04:38:44 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 04:38:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 04:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 04:38:45 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 04:38:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7412293e32a6eab79bcf67d1c42a07e0cd093f37efb5d0acdf4240bed3a10fc`  
		Last Modified: Fri, 03 Nov 2017 05:04:16 GMT  
		Size: 6.3 MB (6291663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63fea13c7a3ca32a37fac0d2c81e3238a0ae1e1d82fada43f18ba74f2124ac1`  
		Last Modified: Fri, 03 Nov 2017 05:04:14 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f359ad5335151af40906626e99f3d685d0cc94140c27dadf26f9a41b785289b9`  
		Last Modified: Fri, 03 Nov 2017 05:04:14 GMT  
		Size: 931.2 KB (931217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733b3ff93d7813504f2efa3894d096791fd58b25372da03a6f19687fdbc33290`  
		Last Modified: Fri, 03 Nov 2017 05:04:16 GMT  
		Size: 6.6 MB (6577451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5739741fe9053bb85641af4e1bbe2967e8bdc8bd5ae7d8955fc2abe22d8dd1`  
		Last Modified: Fri, 03 Nov 2017 05:04:13 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43aaf60b5cc61e378b9a92a3eb96fee297bb212bb1428b20fd8a4146a1790d53`  
		Last Modified: Fri, 03 Nov 2017 05:04:13 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dad7230b4c512750bff98d30f4ed51c2cfa55ff8b11720683fac64bc896f1f`  
		Last Modified: Tue, 14 Nov 2017 06:02:38 GMT  
		Size: 56.3 MB (56283144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3da4b7a0dbeb61d41233a124db17a4e45845144ff88df4b16c9782c2ed27909`  
		Last Modified: Tue, 14 Nov 2017 06:02:20 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479b9ae71e1e18e27dbee907a25ef2391faebc4e56a312ce9cc1fc9e33e0988c`  
		Last Modified: Tue, 14 Nov 2017 06:02:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a55dbbc88397362b5ca5c76658bece9443bee84a25df116779800abcc76bf29`  
		Last Modified: Tue, 14 Nov 2017 06:02:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad239358f9cfed8e946b7d40baea68a45212e42a20acfc458fbc7dd3a15f2e26`  
		Last Modified: Thu, 16 Nov 2017 04:39:11 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0ab6dd7d0cc1c49f33af21e8dc3e263c2a32d8705eafc594bea5e813ea4ed0`  
		Last Modified: Thu, 16 Nov 2017 04:39:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:b281a84de862ea45534653ebfb8c6223f915e192e39ff1dd6688c5f1ef8b2916
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113973313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057648157ba1e9dea3692397feefb7d41bb28472cacc388b75cf8fe0912b70be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:21:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:21:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:21:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:22:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:23:00 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:23:01 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:23:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:23:07 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:23:07 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:21:18 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 15:50:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:50:53 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:50:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:50:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 15:50:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:50:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:50:59 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:21:19 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:21:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:21:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:21:22 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:21:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6006bf2895eca4960480791277950a3160efbc991c201d91159b7729b9a00402`  
		Last Modified: Fri, 03 Nov 2017 16:51:06 GMT  
		Size: 6.5 MB (6495750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d783ba69183e8bde8039643e4a0c1d46d0037932ab82ea19fc408250ba0da16`  
		Last Modified: Fri, 03 Nov 2017 16:51:04 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471692f3ee2826bb20945cefcc2f79e8bb92ef1888b0cf46604427a9be52e8aa`  
		Last Modified: Fri, 03 Nov 2017 16:51:03 GMT  
		Size: 924.2 KB (924191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e3d8ce34bf14405ef676fd43d3dc000865f8ff9cd6eea8f8e3fcf8d2e21bb6`  
		Last Modified: Fri, 03 Nov 2017 16:51:05 GMT  
		Size: 6.6 MB (6577298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f48a2da1e48404813f6cb3068af920b42b688e8dd6bd200afe1bd3ddd1258a`  
		Last Modified: Fri, 03 Nov 2017 16:51:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb97c373e4ef40799fd5629d8b02a3e919d2956088a670535c0ee6c8be45c3`  
		Last Modified: Fri, 03 Nov 2017 16:51:02 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9344e69a5b97035d37a0f6ed40b48ca9196bf199be52532b32dc2d1d7b0077`  
		Last Modified: Tue, 14 Nov 2017 17:51:12 GMT  
		Size: 57.0 MB (57048475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9396b417eb86df06e6977db6baf5e0613f59fd05edf222ea59e04af0d3a7038`  
		Last Modified: Tue, 14 Nov 2017 17:50:49 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d4a30d5749061c958536c05c1ba0b1f6f23f51397c551dae60b34265347c`  
		Last Modified: Tue, 14 Nov 2017 17:50:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4792494a786923df137d68e98eacd5cfbcc19c330342fb04836c881582462b`  
		Last Modified: Tue, 14 Nov 2017 17:50:49 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892b16aa48b6700e0a3aa8bc125c5211b59eb9ee857021b687879e9828dbb30d`  
		Last Modified: Thu, 16 Nov 2017 15:22:17 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbea65c7e243c01a2e0dae7b46c23582bf6eb837211ada0b7fc15fe9f8ebc26`  
		Last Modified: Thu, 16 Nov 2017 15:22:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; 386

```console
$ docker pull postgres@sha256:b0b45f8d59b9e9e833897db205136389dbf22b06776a25bca0cfc3c9a25a9b8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118765063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80bb44289fb48016b98375253f43b79adcc99c5e0b5bb1adc8b1abbebf0cb659`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:03:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:03:19 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:03:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:03:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:03:41 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:03:41 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:03:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:03:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:03:46 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:03:21 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 15:04:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:04:11 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:04:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:04:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 15:04:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:04:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:04:13 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:00:45 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:00:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:00:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:00:47 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:00:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1626b4d4017742dbf6b30e24a0929065d8a921d6e6630872547e7c120ba38900`  
		Last Modified: Fri, 03 Nov 2017 14:20:05 GMT  
		Size: 7.2 MB (7225445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ce6213a0de78ac8797f0695f1f46837940fed4e55f376d094051102f014896`  
		Last Modified: Fri, 03 Nov 2017 14:20:03 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646844a02e9a53507e5e7b1a2212a80fc235dc23ec0c3f946a1aea02202cbc2c`  
		Last Modified: Fri, 03 Nov 2017 14:20:01 GMT  
		Size: 936.4 KB (936405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ceebd4bf935246ed6ff130c29ca5005ee9516151bf7ee685a2999f5856ccf7`  
		Last Modified: Fri, 03 Nov 2017 14:20:04 GMT  
		Size: 6.6 MB (6577411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63de9c94c2a461802e84e2d22ab1ffcb66159cbda2c0997559cc732e11bc0d08`  
		Last Modified: Fri, 03 Nov 2017 14:20:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16f0f604d3aef75e0884f113021a6215bb3abcae9f776aa421694d77cdd623f`  
		Last Modified: Fri, 03 Nov 2017 14:20:00 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00f88085ddccbb0e60d2c515383d690ef7fa807219df6bc4a8ca641a47bed6c`  
		Last Modified: Tue, 14 Nov 2017 15:22:23 GMT  
		Size: 58.2 MB (58176265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815e913847e24f84e513bd88bc50b23b771d2a73a1968ca07826e3dd74f2bf57`  
		Last Modified: Tue, 14 Nov 2017 15:22:08 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0873ac3b2e4255e521f5136e9dc5138ea223d3280e6ffae29816bd045a1f58bf`  
		Last Modified: Tue, 14 Nov 2017 15:22:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7f96ca8854c7705f3785b7fccb87575b85d0b29f8581f42dfabd52c57fe3d`  
		Last Modified: Tue, 14 Nov 2017 15:22:09 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef66ab93cb40c3b3d5c8854719ce8ea6d9a8ef26fc035e4189e1678881b69f2`  
		Last Modified: Thu, 16 Nov 2017 15:01:13 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbedcae6d3ea36c5eb8b4a54a27a31e9b21b05f498a0db136920f7f1edba3e0a`  
		Last Modified: Thu, 16 Nov 2017 15:01:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; ppc64le

```console
$ docker pull postgres@sha256:dbabeeb33d0e1cea2d37e43ef70cafec26b8bf7e83f4a88a944ae3966145b3a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116627045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f54d875230013e4293cea6f2ae084a42187823e864fd61a1bf353bd9ce41f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:43:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:43:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:43:22 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:45:03 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:45:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:45:23 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:45:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:45:35 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 22:45:37 GMT
ENV PG_MAJOR=10
# Wed, 15 Nov 2017 21:31:57 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Wed, 15 Nov 2017 21:38:43 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 21:38:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 21:39:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 21:39:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 15 Nov 2017 21:39:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 21:39:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 21:39:13 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 23:01:25 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 23:01:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 23:01:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 23:01:31 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 23:01:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ec4c541921a18089b05dafd6a5bc4bcdd659a4b6ed8a2db65aef693dc91dc8`  
		Last Modified: Thu, 02 Nov 2017 23:18:36 GMT  
		Size: 6.8 MB (6783615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35b77f411bbe70712464106fe2a656e75e968508a6c02c454b1c20014d74f4`  
		Last Modified: Thu, 02 Nov 2017 23:18:34 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06a1ecb1b02b6205f6e7de8d6a97dec9b0c9ba93d939a7294c92dfa03deb05e`  
		Last Modified: Thu, 02 Nov 2017 23:18:32 GMT  
		Size: 925.6 KB (925571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1753bdd8532caba88b840a32c7b1bbdd16f8234bdc88a6774b4f4140834eb72e`  
		Last Modified: Thu, 02 Nov 2017 23:18:33 GMT  
		Size: 6.6 MB (6577778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b30a86a5255b95208c7afe87cbf67686bb92e27c270c2834dec1a946ba6309`  
		Last Modified: Thu, 02 Nov 2017 23:18:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d02c734343c1dc373e7fe7c932f1f5bdc394879543b889e2c2d497a64099`  
		Last Modified: Thu, 02 Nov 2017 23:18:31 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d92752e85abfa137004731189f9988f90db36597d64a4d441b6c71ac91ff50`  
		Last Modified: Wed, 15 Nov 2017 22:06:44 GMT  
		Size: 56.9 MB (56945776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8aa56d7694556600a26bfbf39e37e1467f4cbbc0f38d2973217aee7fb8c5704`  
		Last Modified: Wed, 15 Nov 2017 22:06:27 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9e1f66517bbb78445b4ce71e73c66a40108b47b2ed0447f9a16a4611423fa0`  
		Last Modified: Wed, 15 Nov 2017 22:06:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451ff1693ec8bc841a9d0f12a7a51e51b320eecd426d8682e3e4d7e17b81e910`  
		Last Modified: Wed, 15 Nov 2017 22:06:27 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a5b0ece4b4033abb0c6c3fdc322c075dd1165339bd9387826ad65931aa3f07`  
		Last Modified: Thu, 16 Nov 2017 23:02:04 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f26502774115d4bc30a0e3ba432810e5592ab28176c47261b9f35dc9ad21c84`  
		Last Modified: Thu, 16 Nov 2017 23:02:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; s390x

```console
$ docker pull postgres@sha256:1227ba0de6c5514ec08af3092d2fdefcc6555a9fd1a709c969d7a0d5f207bec5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57686380d2563db1c8f553cc3dc3a496ab37308755d4342c969b5b99cbdbaa46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:25:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:25:49 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:25:49 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:26:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:26:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:26:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:26:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:26:11 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 09:26:11 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 10:25:37 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 10:35:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 10:35:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 10:35:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 10:35:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 10:35:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 10:35:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 10:35:51 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 10:25:36 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:25:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 10:25:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 10:25:38 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 10:25:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b1fe28bfde608f5f308633a28245b5d2db64cf1fa719a6699406eec0371bfc`  
		Last Modified: Fri, 03 Nov 2017 10:12:00 GMT  
		Size: 7.0 MB (6952724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465a4c0d5a36ff8deee95627311cd321d05be560de2dbb5710ace72c5cf528b7`  
		Last Modified: Fri, 03 Nov 2017 10:11:58 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b97f44e605445ae839b25534df29b996749daaa2447a4e768347da2055b69e`  
		Last Modified: Fri, 03 Nov 2017 10:11:58 GMT  
		Size: 942.3 KB (942322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7ff9ca4ba12ff4ec14a9a8ab655baa4229eaf7d65e5203ca432cc8379f191c`  
		Last Modified: Fri, 03 Nov 2017 10:12:00 GMT  
		Size: 6.6 MB (6598541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ab164d28097f8dd6adb06a8a68aa2da9e42e926c6afe3ef769e10f03527c8d`  
		Last Modified: Fri, 03 Nov 2017 10:11:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0dc31541d1fb4ec570c09916c8ee293241678e1ff04532b7fa975fb6982141`  
		Last Modified: Fri, 03 Nov 2017 10:11:57 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851d3d656ffd76b73b32ddc3650d0169475d79f10f502dd90a829f93eb5d37b5`  
		Last Modified: Tue, 14 Nov 2017 11:13:01 GMT  
		Size: 59.4 MB (59405367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba2521c6712ff5e726a6000823c6035881fb527dfbee8ca9d9ab5d190d93c97`  
		Last Modified: Tue, 14 Nov 2017 11:12:51 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193fc952bf3a0b59da2ad1f5b0906b556f65f1b7490c2a810cfe5fc8752e98ae`  
		Last Modified: Tue, 14 Nov 2017 11:12:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908a8fafced46d7c806a447072d1999c4b79c4c2fa2e73231866794e4fc490c2`  
		Last Modified: Tue, 14 Nov 2017 11:12:50 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a38f4227aaa1d3d00c5a3981d5c0e1c078064758277bb22d39fca0358bc2c4`  
		Last Modified: Thu, 16 Nov 2017 10:26:08 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b5e5d8a2c5780e6239d57119831e3668bb6c95d928a27f3c8f7e82b37f7f67`  
		Last Modified: Thu, 16 Nov 2017 10:26:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.1`

```console
$ docker pull postgres@sha256:7d2245fc62ef0b12788e6f764f8f8a14021265c2607b40af772063fdd1341eca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:10.1` - linux; amd64

```console
$ docker pull postgres@sha256:df5b5545e937ab152f2cf401fccb515d49363dfce1333c4b8b2580b6c0bbc207
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116693158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec61d13c85666651ff092b89d46ae958d81c7f3d387ed91ae5c530a38b9896e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:04:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:04:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:04:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:04:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:04:44 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:04:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:04:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:04:48 GMT
ENV PG_MAJOR=10
# Tue, 12 Dec 2017 06:04:48 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 12 Dec 2017 06:05:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:05:11 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:05:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:05:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 12 Dec 2017 06:05:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:05:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:05:13 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:05:13 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:05:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:05:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:05:14 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:05:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ec0e6c372cb6a90b3c04cab7c4134482753e799da4c656f788d7cd49e96518`  
		Last Modified: Tue, 12 Dec 2017 06:14:23 GMT  
		Size: 6.9 MB (6920957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1542fb91f3cd6043831f02c687a7dbfd4d379887287f397fc6cfb6288cccd3`  
		Last Modified: Tue, 12 Dec 2017 06:14:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7195e6423888bfbdb8384d7fded1fa5c7db1699a30ba5058cf48ce3abab3b63`  
		Last Modified: Tue, 12 Dec 2017 06:14:18 GMT  
		Size: 956.7 KB (956678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95424deca6a23c0774b150aac53a17ccc9a1fdcb33d20e9db0c74aa5b2ac5995`  
		Last Modified: Tue, 12 Dec 2017 06:14:20 GMT  
		Size: 6.6 MB (6577482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7d4b3a4ce29f536e447c68e63cb887ac105090f61ee19754495787afb52077`  
		Last Modified: Tue, 12 Dec 2017 06:14:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbde41d4a8cce145353a8a71a3f19e3d3085c8996636a92bf7a4f022f93f72f5`  
		Last Modified: Tue, 12 Dec 2017 06:14:17 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880120b92addb9a725ed7733fa121c40f187680f966752406dc930d687705245`  
		Last Modified: Tue, 12 Dec 2017 06:14:27 GMT  
		Size: 57.1 MB (57100544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a217c784089e11313d9f916e4d99b3b200e425a3c7dde0a553a169bc00b66a7`  
		Last Modified: Tue, 12 Dec 2017 06:14:14 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d581543fe8e7a594c6486145bd27bd6c6d41dffd273e27fb843b094f430f4258`  
		Last Modified: Tue, 12 Dec 2017 06:14:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5eff8940bb05426f577617765c6c11387d73f67f430cd9cefbc6fbefdc99f16`  
		Last Modified: Tue, 12 Dec 2017 06:14:14 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462d60a56b09019ef6af979504a8c2d7a2a712a05d94b89f8450ce9931b954ac`  
		Last Modified: Tue, 12 Dec 2017 06:14:14 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135fa6b9c139781e8fa2ab31983acab3e5a25647f81bc5ebb3bbb3b49a1c1ba6`  
		Last Modified: Tue, 12 Dec 2017 06:14:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1` - linux; arm variant v5

```console
$ docker pull postgres@sha256:ff7aeead5c6ec708e09ecaeff5ecf10c36b4467ee824f2f419274732fce519f3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116012022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:586d2af983fe6bc6f97145ce77f5956e6549e9e057e4697457fa592eea1e241a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:38:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:38:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:38:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:39:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:39:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:39:35 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:39:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 06:38:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 06:38:43 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 07:38:38 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 07:58:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 07:58:10 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 07:58:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 07:58:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 07:58:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 07:58:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 07:58:12 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 07:38:37 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 07:38:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 07:38:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 07:38:39 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 07:38:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b3077bf3f73016525600577a9af11dc0a121689a44962aa2a391a25bfe61b8`  
		Last Modified: Sat, 04 Nov 2017 06:58:58 GMT  
		Size: 6.7 MB (6654541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5c506d0be5e01938015781b0004da2cff7b1154a00ea106e452bb2f9a13b0e`  
		Last Modified: Sat, 04 Nov 2017 06:58:56 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed1b94871e601e57d5b0217cfa42640ef4848d62264f3f13d14fe08284135f`  
		Last Modified: Sat, 04 Nov 2017 06:58:56 GMT  
		Size: 946.7 KB (946688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a26ac5770464d510a8128689a44a9d9ce54a7a35383873a48d27661fbd96325`  
		Last Modified: Sat, 04 Nov 2017 06:58:58 GMT  
		Size: 6.6 MB (6577408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c3ae6fdf9b4a2d3b0e63acdfb84c46245285977071c811937477e14911079c`  
		Last Modified: Sat, 04 Nov 2017 06:58:55 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cd43c696a6e5b07032bbb8b3b7f634ce6e7fa573d13841d8e9cb083843cba5`  
		Last Modified: Sat, 04 Nov 2017 06:58:55 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a4d5a0b76aabb4c88e26649e17c0fdde6faf9cc5815ae51864acec3bbd0310`  
		Last Modified: Tue, 14 Nov 2017 09:11:14 GMT  
		Size: 58.0 MB (58001553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8208339cbbdb347b53cebea4ec9d4e2beb0371b0953b98098c9b0cce2cd1d35`  
		Last Modified: Tue, 14 Nov 2017 09:10:55 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f21aad6c4d3539cba8c65fa6000a1870520bad24dbc9f20491045d8d5d120c`  
		Last Modified: Tue, 14 Nov 2017 09:10:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f631eede17369004890bf3b3acfaae7dfb7e4a662ce0857102dfe35b238c427`  
		Last Modified: Tue, 14 Nov 2017 09:10:56 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c8edec6e0f49d1a642cbcf64c5eb096fd48f4c11ae5d07b30de35fddc2ec6`  
		Last Modified: Thu, 16 Nov 2017 07:39:03 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052122d0d696b53aa75cbc8dcdd6fd3565aa7296596c60bad5828cd355fcb1be`  
		Last Modified: Thu, 16 Nov 2017 07:39:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1` - linux; arm variant v7

```console
$ docker pull postgres@sha256:4aecfac04d231d0105616f9d52c965f514a59ebd7f6dc1136e130e48a1ebf2fe
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111941348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b34ded16f0eaf6181b56e3ee0a51c718798f2bdf360929e2537a78b62643008c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:38:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:38:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:38:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:39:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:39:11 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:39:11 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:39:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:39:16 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 03:39:17 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 04:38:41 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 04:55:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 04:55:26 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 04:55:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 04:55:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 04:55:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 04:55:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 04:55:29 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 04:38:44 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 04:38:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 04:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 04:38:45 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 04:38:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7412293e32a6eab79bcf67d1c42a07e0cd093f37efb5d0acdf4240bed3a10fc`  
		Last Modified: Fri, 03 Nov 2017 05:04:16 GMT  
		Size: 6.3 MB (6291663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63fea13c7a3ca32a37fac0d2c81e3238a0ae1e1d82fada43f18ba74f2124ac1`  
		Last Modified: Fri, 03 Nov 2017 05:04:14 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f359ad5335151af40906626e99f3d685d0cc94140c27dadf26f9a41b785289b9`  
		Last Modified: Fri, 03 Nov 2017 05:04:14 GMT  
		Size: 931.2 KB (931217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733b3ff93d7813504f2efa3894d096791fd58b25372da03a6f19687fdbc33290`  
		Last Modified: Fri, 03 Nov 2017 05:04:16 GMT  
		Size: 6.6 MB (6577451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5739741fe9053bb85641af4e1bbe2967e8bdc8bd5ae7d8955fc2abe22d8dd1`  
		Last Modified: Fri, 03 Nov 2017 05:04:13 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43aaf60b5cc61e378b9a92a3eb96fee297bb212bb1428b20fd8a4146a1790d53`  
		Last Modified: Fri, 03 Nov 2017 05:04:13 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dad7230b4c512750bff98d30f4ed51c2cfa55ff8b11720683fac64bc896f1f`  
		Last Modified: Tue, 14 Nov 2017 06:02:38 GMT  
		Size: 56.3 MB (56283144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3da4b7a0dbeb61d41233a124db17a4e45845144ff88df4b16c9782c2ed27909`  
		Last Modified: Tue, 14 Nov 2017 06:02:20 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479b9ae71e1e18e27dbee907a25ef2391faebc4e56a312ce9cc1fc9e33e0988c`  
		Last Modified: Tue, 14 Nov 2017 06:02:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a55dbbc88397362b5ca5c76658bece9443bee84a25df116779800abcc76bf29`  
		Last Modified: Tue, 14 Nov 2017 06:02:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad239358f9cfed8e946b7d40baea68a45212e42a20acfc458fbc7dd3a15f2e26`  
		Last Modified: Thu, 16 Nov 2017 04:39:11 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0ab6dd7d0cc1c49f33af21e8dc3e263c2a32d8705eafc594bea5e813ea4ed0`  
		Last Modified: Thu, 16 Nov 2017 04:39:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:b281a84de862ea45534653ebfb8c6223f915e192e39ff1dd6688c5f1ef8b2916
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113973313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057648157ba1e9dea3692397feefb7d41bb28472cacc388b75cf8fe0912b70be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:21:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:21:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:21:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:22:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:23:00 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:23:01 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:23:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:23:07 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:23:07 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:21:18 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 15:50:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:50:53 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:50:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:50:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 15:50:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:50:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:50:59 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:21:19 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:21:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:21:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:21:22 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:21:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6006bf2895eca4960480791277950a3160efbc991c201d91159b7729b9a00402`  
		Last Modified: Fri, 03 Nov 2017 16:51:06 GMT  
		Size: 6.5 MB (6495750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d783ba69183e8bde8039643e4a0c1d46d0037932ab82ea19fc408250ba0da16`  
		Last Modified: Fri, 03 Nov 2017 16:51:04 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471692f3ee2826bb20945cefcc2f79e8bb92ef1888b0cf46604427a9be52e8aa`  
		Last Modified: Fri, 03 Nov 2017 16:51:03 GMT  
		Size: 924.2 KB (924191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e3d8ce34bf14405ef676fd43d3dc000865f8ff9cd6eea8f8e3fcf8d2e21bb6`  
		Last Modified: Fri, 03 Nov 2017 16:51:05 GMT  
		Size: 6.6 MB (6577298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f48a2da1e48404813f6cb3068af920b42b688e8dd6bd200afe1bd3ddd1258a`  
		Last Modified: Fri, 03 Nov 2017 16:51:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb97c373e4ef40799fd5629d8b02a3e919d2956088a670535c0ee6c8be45c3`  
		Last Modified: Fri, 03 Nov 2017 16:51:02 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9344e69a5b97035d37a0f6ed40b48ca9196bf199be52532b32dc2d1d7b0077`  
		Last Modified: Tue, 14 Nov 2017 17:51:12 GMT  
		Size: 57.0 MB (57048475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9396b417eb86df06e6977db6baf5e0613f59fd05edf222ea59e04af0d3a7038`  
		Last Modified: Tue, 14 Nov 2017 17:50:49 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d4a30d5749061c958536c05c1ba0b1f6f23f51397c551dae60b34265347c`  
		Last Modified: Tue, 14 Nov 2017 17:50:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4792494a786923df137d68e98eacd5cfbcc19c330342fb04836c881582462b`  
		Last Modified: Tue, 14 Nov 2017 17:50:49 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892b16aa48b6700e0a3aa8bc125c5211b59eb9ee857021b687879e9828dbb30d`  
		Last Modified: Thu, 16 Nov 2017 15:22:17 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbea65c7e243c01a2e0dae7b46c23582bf6eb837211ada0b7fc15fe9f8ebc26`  
		Last Modified: Thu, 16 Nov 2017 15:22:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1` - linux; 386

```console
$ docker pull postgres@sha256:b0b45f8d59b9e9e833897db205136389dbf22b06776a25bca0cfc3c9a25a9b8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118765063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80bb44289fb48016b98375253f43b79adcc99c5e0b5bb1adc8b1abbebf0cb659`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:03:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:03:19 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:03:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:03:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:03:41 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:03:41 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:03:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:03:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:03:46 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:03:21 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 15:04:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:04:11 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:04:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:04:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 15:04:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:04:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:04:13 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:00:45 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:00:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:00:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:00:47 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:00:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1626b4d4017742dbf6b30e24a0929065d8a921d6e6630872547e7c120ba38900`  
		Last Modified: Fri, 03 Nov 2017 14:20:05 GMT  
		Size: 7.2 MB (7225445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ce6213a0de78ac8797f0695f1f46837940fed4e55f376d094051102f014896`  
		Last Modified: Fri, 03 Nov 2017 14:20:03 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646844a02e9a53507e5e7b1a2212a80fc235dc23ec0c3f946a1aea02202cbc2c`  
		Last Modified: Fri, 03 Nov 2017 14:20:01 GMT  
		Size: 936.4 KB (936405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ceebd4bf935246ed6ff130c29ca5005ee9516151bf7ee685a2999f5856ccf7`  
		Last Modified: Fri, 03 Nov 2017 14:20:04 GMT  
		Size: 6.6 MB (6577411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63de9c94c2a461802e84e2d22ab1ffcb66159cbda2c0997559cc732e11bc0d08`  
		Last Modified: Fri, 03 Nov 2017 14:20:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16f0f604d3aef75e0884f113021a6215bb3abcae9f776aa421694d77cdd623f`  
		Last Modified: Fri, 03 Nov 2017 14:20:00 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00f88085ddccbb0e60d2c515383d690ef7fa807219df6bc4a8ca641a47bed6c`  
		Last Modified: Tue, 14 Nov 2017 15:22:23 GMT  
		Size: 58.2 MB (58176265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815e913847e24f84e513bd88bc50b23b771d2a73a1968ca07826e3dd74f2bf57`  
		Last Modified: Tue, 14 Nov 2017 15:22:08 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0873ac3b2e4255e521f5136e9dc5138ea223d3280e6ffae29816bd045a1f58bf`  
		Last Modified: Tue, 14 Nov 2017 15:22:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7f96ca8854c7705f3785b7fccb87575b85d0b29f8581f42dfabd52c57fe3d`  
		Last Modified: Tue, 14 Nov 2017 15:22:09 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef66ab93cb40c3b3d5c8854719ce8ea6d9a8ef26fc035e4189e1678881b69f2`  
		Last Modified: Thu, 16 Nov 2017 15:01:13 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbedcae6d3ea36c5eb8b4a54a27a31e9b21b05f498a0db136920f7f1edba3e0a`  
		Last Modified: Thu, 16 Nov 2017 15:01:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1` - linux; ppc64le

```console
$ docker pull postgres@sha256:dbabeeb33d0e1cea2d37e43ef70cafec26b8bf7e83f4a88a944ae3966145b3a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116627045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f54d875230013e4293cea6f2ae084a42187823e864fd61a1bf353bd9ce41f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:43:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:43:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:43:22 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:45:03 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:45:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:45:23 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:45:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:45:35 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 22:45:37 GMT
ENV PG_MAJOR=10
# Wed, 15 Nov 2017 21:31:57 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Wed, 15 Nov 2017 21:38:43 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 21:38:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 21:39:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 21:39:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 15 Nov 2017 21:39:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 21:39:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 21:39:13 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 23:01:25 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 23:01:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 23:01:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 23:01:31 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 23:01:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ec4c541921a18089b05dafd6a5bc4bcdd659a4b6ed8a2db65aef693dc91dc8`  
		Last Modified: Thu, 02 Nov 2017 23:18:36 GMT  
		Size: 6.8 MB (6783615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35b77f411bbe70712464106fe2a656e75e968508a6c02c454b1c20014d74f4`  
		Last Modified: Thu, 02 Nov 2017 23:18:34 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06a1ecb1b02b6205f6e7de8d6a97dec9b0c9ba93d939a7294c92dfa03deb05e`  
		Last Modified: Thu, 02 Nov 2017 23:18:32 GMT  
		Size: 925.6 KB (925571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1753bdd8532caba88b840a32c7b1bbdd16f8234bdc88a6774b4f4140834eb72e`  
		Last Modified: Thu, 02 Nov 2017 23:18:33 GMT  
		Size: 6.6 MB (6577778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b30a86a5255b95208c7afe87cbf67686bb92e27c270c2834dec1a946ba6309`  
		Last Modified: Thu, 02 Nov 2017 23:18:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d02c734343c1dc373e7fe7c932f1f5bdc394879543b889e2c2d497a64099`  
		Last Modified: Thu, 02 Nov 2017 23:18:31 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d92752e85abfa137004731189f9988f90db36597d64a4d441b6c71ac91ff50`  
		Last Modified: Wed, 15 Nov 2017 22:06:44 GMT  
		Size: 56.9 MB (56945776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8aa56d7694556600a26bfbf39e37e1467f4cbbc0f38d2973217aee7fb8c5704`  
		Last Modified: Wed, 15 Nov 2017 22:06:27 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9e1f66517bbb78445b4ce71e73c66a40108b47b2ed0447f9a16a4611423fa0`  
		Last Modified: Wed, 15 Nov 2017 22:06:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451ff1693ec8bc841a9d0f12a7a51e51b320eecd426d8682e3e4d7e17b81e910`  
		Last Modified: Wed, 15 Nov 2017 22:06:27 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a5b0ece4b4033abb0c6c3fdc322c075dd1165339bd9387826ad65931aa3f07`  
		Last Modified: Thu, 16 Nov 2017 23:02:04 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f26502774115d4bc30a0e3ba432810e5592ab28176c47261b9f35dc9ad21c84`  
		Last Modified: Thu, 16 Nov 2017 23:02:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1` - linux; s390x

```console
$ docker pull postgres@sha256:1227ba0de6c5514ec08af3092d2fdefcc6555a9fd1a709c969d7a0d5f207bec5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57686380d2563db1c8f553cc3dc3a496ab37308755d4342c969b5b99cbdbaa46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:25:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:25:49 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:25:49 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:26:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:26:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:26:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:26:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:26:11 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 09:26:11 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 10:25:37 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 10:35:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 10:35:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 10:35:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 10:35:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 10:35:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 10:35:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 10:35:51 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 10:25:36 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:25:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 10:25:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 10:25:38 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 10:25:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b1fe28bfde608f5f308633a28245b5d2db64cf1fa719a6699406eec0371bfc`  
		Last Modified: Fri, 03 Nov 2017 10:12:00 GMT  
		Size: 7.0 MB (6952724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465a4c0d5a36ff8deee95627311cd321d05be560de2dbb5710ace72c5cf528b7`  
		Last Modified: Fri, 03 Nov 2017 10:11:58 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b97f44e605445ae839b25534df29b996749daaa2447a4e768347da2055b69e`  
		Last Modified: Fri, 03 Nov 2017 10:11:58 GMT  
		Size: 942.3 KB (942322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7ff9ca4ba12ff4ec14a9a8ab655baa4229eaf7d65e5203ca432cc8379f191c`  
		Last Modified: Fri, 03 Nov 2017 10:12:00 GMT  
		Size: 6.6 MB (6598541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ab164d28097f8dd6adb06a8a68aa2da9e42e926c6afe3ef769e10f03527c8d`  
		Last Modified: Fri, 03 Nov 2017 10:11:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0dc31541d1fb4ec570c09916c8ee293241678e1ff04532b7fa975fb6982141`  
		Last Modified: Fri, 03 Nov 2017 10:11:57 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851d3d656ffd76b73b32ddc3650d0169475d79f10f502dd90a829f93eb5d37b5`  
		Last Modified: Tue, 14 Nov 2017 11:13:01 GMT  
		Size: 59.4 MB (59405367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba2521c6712ff5e726a6000823c6035881fb527dfbee8ca9d9ab5d190d93c97`  
		Last Modified: Tue, 14 Nov 2017 11:12:51 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193fc952bf3a0b59da2ad1f5b0906b556f65f1b7490c2a810cfe5fc8752e98ae`  
		Last Modified: Tue, 14 Nov 2017 11:12:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908a8fafced46d7c806a447072d1999c4b79c4c2fa2e73231866794e4fc490c2`  
		Last Modified: Tue, 14 Nov 2017 11:12:50 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a38f4227aaa1d3d00c5a3981d5c0e1c078064758277bb22d39fca0358bc2c4`  
		Last Modified: Thu, 16 Nov 2017 10:26:08 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b5e5d8a2c5780e6239d57119831e3668bb6c95d928a27f3c8f7e82b37f7f67`  
		Last Modified: Thu, 16 Nov 2017 10:26:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.1-alpine`

```console
$ docker pull postgres@sha256:a91afc88ea22cd33c74f9dadd6732a2841f9a2ba4f5bf15a0f29fb0b8cecf790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:10.1-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:93ceecf1b681885cc2a730f810e44183b1ffac87c277327dede00274c2a7c14b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14359851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022e3d66b3cdb4df18a29d2a5218d59d4499215cb4407b2309bcdc1ee44ad080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:06:35 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:06:40 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:06:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:06:41 GMT
ENV PG_MAJOR=10
# Mon, 04 Dec 2017 16:06:46 GMT
ENV PG_VERSION=10.1
# Mon, 04 Dec 2017 16:06:46 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Mon, 04 Dec 2017 16:09:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:09:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:09:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:09:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:09:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:09:51 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:09:56 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:09:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:10:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:10:02 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:10:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfc5560fd669eaededcf1c2874aed84c62a0f9337b877d91dfb096388ea6b4a`  
		Last Modified: Mon, 04 Dec 2017 16:23:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e7e7ad6776914ad71c090f88e281226aeddaa2804d0c42750f9352669ee8e2`  
		Last Modified: Mon, 04 Dec 2017 16:23:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95628b7931116d78bf1f3c8b9cd9c15f4d4ee1bc92aef9539a8815ef09c7f12`  
		Last Modified: Mon, 04 Dec 2017 16:23:04 GMT  
		Size: 12.4 MB (12358575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb8222c6c7b1013b011f5ab14ac0b86ba0d55fe0ebcc1d6389ef771a5961e82`  
		Last Modified: Mon, 04 Dec 2017 16:22:58 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898afc901fed2b7ba36a81c54b0ca95d160b9b3e86d1cb82ee2f01a7ff156401`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f581da30ddb019fc3b911efea8533a1cbcc36fe11c5508c8de3a0eb1b57f296`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beeb4a7049c2925b011e9413a167dd8d9669d282cfc4df9535e49e39cbf7abcc`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f76bad8a5b6e331da835a41787040edeb8bb87d7a790cbda6d8b461eade3b7`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:edaa769c7da3f89d5d870934f1f733f6daca42b1b10d7003e5f2116729b65621
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14081731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68ec80ca40fbff9e59403c849f98118a4d231ec619c75c9f7e812ff881ebc72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:28:00 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 05:28:01 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 05:28:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 05:28:02 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 00:36:18 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 00:36:18 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 00:37:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 00:37:59 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 00:38:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 00:38:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 00:38:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 00:38:01 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 00:36:18 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:36:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:36:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:36:19 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 00:36:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ee21f323722b4de6199fd75d7ac98af881df8745fa40ee9d05ac50b65bb0ee`  
		Last Modified: Thu, 26 Oct 2017 05:30:06 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08471e694908aa21aeb260899b548eb79de839a3b64892df07cc76799410bab`  
		Last Modified: Thu, 26 Oct 2017 05:30:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1ff89a8de664ab1ce8568a740713f9a837299cf8d01447f864977ee555840c`  
		Last Modified: Tue, 14 Nov 2017 00:38:16 GMT  
		Size: 12.1 MB (12105670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950f198523fc3b70204b52195509962e6748f4f58fad67766529f82f78e11ae`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc32db7b103d878fb5d78fda2583981a48d41fde041280ad6008779827a31da`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c034b568bdf4945ea7a9437a5c6d905fe9bd787249bb852252b33fbd38ae885`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6b624f06dc9916a4113d6c49c31b54b76497dd95999c24eee41ebfb6e555d`  
		Last Modified: Thu, 16 Nov 2017 00:36:25 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa371d66fd8904ddc4f021223c3900dd75952a869b29d6e33051d08e4b0fc41`  
		Last Modified: Thu, 16 Nov 2017 00:36:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a43ae608f38710b3b2defb6e9309f4072d1aa081851955bf9031b0b638c76901
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13580809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695f25bfc84b4c5b946069db5950c2be83fb897c0ab4ab894b9f0525b09f9951`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 14:21:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 14:21:07 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 14:21:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 14:21:09 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:51:31 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 15:51:31 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 15:55:37 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 15:55:39 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:55:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:55:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:55:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:55:43 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:21:40 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:21:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:21:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:21:43 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:21:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9279e12cd5e4d64ecccdaa1e2c84905721462be29e276e033e82dc8e9f9618`  
		Last Modified: Thu, 26 Oct 2017 14:26:09 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251fba6008fdbbfdbed7eb759d124fa5fb44d25bc358bba815e480506378d3fc`  
		Last Modified: Thu, 26 Oct 2017 14:26:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e449b574d4977f1570de6ae66b30a7c92f15a1c9f8400ee95d376a81c8295c`  
		Last Modified: Tue, 14 Nov 2017 17:52:16 GMT  
		Size: 11.7 MB (11656117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459c01fccfd4e472bfb19d74272b713b7e388311db5e1def5a7a14981b3267f6`  
		Last Modified: Tue, 14 Nov 2017 17:52:07 GMT  
		Size: 7.3 KB (7263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ae336bd6115adb35f0b5849a6a20a41bc91b4f3ca5a970bf4fbb8700b6dfb`  
		Last Modified: Tue, 14 Nov 2017 17:52:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b1178234700be6e9747d2bf04e3ffd432a5a2b71f88d817beb36cf3d2c2033`  
		Last Modified: Tue, 14 Nov 2017 17:52:08 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5ae31dfbeb08b3b3bb86b37a07ed2cb70a5668b5bd938ff49fcf69aef09d60`  
		Last Modified: Thu, 16 Nov 2017 15:23:14 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a571bc6c4200383fc65971aaeebf1a79c8cecf6e0b3bcffd0515247ba2ba55`  
		Last Modified: Thu, 16 Nov 2017 15:23:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1-alpine` - linux; 386

```console
$ docker pull postgres@sha256:ef4a4d798e880b3c0a8e9aa6df82060f7fb9357a154fe2171be0cc76d1516b4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15287723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ada08f647e535bc779e20093d734e4cdfaa2320fff32db1066e653b4fa963da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 14:02:56 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 14:02:56 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 14:02:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 14:02:57 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:05:09 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 15:05:09 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 15:08:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 15:08:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:08:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:08:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:08:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:08:11 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:00:55 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:00:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:00:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:00:56 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:00:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70a58c1149f88ed96eb8e2fd8c5f4ac797a01539a650a011fd70525f439c090`  
		Last Modified: Thu, 26 Oct 2017 14:06:16 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51753dfc14b286d27f6635b81e06f61b33883b573f797fef42c3af1e09d7242`  
		Last Modified: Thu, 26 Oct 2017 14:06:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66bbeed0e77e6190b6905ae8981d91d3259d69664b08d06a648370e3f73352f`  
		Last Modified: Tue, 14 Nov 2017 15:22:55 GMT  
		Size: 13.2 MB (13232173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8957ac3f7e7727c63c8e04a57704227dcb925629653d806782c7d79eb9002be`  
		Last Modified: Tue, 14 Nov 2017 15:22:50 GMT  
		Size: 7.3 KB (7269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718ce9383375bd01f4d0c2c3249788b47d488020b6a246e196baa0ef9433e52b`  
		Last Modified: Tue, 14 Nov 2017 15:22:50 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7792d302e22bbe6f4f1cddada75e6c107357586cdca48e51a3531aa108b8afb`  
		Last Modified: Tue, 14 Nov 2017 15:22:50 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4b93ee3f1105625eda47b90035021d14d10ea13dfe29acea0e77c2819b3e5e`  
		Last Modified: Thu, 16 Nov 2017 15:01:45 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b5e93c826c2ee8de888fc82f484f4dc3a14970a6b432fa2ee45f3c0b1c6f03`  
		Last Modified: Thu, 16 Nov 2017 15:01:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:9f73ba6d203a06439e1e3e013ef370d0297eab5ddb968ba6f5056bb28f2dce21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14395537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77d1a6a8c15dd30e6d3d2213bbeb4cffb07a590103c3f931673abf3c425c9a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 22:01:37 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 22:01:40 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 22:01:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 22:01:46 GMT
ENV PG_MAJOR=10
# Wed, 15 Nov 2017 21:39:43 GMT
ENV PG_VERSION=10.1
# Wed, 15 Nov 2017 21:39:46 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Wed, 15 Nov 2017 21:44:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 15 Nov 2017 21:44:26 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 21:44:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 21:44:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 21:44:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 21:44:39 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 23:01:38 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 23:01:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 23:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 23:01:45 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 23:01:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c23c4fdb0ebc4f191045f6bf19cca7b80df9186efad68a3333b03e331280aab`  
		Last Modified: Thu, 26 Oct 2017 22:06:42 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3f58b8ca892b95a961eeadd35dd139839ccce3879da6dd63ff0babcbbf9153`  
		Last Modified: Thu, 26 Oct 2017 22:06:42 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8a0f54f9f085e42e42a9155f4c6fd6555866974b8bd2a2b15c667a0706b415`  
		Last Modified: Wed, 15 Nov 2017 22:07:06 GMT  
		Size: 12.4 MB (12376883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bb3af609bb20533b2f0ec376d184d9363604b0d80fd2973c636399dc5a524a`  
		Last Modified: Wed, 15 Nov 2017 22:07:00 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311c4b26ee255d35a9fc9594dac3037ec1516ffd69d54cbc3169b1c7c25b96bf`  
		Last Modified: Wed, 15 Nov 2017 22:07:00 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0943f222a1a12fdd07c7a2e88cf838033b1cf10f41668cc950559853abc0cdf9`  
		Last Modified: Wed, 15 Nov 2017 22:07:00 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf7c145ae9a84897ec54896f33dc04752ea8889a66637f71c67a95bab8e6a49`  
		Last Modified: Thu, 16 Nov 2017 23:02:22 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96bcec5290d93f3cab7db3b6d85ec6219cb0439246c75821f9aeefee82043c84`  
		Last Modified: Thu, 16 Nov 2017 23:02:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:6e50d8693572d1a76fad393b456eced8628b7870c41305459a82751c0bb2f41d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14743362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e853452be9762f65b4696c2bfdaa8506bd11af71917a19edde9aad13b9ea28ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 09:25:35 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 09:25:36 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 09:25:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 09:25:36 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 10:36:10 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 10:36:10 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 10:38:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 10:38:54 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 10:38:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 10:38:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 10:38:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 10:38:56 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 10:25:45 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:25:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 10:25:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 10:25:46 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 10:25:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64021f8919c5741e8db38e29e920f78d5e229b9451ca0fcae9c682606db203b`  
		Last Modified: Thu, 26 Oct 2017 09:28:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958cf18dd66d6c5b0994b62c5056998a9c4d47f8ef8baa2516f779083812eeb3`  
		Last Modified: Thu, 26 Oct 2017 09:28:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9280eb3befff97803958ae4f6cd6adc77de65b376961b82e854bbbdef3cc78f3`  
		Last Modified: Tue, 14 Nov 2017 11:13:21 GMT  
		Size: 12.7 MB (12667951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130267153c8f2d0783a8ed7f548acd008387b699521db86ec21458b4f915da1d`  
		Last Modified: Tue, 14 Nov 2017 11:13:17 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301f375a1bb76e89365d0525b846ae205977484de93d78d9a8202652c49ca866`  
		Last Modified: Tue, 14 Nov 2017 11:13:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015d18cbf8839aa974818ac9f64908d5cfe4ad1c74a2d0c8d61543292f7ed181`  
		Last Modified: Tue, 14 Nov 2017 11:13:18 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738ff6b64f12399420bcf3fecdef237374b2741e2b9346a4b32e1be5246d1dcf`  
		Last Modified: Thu, 16 Nov 2017 10:26:24 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f9a7586dd533bad31c72c0acd2fed0563a6eb57f1fb580038ad89be88c1848`  
		Last Modified: Thu, 16 Nov 2017 10:26:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:a91afc88ea22cd33c74f9dadd6732a2841f9a2ba4f5bf15a0f29fb0b8cecf790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:93ceecf1b681885cc2a730f810e44183b1ffac87c277327dede00274c2a7c14b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14359851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022e3d66b3cdb4df18a29d2a5218d59d4499215cb4407b2309bcdc1ee44ad080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:06:35 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:06:40 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:06:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:06:41 GMT
ENV PG_MAJOR=10
# Mon, 04 Dec 2017 16:06:46 GMT
ENV PG_VERSION=10.1
# Mon, 04 Dec 2017 16:06:46 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Mon, 04 Dec 2017 16:09:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:09:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:09:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:09:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:09:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:09:51 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:09:56 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:09:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:10:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:10:02 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:10:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfc5560fd669eaededcf1c2874aed84c62a0f9337b877d91dfb096388ea6b4a`  
		Last Modified: Mon, 04 Dec 2017 16:23:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e7e7ad6776914ad71c090f88e281226aeddaa2804d0c42750f9352669ee8e2`  
		Last Modified: Mon, 04 Dec 2017 16:23:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95628b7931116d78bf1f3c8b9cd9c15f4d4ee1bc92aef9539a8815ef09c7f12`  
		Last Modified: Mon, 04 Dec 2017 16:23:04 GMT  
		Size: 12.4 MB (12358575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb8222c6c7b1013b011f5ab14ac0b86ba0d55fe0ebcc1d6389ef771a5961e82`  
		Last Modified: Mon, 04 Dec 2017 16:22:58 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898afc901fed2b7ba36a81c54b0ca95d160b9b3e86d1cb82ee2f01a7ff156401`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f581da30ddb019fc3b911efea8533a1cbcc36fe11c5508c8de3a0eb1b57f296`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beeb4a7049c2925b011e9413a167dd8d9669d282cfc4df9535e49e39cbf7abcc`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f76bad8a5b6e331da835a41787040edeb8bb87d7a790cbda6d8b461eade3b7`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:edaa769c7da3f89d5d870934f1f733f6daca42b1b10d7003e5f2116729b65621
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14081731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68ec80ca40fbff9e59403c849f98118a4d231ec619c75c9f7e812ff881ebc72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:28:00 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 05:28:01 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 05:28:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 05:28:02 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 00:36:18 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 00:36:18 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 00:37:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 00:37:59 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 00:38:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 00:38:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 00:38:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 00:38:01 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 00:36:18 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:36:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:36:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:36:19 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 00:36:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ee21f323722b4de6199fd75d7ac98af881df8745fa40ee9d05ac50b65bb0ee`  
		Last Modified: Thu, 26 Oct 2017 05:30:06 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08471e694908aa21aeb260899b548eb79de839a3b64892df07cc76799410bab`  
		Last Modified: Thu, 26 Oct 2017 05:30:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1ff89a8de664ab1ce8568a740713f9a837299cf8d01447f864977ee555840c`  
		Last Modified: Tue, 14 Nov 2017 00:38:16 GMT  
		Size: 12.1 MB (12105670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950f198523fc3b70204b52195509962e6748f4f58fad67766529f82f78e11ae`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc32db7b103d878fb5d78fda2583981a48d41fde041280ad6008779827a31da`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c034b568bdf4945ea7a9437a5c6d905fe9bd787249bb852252b33fbd38ae885`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6b624f06dc9916a4113d6c49c31b54b76497dd95999c24eee41ebfb6e555d`  
		Last Modified: Thu, 16 Nov 2017 00:36:25 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa371d66fd8904ddc4f021223c3900dd75952a869b29d6e33051d08e4b0fc41`  
		Last Modified: Thu, 16 Nov 2017 00:36:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a43ae608f38710b3b2defb6e9309f4072d1aa081851955bf9031b0b638c76901
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13580809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695f25bfc84b4c5b946069db5950c2be83fb897c0ab4ab894b9f0525b09f9951`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 14:21:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 14:21:07 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 14:21:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 14:21:09 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:51:31 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 15:51:31 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 15:55:37 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 15:55:39 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:55:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:55:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:55:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:55:43 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:21:40 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:21:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:21:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:21:43 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:21:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9279e12cd5e4d64ecccdaa1e2c84905721462be29e276e033e82dc8e9f9618`  
		Last Modified: Thu, 26 Oct 2017 14:26:09 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251fba6008fdbbfdbed7eb759d124fa5fb44d25bc358bba815e480506378d3fc`  
		Last Modified: Thu, 26 Oct 2017 14:26:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e449b574d4977f1570de6ae66b30a7c92f15a1c9f8400ee95d376a81c8295c`  
		Last Modified: Tue, 14 Nov 2017 17:52:16 GMT  
		Size: 11.7 MB (11656117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459c01fccfd4e472bfb19d74272b713b7e388311db5e1def5a7a14981b3267f6`  
		Last Modified: Tue, 14 Nov 2017 17:52:07 GMT  
		Size: 7.3 KB (7263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ae336bd6115adb35f0b5849a6a20a41bc91b4f3ca5a970bf4fbb8700b6dfb`  
		Last Modified: Tue, 14 Nov 2017 17:52:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b1178234700be6e9747d2bf04e3ffd432a5a2b71f88d817beb36cf3d2c2033`  
		Last Modified: Tue, 14 Nov 2017 17:52:08 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5ae31dfbeb08b3b3bb86b37a07ed2cb70a5668b5bd938ff49fcf69aef09d60`  
		Last Modified: Thu, 16 Nov 2017 15:23:14 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a571bc6c4200383fc65971aaeebf1a79c8cecf6e0b3bcffd0515247ba2ba55`  
		Last Modified: Thu, 16 Nov 2017 15:23:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; 386

```console
$ docker pull postgres@sha256:ef4a4d798e880b3c0a8e9aa6df82060f7fb9357a154fe2171be0cc76d1516b4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15287723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ada08f647e535bc779e20093d734e4cdfaa2320fff32db1066e653b4fa963da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 14:02:56 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 14:02:56 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 14:02:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 14:02:57 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:05:09 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 15:05:09 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 15:08:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 15:08:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:08:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:08:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:08:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:08:11 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:00:55 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:00:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:00:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:00:56 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:00:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70a58c1149f88ed96eb8e2fd8c5f4ac797a01539a650a011fd70525f439c090`  
		Last Modified: Thu, 26 Oct 2017 14:06:16 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51753dfc14b286d27f6635b81e06f61b33883b573f797fef42c3af1e09d7242`  
		Last Modified: Thu, 26 Oct 2017 14:06:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66bbeed0e77e6190b6905ae8981d91d3259d69664b08d06a648370e3f73352f`  
		Last Modified: Tue, 14 Nov 2017 15:22:55 GMT  
		Size: 13.2 MB (13232173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8957ac3f7e7727c63c8e04a57704227dcb925629653d806782c7d79eb9002be`  
		Last Modified: Tue, 14 Nov 2017 15:22:50 GMT  
		Size: 7.3 KB (7269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718ce9383375bd01f4d0c2c3249788b47d488020b6a246e196baa0ef9433e52b`  
		Last Modified: Tue, 14 Nov 2017 15:22:50 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7792d302e22bbe6f4f1cddada75e6c107357586cdca48e51a3531aa108b8afb`  
		Last Modified: Tue, 14 Nov 2017 15:22:50 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4b93ee3f1105625eda47b90035021d14d10ea13dfe29acea0e77c2819b3e5e`  
		Last Modified: Thu, 16 Nov 2017 15:01:45 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b5e93c826c2ee8de888fc82f484f4dc3a14970a6b432fa2ee45f3c0b1c6f03`  
		Last Modified: Thu, 16 Nov 2017 15:01:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:9f73ba6d203a06439e1e3e013ef370d0297eab5ddb968ba6f5056bb28f2dce21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14395537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77d1a6a8c15dd30e6d3d2213bbeb4cffb07a590103c3f931673abf3c425c9a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 22:01:37 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 22:01:40 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 22:01:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 22:01:46 GMT
ENV PG_MAJOR=10
# Wed, 15 Nov 2017 21:39:43 GMT
ENV PG_VERSION=10.1
# Wed, 15 Nov 2017 21:39:46 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Wed, 15 Nov 2017 21:44:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 15 Nov 2017 21:44:26 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 21:44:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 21:44:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 21:44:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 21:44:39 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 23:01:38 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 23:01:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 23:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 23:01:45 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 23:01:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c23c4fdb0ebc4f191045f6bf19cca7b80df9186efad68a3333b03e331280aab`  
		Last Modified: Thu, 26 Oct 2017 22:06:42 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3f58b8ca892b95a961eeadd35dd139839ccce3879da6dd63ff0babcbbf9153`  
		Last Modified: Thu, 26 Oct 2017 22:06:42 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8a0f54f9f085e42e42a9155f4c6fd6555866974b8bd2a2b15c667a0706b415`  
		Last Modified: Wed, 15 Nov 2017 22:07:06 GMT  
		Size: 12.4 MB (12376883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bb3af609bb20533b2f0ec376d184d9363604b0d80fd2973c636399dc5a524a`  
		Last Modified: Wed, 15 Nov 2017 22:07:00 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311c4b26ee255d35a9fc9594dac3037ec1516ffd69d54cbc3169b1c7c25b96bf`  
		Last Modified: Wed, 15 Nov 2017 22:07:00 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0943f222a1a12fdd07c7a2e88cf838033b1cf10f41668cc950559853abc0cdf9`  
		Last Modified: Wed, 15 Nov 2017 22:07:00 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf7c145ae9a84897ec54896f33dc04752ea8889a66637f71c67a95bab8e6a49`  
		Last Modified: Thu, 16 Nov 2017 23:02:22 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96bcec5290d93f3cab7db3b6d85ec6219cb0439246c75821f9aeefee82043c84`  
		Last Modified: Thu, 16 Nov 2017 23:02:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:6e50d8693572d1a76fad393b456eced8628b7870c41305459a82751c0bb2f41d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14743362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e853452be9762f65b4696c2bfdaa8506bd11af71917a19edde9aad13b9ea28ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 09:25:35 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 09:25:36 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 09:25:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 09:25:36 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 10:36:10 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 10:36:10 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 10:38:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 10:38:54 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 10:38:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 10:38:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 10:38:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 10:38:56 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 10:25:45 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:25:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 10:25:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 10:25:46 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 10:25:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64021f8919c5741e8db38e29e920f78d5e229b9451ca0fcae9c682606db203b`  
		Last Modified: Thu, 26 Oct 2017 09:28:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958cf18dd66d6c5b0994b62c5056998a9c4d47f8ef8baa2516f779083812eeb3`  
		Last Modified: Thu, 26 Oct 2017 09:28:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9280eb3befff97803958ae4f6cd6adc77de65b376961b82e854bbbdef3cc78f3`  
		Last Modified: Tue, 14 Nov 2017 11:13:21 GMT  
		Size: 12.7 MB (12667951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130267153c8f2d0783a8ed7f548acd008387b699521db86ec21458b4f915da1d`  
		Last Modified: Tue, 14 Nov 2017 11:13:17 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301f375a1bb76e89365d0525b846ae205977484de93d78d9a8202652c49ca866`  
		Last Modified: Tue, 14 Nov 2017 11:13:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015d18cbf8839aa974818ac9f64908d5cfe4ad1c74a2d0c8d61543292f7ed181`  
		Last Modified: Tue, 14 Nov 2017 11:13:18 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738ff6b64f12399420bcf3fecdef237374b2741e2b9346a4b32e1be5246d1dcf`  
		Last Modified: Thu, 16 Nov 2017 10:26:24 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f9a7586dd533bad31c72c0acd2fed0563a6eb57f1fb580038ad89be88c1848`  
		Last Modified: Thu, 16 Nov 2017 10:26:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:1413c5c712d28d8d9659325a40d25d6af064353127c2b05c93fcae080863dc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:9` - linux; amd64

```console
$ docker pull postgres@sha256:a31c8b2d1c0386cd91fac235f5945fd31f452a580dfd9236a173fec8d9c5e4dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104129997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5579c7505b1bb56fddfd01164e02d13cd8e81a4d9524ada4f9c94697997c25cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:05:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:05:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:05:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:05:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:06:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:06:14 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:06:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:06:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:06:19 GMT
ENV PG_MAJOR=9.6
# Tue, 12 Dec 2017 06:06:19 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 12 Dec 2017 06:07:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:07:13 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:07:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:07:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 12 Dec 2017 06:07:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:07:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:07:16 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:07:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:07:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:07:18 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:07:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d44cf86769b1ace14785cbf0437fdf62eb233ac876b2aee10a1990774b2f6c`  
		Last Modified: Tue, 12 Dec 2017 06:15:20 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a15c538319f3f262243801ed927879f0a177d9e64cc9d0f972fa6476b0f2b`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 985.2 KB (985223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76eec81f9ce8772ca4bbff467e13862e31d5cbf1c736544d802e989a97bf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:21 GMT  
		Size: 7.1 MB (7113051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a1ed29c8a8f6328532d32b0beaee52f0b42bf37a6a2a7a3fa166a0b650dde3`  
		Last Modified: Tue, 12 Dec 2017 06:15:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8862935f78c771d276cb8c27de571b4c5cace4904377ab7abf47a6cb687a1271`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6264275e324ac17a044d652ca93c7e45d79ea21e4583e7fe81e632869eb8ac57`  
		Last Modified: Tue, 12 Dec 2017 06:15:32 GMT  
		Size: 43.4 MB (43415993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa0ac8d49e57c147b284a997e2d834e81878c8da47e600dcfbef4d47e16f2a1`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195b6cc09dddb9e4b7ad1122b145fd05f7951a69fa820a794d127ef8666f6714`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1162cbf0e030a1b14f4833a5d9b3abd4a9011106ff93c455ed71b32b8641c6`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afef25248e130f8672cb3d509761657c6d8c2fafd4d61d27284f30b879d176f2`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9332c260ec530eefd8b356e88ff2039b3c3c75bdde64f50bceb76e1702bbbff`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v5

```console
$ docker pull postgres@sha256:fee0e45744905f252bf6ae89dc567c85a5e6f600317b6b9ed9639236a02da247
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96599252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69424fcd5532c2542337e44d925d9191e4028db9589fe3fe7306a405627daa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:39:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:39:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:39:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:40:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:41:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:41:12 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:41:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 06:41:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 06:41:21 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 07:58:33 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 08:17:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 08:17:57 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 08:17:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 08:17:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 08:17:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 08:17:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 08:17:59 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 08:17:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 08:18:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 08:18:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 08:18:00 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 08:18:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4499355f1f971b072f5df97cae2d6c7f1d8322f25b4dac2045c821d21422f60`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a01cff85622e54745784c0095d76615df0b38104efb50588c3b16c82a0875`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 974.6 KB (974611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ddc153c4035b61f0b934caa80c2c3a28ad633808b73de2fe5d26fa939f138c`  
		Last Modified: Fri, 03 Nov 2017 07:53:41 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89dd6d7a3a69fb863cd3a6ca51206622ac391e9b42e24058e60d8a0711f8a1`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e4feab6ba0b72a409ac8a911ca1567bb6c3045a3d5df5340d079fbdb71d4a`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed4fe2588fb106790d0f234888990413c1263ef2253b0181052f1d365908934`  
		Last Modified: Tue, 14 Nov 2017 09:11:51 GMT  
		Size: 37.6 MB (37615799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973cdac6699a6b1cd250bd65cd2fb79e3093549f56f1a61cc2be080495488ab4`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045fe9a4bd2604b091fbf713590645aaedeeaa16ddeab04a60b28ab6dee49eca`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b98992434707dd71802340b4647304100bc4ff825a08119ca103c1aad99e272`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a47f771a224cead0b8ea6dcd9326c5c2e91d1c447d810c3e68cf754ad8cfc7`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15059e6cc881ffe80c519926d504eeea1a4154739a85d69c001da72ef725ad8f`  
		Last Modified: Tue, 14 Nov 2017 09:11:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v7

```console
$ docker pull postgres@sha256:4249c4ccc4e23eeb343cd9d42aa1f930146b06b38bcdca7a30643517b3fc5b39
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93196989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c39b449dc74a7c1b04e9b69ec5b800d8c23fb029c88ece92f87cea482b5c027`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:56:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:56:26 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:56:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:57:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:57:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:57:44 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:57:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:57:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 03:57:53 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 04:55:42 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 05:13:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 05:13:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 05:13:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 05:13:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 05:13:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 05:13:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 05:13:05 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 05:13:06 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 05:13:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 05:13:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 05:13:07 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 05:13:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02098f289f28f48d15c8057d71bca11099f92c8881c3bd933872c26f6985b337`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21569521b18c3d8ec1866e36c769afee2e7df592328f47270c5ab21f52d32bb5`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 959.5 KB (959463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7452cab800e0181df2560290a179aee3c826b3f94a06361f8d839c6998ee202`  
		Last Modified: Fri, 03 Nov 2017 05:05:00 GMT  
		Size: 7.1 MB (7112849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3843f9383decade650ca4091414ae5281360a616b2fbdeb4b721dd888d3490`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d61923d5463975ebb16f0ec093820c560c5fe617f3ef995a6edd259ca802dd0`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a1cfc7b9e07b995848cabfd53adbee0bf83a98afb118b2ff9fcc3d72172de2`  
		Last Modified: Tue, 14 Nov 2017 06:03:20 GMT  
		Size: 36.4 MB (36422274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d381802a36a9be1d7775b31be1f8eb0ed48f8c93cffd2fc120fda27719c385e`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da81c1d728fb1d3d30cd461ecf5ac8a21605981ff74f2adf9fc9d377cd6b4b6`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c7f2e16b26c312eff3aadb03d98154ad405e15549369df860bbbe39c17cf3e`  
		Last Modified: Tue, 14 Nov 2017 06:03:09 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468b3f78b5ad5d8cf9193e433ddea55ada4c29f51cedfb8c2dddccb0c18c513`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc75378698a744e5b4f6b563d74b60d225c0075a11598cf590efbecda37a995`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:172b5524ef1302af876dae30f909b2399198a8027506894560907200c5778fc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95161748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9ed1163f72ef550e01310d75aca14cfb4e79c6facff69ed793371689fa4631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:53:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:53:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:53:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:54:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:54:57 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:54:58 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:54:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:55:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:55:05 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 15:56:18 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 16:26:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 16:26:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 16:26:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 16:26:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 16:26:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 16:26:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 16:26:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 16:26:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 16:26:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 16:26:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 16:26:13 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 16:26:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761707f443640f6f562f1f44235a97283159a4014a61abbd297ada36532115e9`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955fe9ac4b96bae2288a5f05ef3c02f0bc48df90b855e25a3dfb4e73d3ba575`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 952.0 KB (952002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1cdafa666dd2d36734ef54a12e2aad5442ebd915ecef0acc4ae693673c08c8`  
		Last Modified: Fri, 03 Nov 2017 16:52:24 GMT  
		Size: 7.1 MB (7112949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1d1dc96054579ac0ff64dd908159fea56499d8ed0201c7a1098ee2289e14f4`  
		Last Modified: Fri, 03 Nov 2017 16:52:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f9081b317e93fb35134fb782506e64e81b0b51e0b5eb85074725c9e8489c0`  
		Last Modified: Fri, 03 Nov 2017 16:52:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb8f9723a17f666997a98796f3f7725e23a38a55dbeba6562adee3c18289a49`  
		Last Modified: Tue, 14 Nov 2017 17:53:32 GMT  
		Size: 37.2 MB (37151439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60aa9ee3f657f6215b1f41e027f13b5d835000b75f1130e95cd6613a3b6b7d9`  
		Last Modified: Tue, 14 Nov 2017 17:53:09 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4234a6d7a4f81a6eda762f40927138a981db8874eafc7f83ddff174f00839076`  
		Last Modified: Tue, 14 Nov 2017 17:53:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2eb25620e29aec2051efc85c30479458fa2bc1fce119fd53e3d1c0bd77b7b1e`  
		Last Modified: Tue, 14 Nov 2017 17:53:11 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f2ba0baabd8fb188a32f60387e29b9aa28865244f5a1c70a739a1cb13f300`  
		Last Modified: Tue, 14 Nov 2017 17:53:09 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77b585717e3b9b5ee7da1d3fbfbe571e06aea9696daa4119d303e71d8209ac1`  
		Last Modified: Tue, 14 Nov 2017 17:53:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; 386

```console
$ docker pull postgres@sha256:bde116ab1bf92da8979c43bb142029a99b04ab7bb2af6082f5a5347dbef994d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106094180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c330cf911400d7f08a3c157cc77b6aa1989ee034ea8690b37944af3fb8839b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:04:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:04:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:05:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:06:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:06:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:06:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:06:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:06:17 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 15:11:14 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 15:12:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:12:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:12:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:12:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 15:12:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:12:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:12:53 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 15:12:53 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 15:12:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 15:12:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 15:12:55 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 15:12:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366ef82afdd57e133e3f13fffeddf60d7091a4156c52b001f8d62f133242e4a3`  
		Last Modified: Fri, 03 Nov 2017 14:20:45 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739e92549a18ba2ad04079f386bb792685b985bdcab983de37841d1e39afdb3`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 964.0 KB (964043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9224c66676892c47bb1fd087470d1af92bf08abe1b72e414620e13e97707dac8`  
		Last Modified: Fri, 03 Nov 2017 14:20:46 GMT  
		Size: 7.1 MB (7112906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a008b74d4f4e222caacf03c380974727ba01a4b795874f08634fe5a6e7cdcb`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086efe6530699424c36bef2d1e43e20a40f75683abac22bb721deeef2dd8e209`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7ac8547b13a5371a93ae4656d203cc7662cef7e09b9fa2fe000d20643c6043`  
		Last Modified: Tue, 14 Nov 2017 15:23:33 GMT  
		Size: 45.2 MB (45227348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b6c1a55fe10f78247fc513362058f25a027e3e1fdedc935e8887d2dabcc8a`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc257467883f13288bacc29515c74cca53b69314788066c99edc9ebd3d22b59c`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f793b9cfa956308cd3a1d6a7ea11d418a796caa2c5c80fcaeec716bd35da24f3`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc38afd954b48b4867a5cceb8f7b3a606aeb8f078982e52295fe2674d7aa5859`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9689053d1fb03a3096e272124ffac7441fcb8c7782feb833ab79f9de074df5f5`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; ppc64le

```console
$ docker pull postgres@sha256:9e0e3652ace14258feb0e8362d904890501bafd09238e669a36bc980624144cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102338706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:561300478b226d7f0c4c714d0b9d91508c78d5a6f0ddb291c0b180c656b8888a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:52:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:52:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:52:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:54:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:54:27 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:54:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 22:54:40 GMT
ENV PG_MAJOR=9.6
# Wed, 15 Nov 2017 21:45:38 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Wed, 15 Nov 2017 21:51:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 21:51:18 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 21:51:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 21:51:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 15 Nov 2017 21:51:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 21:51:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 21:51:31 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 15 Nov 2017 21:51:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 15 Nov 2017 21:51:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 Nov 2017 21:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Nov 2017 21:51:50 GMT
EXPOSE 5432/tcp
# Wed, 15 Nov 2017 21:51:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2274de1c60ca9068566e9b2aa25e1577842168ab4bea606dea05bb983d920d`  
		Last Modified: Thu, 02 Nov 2017 23:19:17 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f10fa7a59c50bfcb1b548f4a5c6fb4283f614e85b1b79181c26659593303e5`  
		Last Modified: Thu, 02 Nov 2017 23:19:16 GMT  
		Size: 954.2 KB (954205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704bbcb919d4acc8240dd530ad4e1a1b81f131beb9cd7fc6fdf74a5a6c1aedc5`  
		Last Modified: Thu, 02 Nov 2017 23:19:19 GMT  
		Size: 7.1 MB (7113113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654559d07452800eee7cb9a1015d928ee9dfa05699007b198f741a5460eb258`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4517113322391565e20deb637d428fcea031004005736b4b386299329501e9b`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db30c0c8e9cb881bbe213e7a613e246e7ee35b83e2c7f9caf7a0b52d404998`  
		Last Modified: Wed, 15 Nov 2017 22:07:34 GMT  
		Size: 42.4 MB (42445537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75aacedeaca8a2b6416553aa1255e25b2a32350ef0bb31a61221f210a0aa181`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2373b6956ca1901a89b86e92c3fcfba64cbda27cbec37ddfe47ba905606ef681`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4f0d711e56ba06b9606188d5b16a1dbab924eeaa87dff3875a205c12c4577f`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31a278c43cc0d1a2a9e469c16cf71b3adff11d48da2553b66deb631a306b698`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3408f8a88804fbbde57193d33477e5be8162a446efee13842a229c97f69d1`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; s390x

```console
$ docker pull postgres@sha256:649a90a317bbebb81358c0c7b4e0da4cae5f0e900b471d6284512be9938062ad
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100571967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58dceea9a4b665b9dbd2d5621291cca7c20055d99d27c132758b186f55db4339`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:35:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:35:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:35:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:36:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:36:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:36:16 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:36:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:36:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 09:36:19 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 10:39:18 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 10:48:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 10:48:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 10:48:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 10:48:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 10:48:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 10:48:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 10:48:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 10:48:19 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 10:48:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 10:48:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 10:48:20 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 10:48:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aaee9d43798a6e20352bc42182c2bd8e68f5a38ac8e7b1bfc2fdfb5456de5`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b307261018837c5c30edaf6e361dbd0300f4e4faaeddda83a0bcf05fe2bd24`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 970.2 KB (970243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aa0513398d454ecd65972a3cc8860400f071026e8579bbc79790be908710ed`  
		Last Modified: Fri, 03 Nov 2017 10:12:31 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6751dc08e24fee6350e4371b5dad8a0fc196723983017284914fe308cdaf88f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b3cac6db2ee49c30a497ab6f625b9cb6fe3cab8b5330faa4fc42034e8bad0f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344c4fe55da22031f89f04f57cc1615813242015cb71a11ab8694dd7784d4a01`  
		Last Modified: Tue, 14 Nov 2017 11:13:45 GMT  
		Size: 39.7 MB (39665637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f37149fcc40201d870bc95803297a9fda5c3826aba3ec97fba601eed7ece10`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4917f9bfdaf66a33661cd66091092bdc46b22b5cb96ae495d52edb577cc91d`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be4e567168179739a35c6ebfb17cabfd6c41f6876d6e3d95470ffb25295067a`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5877512e85efd437655ebede9b9f512579b3d3b358d6e2b0b6a5c23a51c9a2e1`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c744b7f4c06b6d0b72e37b8b20fe7750fcb486feca49e9d2e6180dc5fb50b40`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:d73bd3a2f9ac7774a83349c44bced1c3f9b36835ca19e1aabedea843c91632b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:9.3` - linux; amd64

```console
$ docker pull postgres@sha256:f3aaca686073e54a9d116ca740272963821b407e184185a786119cdd4f94458a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102877002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69cc4b9c4273fad7b8016bff822577da436120bc81de00bb9d3376d8f5229bfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:05:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:05:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:05:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:05:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:06:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:06:14 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:06:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:06:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:13:07 GMT
ENV PG_MAJOR=9.3
# Tue, 12 Dec 2017 06:13:08 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 12 Dec 2017 06:13:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:13:53 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:13:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:13:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 12 Dec 2017 06:13:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:13:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:13:55 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:13:55 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:13:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:13:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:13:56 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:13:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d44cf86769b1ace14785cbf0437fdf62eb233ac876b2aee10a1990774b2f6c`  
		Last Modified: Tue, 12 Dec 2017 06:15:20 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a15c538319f3f262243801ed927879f0a177d9e64cc9d0f972fa6476b0f2b`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 985.2 KB (985223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76eec81f9ce8772ca4bbff467e13862e31d5cbf1c736544d802e989a97bf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:21 GMT  
		Size: 7.1 MB (7113051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a1ed29c8a8f6328532d32b0beaee52f0b42bf37a6a2a7a3fa166a0b650dde3`  
		Last Modified: Tue, 12 Dec 2017 06:15:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8862935f78c771d276cb8c27de571b4c5cace4904377ab7abf47a6cb687a1271`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8fa29c6548a5c2281ad3bc06df8bc91d492232bd89385807e94e0ab3385d11`  
		Last Modified: Tue, 12 Dec 2017 06:17:33 GMT  
		Size: 42.2 MB (42163601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f163cac979228e6eb1e7bc92249f91358e004197dee815eeb28c57453925ea8e`  
		Last Modified: Tue, 12 Dec 2017 06:17:25 GMT  
		Size: 6.5 KB (6506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f1f17002d4bb49230551df4548c6d99440651213af3a76196ef02290113716`  
		Last Modified: Tue, 12 Dec 2017 06:17:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ff2a69b710c1f4ae0bb18ec08e0313ddf0cbad4f069fd67f7943a9123d3e14`  
		Last Modified: Tue, 12 Dec 2017 06:17:25 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3821664191e6ad9204c980698869078c0efa9632c605002212f65f63acdc83`  
		Last Modified: Tue, 12 Dec 2017 06:17:24 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a0d5dac4b127f35ffb3ffa77ed97fc5ce5fb7d712b804467c4d72a16c099ea`  
		Last Modified: Tue, 12 Dec 2017 06:17:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm variant v5

```console
$ docker pull postgres@sha256:bdec8de9afa3837da7a9fca98d606d33d88e5d7730d95f65db998bf79d49cc2c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95409984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00209152b595e2caff5a9615d7e757792338d4bf948876ee9d1f3cc3631f7ab0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:39:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:39:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:39:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:40:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:41:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:41:12 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:41:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 06:41:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 07:36:38 GMT
ENV PG_MAJOR=9.3
# Tue, 14 Nov 2017 08:54:00 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 14 Nov 2017 09:10:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 09:10:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 09:10:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 09:10:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 14 Nov 2017 09:10:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 09:10:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 09:10:27 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 09:10:28 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 09:10:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 09:10:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 09:10:29 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 09:10:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4499355f1f971b072f5df97cae2d6c7f1d8322f25b4dac2045c821d21422f60`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a01cff85622e54745784c0095d76615df0b38104efb50588c3b16c82a0875`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 974.6 KB (974611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ddc153c4035b61f0b934caa80c2c3a28ad633808b73de2fe5d26fa939f138c`  
		Last Modified: Fri, 03 Nov 2017 07:53:41 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89dd6d7a3a69fb863cd3a6ca51206622ac391e9b42e24058e60d8a0711f8a1`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e4feab6ba0b72a409ac8a911ca1567bb6c3045a3d5df5340d079fbdb71d4a`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69212ff6f6f073df611e5cb329b4c901fd8585b1c114419225c9620ace50fd09`  
		Last Modified: Tue, 14 Nov 2017 09:13:26 GMT  
		Size: 36.4 MB (36427129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea81886956c248bc55edf74bca3102eb6680d031ebedf1dcb91fe3bcee382531`  
		Last Modified: Tue, 14 Nov 2017 09:13:14 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3718b8c6e4bf1905e704b98ba834eac9db859418bb46ee994cdf3221f08a19`  
		Last Modified: Tue, 14 Nov 2017 09:13:14 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa9de58b76c433b3c9f9ff05d42971694f838d1d11f5a1980ba00d26fc8f998`  
		Last Modified: Tue, 14 Nov 2017 09:13:15 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af285861ea7c5dbd2c5aabbedd7bb980b4c3a57cd7578baeecf676d292950862`  
		Last Modified: Tue, 14 Nov 2017 09:13:13 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af2f952d1210b9203f71f665faf414f65ae08a840b98b6639fba0dbdbf9c0d7`  
		Last Modified: Tue, 14 Nov 2017 09:13:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm variant v7

```console
$ docker pull postgres@sha256:32cd55d4e3ba5dd169e040625a4f5e2ff75342608cf886f47b9c845873b617c6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92055227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59352f32490308ab792fe969da1de6555a8ed5bd32f4e7573659d57f85461dcd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:56:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:56:26 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:56:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:57:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:57:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:57:44 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:57:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:57:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 04:48:24 GMT
ENV PG_MAJOR=9.3
# Tue, 14 Nov 2017 05:46:45 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 14 Nov 2017 06:01:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 06:01:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 06:01:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 06:01:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 14 Nov 2017 06:01:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 06:01:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 06:01:50 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 06:01:51 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 06:01:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 06:01:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 06:01:52 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 06:01:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02098f289f28f48d15c8057d71bca11099f92c8881c3bd933872c26f6985b337`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21569521b18c3d8ec1866e36c769afee2e7df592328f47270c5ab21f52d32bb5`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 959.5 KB (959463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7452cab800e0181df2560290a179aee3c826b3f94a06361f8d839c6998ee202`  
		Last Modified: Fri, 03 Nov 2017 05:05:00 GMT  
		Size: 7.1 MB (7112849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3843f9383decade650ca4091414ae5281360a616b2fbdeb4b721dd888d3490`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d61923d5463975ebb16f0ec093820c560c5fe617f3ef995a6edd259ca802dd0`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bc6d66d8fc0153ecc6326d77126b24d4e24285744945b786fe89d70ee93304`  
		Last Modified: Tue, 14 Nov 2017 06:05:08 GMT  
		Size: 35.3 MB (35281110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a66a12f642fd17207ce48e7b0db22c4d37d08e921ab7154ef1d4555bb58beb`  
		Last Modified: Tue, 14 Nov 2017 06:04:55 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eac20b7fdd06198eb8019fcc733e751fac2050368fac4b38ae2ce20432dfa15`  
		Last Modified: Tue, 14 Nov 2017 06:04:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ca9627616486d2d4d9d43cbfbe85f192e26b3ae5ec05ce2d3f77252d9d0a65`  
		Last Modified: Tue, 14 Nov 2017 06:04:55 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3dfaf97226aa136d85fe806b51dc7309d50a34bc900398ea1126bac79736e7`  
		Last Modified: Tue, 14 Nov 2017 06:04:55 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b4ae1307c27a00cb6a0375407bb6323ac6f39720fdf3fd984545c17d63d03`  
		Last Modified: Tue, 14 Nov 2017 06:04:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:96c029c97a816f306c05e7fa398fe073668f82eda5c9eb39b07f667e0178de9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93982947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c0b6e71e51289bbadacbaa2c730007303ebfa093a44221cb2b16f7e30b47dc8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:53:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:53:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:53:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:54:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:54:57 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:54:58 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:54:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:55:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 16:24:13 GMT
ENV PG_MAJOR=9.3
# Tue, 14 Nov 2017 17:24:15 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 14 Nov 2017 17:50:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 17:50:10 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 17:50:12 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 17:50:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 14 Nov 2017 17:50:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 17:50:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 17:50:16 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 17:50:17 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 17:50:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 17:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 17:50:20 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 17:50:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761707f443640f6f562f1f44235a97283159a4014a61abbd297ada36532115e9`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955fe9ac4b96bae2288a5f05ef3c02f0bc48df90b855e25a3dfb4e73d3ba575`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 952.0 KB (952002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1cdafa666dd2d36734ef54a12e2aad5442ebd915ecef0acc4ae693673c08c8`  
		Last Modified: Fri, 03 Nov 2017 16:52:24 GMT  
		Size: 7.1 MB (7112949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1d1dc96054579ac0ff64dd908159fea56499d8ed0201c7a1098ee2289e14f4`  
		Last Modified: Fri, 03 Nov 2017 16:52:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f9081b317e93fb35134fb782506e64e81b0b51e0b5eb85074725c9e8489c0`  
		Last Modified: Fri, 03 Nov 2017 16:52:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb9ebf19e6c3e96796e65012b59dd5b415a6e7e77bedc2ec2ded29bb0f13da7`  
		Last Modified: Tue, 14 Nov 2017 17:56:39 GMT  
		Size: 36.0 MB (35973231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d22fe66e72a52cd93931a2512af31339439f29063a2e87ba7fe5074d12ee53`  
		Last Modified: Tue, 14 Nov 2017 17:56:21 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa426929389a4c4996aa803b796153c36f3176963e04732069ffbfb7684de730`  
		Last Modified: Tue, 14 Nov 2017 17:56:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f6a02be3570382c0446ce57ee4eb77d8326c0a971731ac90b1ff8a644f966b`  
		Last Modified: Tue, 14 Nov 2017 17:56:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0c9b083fd02dc824d540ace6e9449945ad66b9954bbc50ef69aee0fbe9e28d`  
		Last Modified: Tue, 14 Nov 2017 17:56:19 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc714f90ccc34d98e775a406ff72becd1bb47e5a5fec73d416c6d1ab1395d67`  
		Last Modified: Tue, 14 Nov 2017 17:56:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; 386

```console
$ docker pull postgres@sha256:8ad53ef72d2ccf05e144618d6b2bda959d666e77a62837469433bac724aaa251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104823872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed618a9d421b0d1c35ee702bf008ff27199bc3a4527103c94a931de0becb5a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:04:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:04:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:05:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:06:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:06:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:06:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:06:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:18:13 GMT
ENV PG_MAJOR=9.3
# Tue, 14 Nov 2017 15:20:35 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 14 Nov 2017 15:21:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:21:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:21:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:21:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 14 Nov 2017 15:21:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:21:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:21:52 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 15:21:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 15:21:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 15:21:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 15:21:53 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 15:21:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366ef82afdd57e133e3f13fffeddf60d7091a4156c52b001f8d62f133242e4a3`  
		Last Modified: Fri, 03 Nov 2017 14:20:45 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739e92549a18ba2ad04079f386bb792685b985bdcab983de37841d1e39afdb3`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 964.0 KB (964043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9224c66676892c47bb1fd087470d1af92bf08abe1b72e414620e13e97707dac8`  
		Last Modified: Fri, 03 Nov 2017 14:20:46 GMT  
		Size: 7.1 MB (7112906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a008b74d4f4e222caacf03c380974727ba01a4b795874f08634fe5a6e7cdcb`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086efe6530699424c36bef2d1e43e20a40f75683abac22bb721deeef2dd8e209`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d49e9a851bd9bb2a15301394d6c74a0c8b4edcc8a4aa86b7e755ba58181601`  
		Last Modified: Tue, 14 Nov 2017 15:25:16 GMT  
		Size: 44.0 MB (43957638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb36544efbffb4a4e8afd30893b4051d02daea462834fddff02368823d49707`  
		Last Modified: Tue, 14 Nov 2017 15:25:04 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210afdf6eee98d292bce2f79f1b8099f5ae1fa85b4409a1b83c63c2ff8ae5024`  
		Last Modified: Tue, 14 Nov 2017 15:25:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c68e161fbad4e6341f4d5d856898ac42dd636977ac31a68b27c7a2b24445a3`  
		Last Modified: Tue, 14 Nov 2017 15:25:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2ed518cb8e1f3e6380470080f9ce987a8147aab53040f075fa80d512f31b63`  
		Last Modified: Tue, 14 Nov 2017 15:25:04 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8279fea99dd428abefc2788c1910c5f92fefdc81fcee442f93efd55418c5a614`  
		Last Modified: Tue, 14 Nov 2017 15:25:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; ppc64le

```console
$ docker pull postgres@sha256:4b72ea0f5f34d170783affb13f5b4701ea5ffa172405dec563d67a32070541c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101118538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160b6371bf911b9844fdd09653b4678ca7111abe8c5bfb9bb03340c485b31ddc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:52:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:52:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:52:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:54:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:54:27 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:54:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 23:12:12 GMT
ENV PG_MAJOR=9.3
# Wed, 15 Nov 2017 22:01:23 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Wed, 15 Nov 2017 22:05:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 22:05:44 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 22:05:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 22:05:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Wed, 15 Nov 2017 22:05:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 22:05:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 22:05:56 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 15 Nov 2017 22:05:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 15 Nov 2017 22:06:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 Nov 2017 22:06:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Nov 2017 22:06:04 GMT
EXPOSE 5432/tcp
# Wed, 15 Nov 2017 22:06:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2274de1c60ca9068566e9b2aa25e1577842168ab4bea606dea05bb983d920d`  
		Last Modified: Thu, 02 Nov 2017 23:19:17 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f10fa7a59c50bfcb1b548f4a5c6fb4283f614e85b1b79181c26659593303e5`  
		Last Modified: Thu, 02 Nov 2017 23:19:16 GMT  
		Size: 954.2 KB (954205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704bbcb919d4acc8240dd530ad4e1a1b81f131beb9cd7fc6fdf74a5a6c1aedc5`  
		Last Modified: Thu, 02 Nov 2017 23:19:19 GMT  
		Size: 7.1 MB (7113113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654559d07452800eee7cb9a1015d928ee9dfa05699007b198f741a5460eb258`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4517113322391565e20deb637d428fcea031004005736b4b386299329501e9b`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcdce5882f45af7316bcee8dcbb4e04b42f5d22fca38041f57b45c93a855c4`  
		Last Modified: Wed, 15 Nov 2017 22:09:05 GMT  
		Size: 41.2 MB (41225967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9933d91107ce5de350304e47aaf5abf6805a67f5b08235058a626f1e58c5c978`  
		Last Modified: Wed, 15 Nov 2017 22:08:51 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06ae63cf1ebca4c67bbcd7fd9ec49dc082b144815aea590c0f54022b342cc0`  
		Last Modified: Wed, 15 Nov 2017 22:08:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb739c6639162df18cc1e77a82feaaf08838e7a2624159351f0c58bbeb43ed23`  
		Last Modified: Wed, 15 Nov 2017 22:08:51 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4cc09ef1d084c39a614869599613781a48b44d10b086e58894633abadf016b`  
		Last Modified: Wed, 15 Nov 2017 22:08:52 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007c50db00fd0eb2144d3c1fdf203c9f22c494c3a88173e41ab15b5893181bee`  
		Last Modified: Wed, 15 Nov 2017 22:08:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; s390x

```console
$ docker pull postgres@sha256:313827f16cb47d0ced12abdfebcd7ce6276f8266b65ac4dafcf95b9b64b2dbc4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99293626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2203ce08640da33311873abd2ea756ff5d8758ba8b485fd7b3a0be5e00c81d96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:35:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:35:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:35:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:36:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:36:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:36:16 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:36:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:36:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 10:03:35 GMT
ENV PG_MAJOR=9.3
# Tue, 14 Nov 2017 11:05:02 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 14 Nov 2017 11:12:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 11:12:22 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 11:12:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 11:12:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 14 Nov 2017 11:12:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 11:12:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 11:12:24 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 11:12:24 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 11:12:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 11:12:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 11:12:25 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 11:12:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aaee9d43798a6e20352bc42182c2bd8e68f5a38ac8e7b1bfc2fdfb5456de5`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b307261018837c5c30edaf6e361dbd0300f4e4faaeddda83a0bcf05fe2bd24`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 970.2 KB (970243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aa0513398d454ecd65972a3cc8860400f071026e8579bbc79790be908710ed`  
		Last Modified: Fri, 03 Nov 2017 10:12:31 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6751dc08e24fee6350e4371b5dad8a0fc196723983017284914fe308cdaf88f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b3cac6db2ee49c30a497ab6f625b9cb6fe3cab8b5330faa4fc42034e8bad0f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403dcf5e484318a314163bd05968bf4de38835f8fbd215033c31516f1c908a4e`  
		Last Modified: Tue, 14 Nov 2017 11:14:54 GMT  
		Size: 38.4 MB (38387899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8011819f6aae47c89f5d1f942e96125d6f20b1721b7d38f56741d00a893fb13b`  
		Last Modified: Tue, 14 Nov 2017 11:14:45 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9146141a86abb90dbf8dc8dea2b5b6725956d253e9ccdd5b15f99c5738dac58e`  
		Last Modified: Tue, 14 Nov 2017 11:14:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c91334ca78111e404bb8e11d0d1d0af80d846c2e0201d170d9903b18487348d`  
		Last Modified: Tue, 14 Nov 2017 11:14:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a409d7a0c0781c654093da9276ad5838b07e668df324a995b25abded443d92`  
		Last Modified: Tue, 14 Nov 2017 11:14:45 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8271478501d6dacc176ce62530704c799a330675da8a9a3f132898e2e885f7`  
		Last Modified: Tue, 14 Nov 2017 11:14:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.20`

```console
$ docker pull postgres@sha256:d73bd3a2f9ac7774a83349c44bced1c3f9b36835ca19e1aabedea843c91632b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:9.3.20` - linux; amd64

```console
$ docker pull postgres@sha256:f3aaca686073e54a9d116ca740272963821b407e184185a786119cdd4f94458a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102877002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69cc4b9c4273fad7b8016bff822577da436120bc81de00bb9d3376d8f5229bfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:05:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:05:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:05:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:05:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:06:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:06:14 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:06:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:06:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:13:07 GMT
ENV PG_MAJOR=9.3
# Tue, 12 Dec 2017 06:13:08 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 12 Dec 2017 06:13:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:13:53 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:13:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:13:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 12 Dec 2017 06:13:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:13:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:13:55 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:13:55 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:13:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:13:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:13:56 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:13:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d44cf86769b1ace14785cbf0437fdf62eb233ac876b2aee10a1990774b2f6c`  
		Last Modified: Tue, 12 Dec 2017 06:15:20 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a15c538319f3f262243801ed927879f0a177d9e64cc9d0f972fa6476b0f2b`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 985.2 KB (985223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76eec81f9ce8772ca4bbff467e13862e31d5cbf1c736544d802e989a97bf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:21 GMT  
		Size: 7.1 MB (7113051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a1ed29c8a8f6328532d32b0beaee52f0b42bf37a6a2a7a3fa166a0b650dde3`  
		Last Modified: Tue, 12 Dec 2017 06:15:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8862935f78c771d276cb8c27de571b4c5cace4904377ab7abf47a6cb687a1271`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8fa29c6548a5c2281ad3bc06df8bc91d492232bd89385807e94e0ab3385d11`  
		Last Modified: Tue, 12 Dec 2017 06:17:33 GMT  
		Size: 42.2 MB (42163601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f163cac979228e6eb1e7bc92249f91358e004197dee815eeb28c57453925ea8e`  
		Last Modified: Tue, 12 Dec 2017 06:17:25 GMT  
		Size: 6.5 KB (6506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f1f17002d4bb49230551df4548c6d99440651213af3a76196ef02290113716`  
		Last Modified: Tue, 12 Dec 2017 06:17:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ff2a69b710c1f4ae0bb18ec08e0313ddf0cbad4f069fd67f7943a9123d3e14`  
		Last Modified: Tue, 12 Dec 2017 06:17:25 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3821664191e6ad9204c980698869078c0efa9632c605002212f65f63acdc83`  
		Last Modified: Tue, 12 Dec 2017 06:17:24 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a0d5dac4b127f35ffb3ffa77ed97fc5ce5fb7d712b804467c4d72a16c099ea`  
		Last Modified: Tue, 12 Dec 2017 06:17:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.20` - linux; arm variant v5

```console
$ docker pull postgres@sha256:bdec8de9afa3837da7a9fca98d606d33d88e5d7730d95f65db998bf79d49cc2c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95409984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00209152b595e2caff5a9615d7e757792338d4bf948876ee9d1f3cc3631f7ab0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:39:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:39:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:39:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:40:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:41:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:41:12 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:41:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 06:41:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 07:36:38 GMT
ENV PG_MAJOR=9.3
# Tue, 14 Nov 2017 08:54:00 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 14 Nov 2017 09:10:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 09:10:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 09:10:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 09:10:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 14 Nov 2017 09:10:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 09:10:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 09:10:27 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 09:10:28 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 09:10:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 09:10:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 09:10:29 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 09:10:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4499355f1f971b072f5df97cae2d6c7f1d8322f25b4dac2045c821d21422f60`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a01cff85622e54745784c0095d76615df0b38104efb50588c3b16c82a0875`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 974.6 KB (974611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ddc153c4035b61f0b934caa80c2c3a28ad633808b73de2fe5d26fa939f138c`  
		Last Modified: Fri, 03 Nov 2017 07:53:41 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89dd6d7a3a69fb863cd3a6ca51206622ac391e9b42e24058e60d8a0711f8a1`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e4feab6ba0b72a409ac8a911ca1567bb6c3045a3d5df5340d079fbdb71d4a`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69212ff6f6f073df611e5cb329b4c901fd8585b1c114419225c9620ace50fd09`  
		Last Modified: Tue, 14 Nov 2017 09:13:26 GMT  
		Size: 36.4 MB (36427129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea81886956c248bc55edf74bca3102eb6680d031ebedf1dcb91fe3bcee382531`  
		Last Modified: Tue, 14 Nov 2017 09:13:14 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3718b8c6e4bf1905e704b98ba834eac9db859418bb46ee994cdf3221f08a19`  
		Last Modified: Tue, 14 Nov 2017 09:13:14 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa9de58b76c433b3c9f9ff05d42971694f838d1d11f5a1980ba00d26fc8f998`  
		Last Modified: Tue, 14 Nov 2017 09:13:15 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af285861ea7c5dbd2c5aabbedd7bb980b4c3a57cd7578baeecf676d292950862`  
		Last Modified: Tue, 14 Nov 2017 09:13:13 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af2f952d1210b9203f71f665faf414f65ae08a840b98b6639fba0dbdbf9c0d7`  
		Last Modified: Tue, 14 Nov 2017 09:13:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.20` - linux; arm variant v7

```console
$ docker pull postgres@sha256:32cd55d4e3ba5dd169e040625a4f5e2ff75342608cf886f47b9c845873b617c6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92055227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59352f32490308ab792fe969da1de6555a8ed5bd32f4e7573659d57f85461dcd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:56:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:56:26 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:56:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:57:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:57:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:57:44 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:57:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:57:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 04:48:24 GMT
ENV PG_MAJOR=9.3
# Tue, 14 Nov 2017 05:46:45 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 14 Nov 2017 06:01:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 06:01:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 06:01:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 06:01:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 14 Nov 2017 06:01:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 06:01:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 06:01:50 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 06:01:51 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 06:01:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 06:01:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 06:01:52 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 06:01:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02098f289f28f48d15c8057d71bca11099f92c8881c3bd933872c26f6985b337`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21569521b18c3d8ec1866e36c769afee2e7df592328f47270c5ab21f52d32bb5`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 959.5 KB (959463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7452cab800e0181df2560290a179aee3c826b3f94a06361f8d839c6998ee202`  
		Last Modified: Fri, 03 Nov 2017 05:05:00 GMT  
		Size: 7.1 MB (7112849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3843f9383decade650ca4091414ae5281360a616b2fbdeb4b721dd888d3490`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d61923d5463975ebb16f0ec093820c560c5fe617f3ef995a6edd259ca802dd0`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bc6d66d8fc0153ecc6326d77126b24d4e24285744945b786fe89d70ee93304`  
		Last Modified: Tue, 14 Nov 2017 06:05:08 GMT  
		Size: 35.3 MB (35281110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a66a12f642fd17207ce48e7b0db22c4d37d08e921ab7154ef1d4555bb58beb`  
		Last Modified: Tue, 14 Nov 2017 06:04:55 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eac20b7fdd06198eb8019fcc733e751fac2050368fac4b38ae2ce20432dfa15`  
		Last Modified: Tue, 14 Nov 2017 06:04:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ca9627616486d2d4d9d43cbfbe85f192e26b3ae5ec05ce2d3f77252d9d0a65`  
		Last Modified: Tue, 14 Nov 2017 06:04:55 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3dfaf97226aa136d85fe806b51dc7309d50a34bc900398ea1126bac79736e7`  
		Last Modified: Tue, 14 Nov 2017 06:04:55 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b4ae1307c27a00cb6a0375407bb6323ac6f39720fdf3fd984545c17d63d03`  
		Last Modified: Tue, 14 Nov 2017 06:04:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.20` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:96c029c97a816f306c05e7fa398fe073668f82eda5c9eb39b07f667e0178de9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93982947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c0b6e71e51289bbadacbaa2c730007303ebfa093a44221cb2b16f7e30b47dc8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:53:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:53:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:53:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:54:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:54:57 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:54:58 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:54:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:55:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 16:24:13 GMT
ENV PG_MAJOR=9.3
# Tue, 14 Nov 2017 17:24:15 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 14 Nov 2017 17:50:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 17:50:10 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 17:50:12 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 17:50:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 14 Nov 2017 17:50:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 17:50:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 17:50:16 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 17:50:17 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 17:50:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 17:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 17:50:20 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 17:50:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761707f443640f6f562f1f44235a97283159a4014a61abbd297ada36532115e9`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955fe9ac4b96bae2288a5f05ef3c02f0bc48df90b855e25a3dfb4e73d3ba575`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 952.0 KB (952002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1cdafa666dd2d36734ef54a12e2aad5442ebd915ecef0acc4ae693673c08c8`  
		Last Modified: Fri, 03 Nov 2017 16:52:24 GMT  
		Size: 7.1 MB (7112949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1d1dc96054579ac0ff64dd908159fea56499d8ed0201c7a1098ee2289e14f4`  
		Last Modified: Fri, 03 Nov 2017 16:52:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f9081b317e93fb35134fb782506e64e81b0b51e0b5eb85074725c9e8489c0`  
		Last Modified: Fri, 03 Nov 2017 16:52:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb9ebf19e6c3e96796e65012b59dd5b415a6e7e77bedc2ec2ded29bb0f13da7`  
		Last Modified: Tue, 14 Nov 2017 17:56:39 GMT  
		Size: 36.0 MB (35973231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d22fe66e72a52cd93931a2512af31339439f29063a2e87ba7fe5074d12ee53`  
		Last Modified: Tue, 14 Nov 2017 17:56:21 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa426929389a4c4996aa803b796153c36f3176963e04732069ffbfb7684de730`  
		Last Modified: Tue, 14 Nov 2017 17:56:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f6a02be3570382c0446ce57ee4eb77d8326c0a971731ac90b1ff8a644f966b`  
		Last Modified: Tue, 14 Nov 2017 17:56:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0c9b083fd02dc824d540ace6e9449945ad66b9954bbc50ef69aee0fbe9e28d`  
		Last Modified: Tue, 14 Nov 2017 17:56:19 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc714f90ccc34d98e775a406ff72becd1bb47e5a5fec73d416c6d1ab1395d67`  
		Last Modified: Tue, 14 Nov 2017 17:56:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.20` - linux; 386

```console
$ docker pull postgres@sha256:8ad53ef72d2ccf05e144618d6b2bda959d666e77a62837469433bac724aaa251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104823872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed618a9d421b0d1c35ee702bf008ff27199bc3a4527103c94a931de0becb5a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:04:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:04:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:05:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:06:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:06:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:06:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:06:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:18:13 GMT
ENV PG_MAJOR=9.3
# Tue, 14 Nov 2017 15:20:35 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 14 Nov 2017 15:21:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:21:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:21:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:21:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 14 Nov 2017 15:21:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:21:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:21:52 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 15:21:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 15:21:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 15:21:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 15:21:53 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 15:21:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366ef82afdd57e133e3f13fffeddf60d7091a4156c52b001f8d62f133242e4a3`  
		Last Modified: Fri, 03 Nov 2017 14:20:45 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739e92549a18ba2ad04079f386bb792685b985bdcab983de37841d1e39afdb3`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 964.0 KB (964043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9224c66676892c47bb1fd087470d1af92bf08abe1b72e414620e13e97707dac8`  
		Last Modified: Fri, 03 Nov 2017 14:20:46 GMT  
		Size: 7.1 MB (7112906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a008b74d4f4e222caacf03c380974727ba01a4b795874f08634fe5a6e7cdcb`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086efe6530699424c36bef2d1e43e20a40f75683abac22bb721deeef2dd8e209`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d49e9a851bd9bb2a15301394d6c74a0c8b4edcc8a4aa86b7e755ba58181601`  
		Last Modified: Tue, 14 Nov 2017 15:25:16 GMT  
		Size: 44.0 MB (43957638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb36544efbffb4a4e8afd30893b4051d02daea462834fddff02368823d49707`  
		Last Modified: Tue, 14 Nov 2017 15:25:04 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210afdf6eee98d292bce2f79f1b8099f5ae1fa85b4409a1b83c63c2ff8ae5024`  
		Last Modified: Tue, 14 Nov 2017 15:25:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c68e161fbad4e6341f4d5d856898ac42dd636977ac31a68b27c7a2b24445a3`  
		Last Modified: Tue, 14 Nov 2017 15:25:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2ed518cb8e1f3e6380470080f9ce987a8147aab53040f075fa80d512f31b63`  
		Last Modified: Tue, 14 Nov 2017 15:25:04 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8279fea99dd428abefc2788c1910c5f92fefdc81fcee442f93efd55418c5a614`  
		Last Modified: Tue, 14 Nov 2017 15:25:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.20` - linux; ppc64le

```console
$ docker pull postgres@sha256:4b72ea0f5f34d170783affb13f5b4701ea5ffa172405dec563d67a32070541c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101118538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160b6371bf911b9844fdd09653b4678ca7111abe8c5bfb9bb03340c485b31ddc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:52:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:52:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:52:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:54:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:54:27 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:54:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 23:12:12 GMT
ENV PG_MAJOR=9.3
# Wed, 15 Nov 2017 22:01:23 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Wed, 15 Nov 2017 22:05:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 22:05:44 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 22:05:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 22:05:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Wed, 15 Nov 2017 22:05:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 22:05:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 22:05:56 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 15 Nov 2017 22:05:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 15 Nov 2017 22:06:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 Nov 2017 22:06:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Nov 2017 22:06:04 GMT
EXPOSE 5432/tcp
# Wed, 15 Nov 2017 22:06:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2274de1c60ca9068566e9b2aa25e1577842168ab4bea606dea05bb983d920d`  
		Last Modified: Thu, 02 Nov 2017 23:19:17 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f10fa7a59c50bfcb1b548f4a5c6fb4283f614e85b1b79181c26659593303e5`  
		Last Modified: Thu, 02 Nov 2017 23:19:16 GMT  
		Size: 954.2 KB (954205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704bbcb919d4acc8240dd530ad4e1a1b81f131beb9cd7fc6fdf74a5a6c1aedc5`  
		Last Modified: Thu, 02 Nov 2017 23:19:19 GMT  
		Size: 7.1 MB (7113113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654559d07452800eee7cb9a1015d928ee9dfa05699007b198f741a5460eb258`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4517113322391565e20deb637d428fcea031004005736b4b386299329501e9b`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcdce5882f45af7316bcee8dcbb4e04b42f5d22fca38041f57b45c93a855c4`  
		Last Modified: Wed, 15 Nov 2017 22:09:05 GMT  
		Size: 41.2 MB (41225967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9933d91107ce5de350304e47aaf5abf6805a67f5b08235058a626f1e58c5c978`  
		Last Modified: Wed, 15 Nov 2017 22:08:51 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06ae63cf1ebca4c67bbcd7fd9ec49dc082b144815aea590c0f54022b342cc0`  
		Last Modified: Wed, 15 Nov 2017 22:08:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb739c6639162df18cc1e77a82feaaf08838e7a2624159351f0c58bbeb43ed23`  
		Last Modified: Wed, 15 Nov 2017 22:08:51 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4cc09ef1d084c39a614869599613781a48b44d10b086e58894633abadf016b`  
		Last Modified: Wed, 15 Nov 2017 22:08:52 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007c50db00fd0eb2144d3c1fdf203c9f22c494c3a88173e41ab15b5893181bee`  
		Last Modified: Wed, 15 Nov 2017 22:08:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.20` - linux; s390x

```console
$ docker pull postgres@sha256:313827f16cb47d0ced12abdfebcd7ce6276f8266b65ac4dafcf95b9b64b2dbc4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99293626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2203ce08640da33311873abd2ea756ff5d8758ba8b485fd7b3a0be5e00c81d96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:35:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:35:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:35:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:36:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:36:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:36:16 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:36:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:36:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 10:03:35 GMT
ENV PG_MAJOR=9.3
# Tue, 14 Nov 2017 11:05:02 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Tue, 14 Nov 2017 11:12:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 11:12:22 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 11:12:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 11:12:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Tue, 14 Nov 2017 11:12:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 11:12:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 11:12:24 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 11:12:24 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 11:12:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 11:12:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 11:12:25 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 11:12:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aaee9d43798a6e20352bc42182c2bd8e68f5a38ac8e7b1bfc2fdfb5456de5`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b307261018837c5c30edaf6e361dbd0300f4e4faaeddda83a0bcf05fe2bd24`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 970.2 KB (970243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aa0513398d454ecd65972a3cc8860400f071026e8579bbc79790be908710ed`  
		Last Modified: Fri, 03 Nov 2017 10:12:31 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6751dc08e24fee6350e4371b5dad8a0fc196723983017284914fe308cdaf88f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b3cac6db2ee49c30a497ab6f625b9cb6fe3cab8b5330faa4fc42034e8bad0f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403dcf5e484318a314163bd05968bf4de38835f8fbd215033c31516f1c908a4e`  
		Last Modified: Tue, 14 Nov 2017 11:14:54 GMT  
		Size: 38.4 MB (38387899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8011819f6aae47c89f5d1f942e96125d6f20b1721b7d38f56741d00a893fb13b`  
		Last Modified: Tue, 14 Nov 2017 11:14:45 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9146141a86abb90dbf8dc8dea2b5b6725956d253e9ccdd5b15f99c5738dac58e`  
		Last Modified: Tue, 14 Nov 2017 11:14:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c91334ca78111e404bb8e11d0d1d0af80d846c2e0201d170d9903b18487348d`  
		Last Modified: Tue, 14 Nov 2017 11:14:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a409d7a0c0781c654093da9276ad5838b07e668df324a995b25abded443d92`  
		Last Modified: Tue, 14 Nov 2017 11:14:45 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8271478501d6dacc176ce62530704c799a330675da8a9a3f132898e2e885f7`  
		Last Modified: Tue, 14 Nov 2017 11:14:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.20-alpine`

```console
$ docker pull postgres@sha256:118086dd4d94c9aca630f140367fadd5a07f03d51af675e4cd7c8d4eeeab1792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3.20-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:ea402ea4c85917f3a02aaa1f6715239975563b58030dc0960e72ca8de0eda62c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13977143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0350272b40174486c95ef9278fa680b0f3297190061ebe5595e81b8a8792e9a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:10:18 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:10:19 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:10:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:19:50 GMT
ENV PG_MAJOR=9.3
# Mon, 04 Dec 2017 16:19:55 GMT
ENV PG_VERSION=9.3.20
# Mon, 04 Dec 2017 16:19:55 GMT
ENV PG_SHA256=eb138ad67075b8acb4fae56e98ca7be5d85f3da0ba658fc48206834598a2e6ca
# Mon, 04 Dec 2017 16:19:55 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Mon, 04 Dec 2017 16:19:56 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Mon, 04 Dec 2017 16:22:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:22:23 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:22:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:22:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:22:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:22:29 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:22:30 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:22:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:22:31 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:22:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904f0449cfc1a8855b4b35387faf3a181e8cfe4c8c2bb985abc4169ce9ced2e7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1af663c14438cb6f70c996b08c05e850621c235d0cb810888802bf5650edb7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e811de350aa9450ce7443e324b81ba602055dbe3bfe0add464d2beec4cefec5e`  
		Last Modified: Mon, 04 Dec 2017 16:25:25 GMT  
		Size: 12.0 MB (11998054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67998d6f405f40a900b876014464f8e97ff7e0541534c640b0ede5e34e7dd605`  
		Last Modified: Mon, 04 Dec 2017 16:25:20 GMT  
		Size: 6.5 KB (6477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831e3519dacb924019294da0071de50d62f19c7dc0d98d206bd237256c12ec6f`  
		Last Modified: Mon, 04 Dec 2017 16:25:20 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d7d5068424c5393641baaa3eccfea3eeb4166879d0e08441df89fbd8a5d734`  
		Last Modified: Mon, 04 Dec 2017 16:25:20 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59a8a9988098c19013e50ab1e436daedd540382081cf93bc4f7f0d996b74216`  
		Last Modified: Mon, 04 Dec 2017 16:25:20 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85ea9fe7e8499cfc9e06784bb2de42715d7ddbe77c269599cf20833969a3959`  
		Last Modified: Mon, 04 Dec 2017 16:25:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:118086dd4d94c9aca630f140367fadd5a07f03d51af675e4cd7c8d4eeeab1792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:ea402ea4c85917f3a02aaa1f6715239975563b58030dc0960e72ca8de0eda62c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13977143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0350272b40174486c95ef9278fa680b0f3297190061ebe5595e81b8a8792e9a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:10:18 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:10:19 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:10:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:19:50 GMT
ENV PG_MAJOR=9.3
# Mon, 04 Dec 2017 16:19:55 GMT
ENV PG_VERSION=9.3.20
# Mon, 04 Dec 2017 16:19:55 GMT
ENV PG_SHA256=eb138ad67075b8acb4fae56e98ca7be5d85f3da0ba658fc48206834598a2e6ca
# Mon, 04 Dec 2017 16:19:55 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Mon, 04 Dec 2017 16:19:56 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Mon, 04 Dec 2017 16:22:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:22:23 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:22:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:22:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:22:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:22:29 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:22:30 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:22:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:22:31 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:22:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904f0449cfc1a8855b4b35387faf3a181e8cfe4c8c2bb985abc4169ce9ced2e7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1af663c14438cb6f70c996b08c05e850621c235d0cb810888802bf5650edb7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e811de350aa9450ce7443e324b81ba602055dbe3bfe0add464d2beec4cefec5e`  
		Last Modified: Mon, 04 Dec 2017 16:25:25 GMT  
		Size: 12.0 MB (11998054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67998d6f405f40a900b876014464f8e97ff7e0541534c640b0ede5e34e7dd605`  
		Last Modified: Mon, 04 Dec 2017 16:25:20 GMT  
		Size: 6.5 KB (6477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831e3519dacb924019294da0071de50d62f19c7dc0d98d206bd237256c12ec6f`  
		Last Modified: Mon, 04 Dec 2017 16:25:20 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d7d5068424c5393641baaa3eccfea3eeb4166879d0e08441df89fbd8a5d734`  
		Last Modified: Mon, 04 Dec 2017 16:25:20 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59a8a9988098c19013e50ab1e436daedd540382081cf93bc4f7f0d996b74216`  
		Last Modified: Mon, 04 Dec 2017 16:25:20 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85ea9fe7e8499cfc9e06784bb2de42715d7ddbe77c269599cf20833969a3959`  
		Last Modified: Mon, 04 Dec 2017 16:25:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:28f4f197d99ad0234fcc6f970b6c5673423fee905aaffaf65c006852cdefd5e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:9.4` - linux; amd64

```console
$ docker pull postgres@sha256:a5baaf6f53d5d63265bbb42a0f448ceabec8b627f074ab8168f52bb37495f579
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103243053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92cb571ca65a610d1c789c572f43514e6475a51f17c86c3c0b2f535c9dbea4a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:05:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:05:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:05:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:05:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:06:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:06:14 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:06:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:06:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:08:46 GMT
ENV PG_MAJOR=9.4
# Tue, 12 Dec 2017 06:08:47 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 12 Dec 2017 06:09:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:09:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:09:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:09:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 12 Dec 2017 06:09:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:09:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:09:35 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:09:35 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:09:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:09:36 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:09:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d44cf86769b1ace14785cbf0437fdf62eb233ac876b2aee10a1990774b2f6c`  
		Last Modified: Tue, 12 Dec 2017 06:15:20 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a15c538319f3f262243801ed927879f0a177d9e64cc9d0f972fa6476b0f2b`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 985.2 KB (985223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76eec81f9ce8772ca4bbff467e13862e31d5cbf1c736544d802e989a97bf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:21 GMT  
		Size: 7.1 MB (7113051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a1ed29c8a8f6328532d32b0beaee52f0b42bf37a6a2a7a3fa166a0b650dde3`  
		Last Modified: Tue, 12 Dec 2017 06:15:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8862935f78c771d276cb8c27de571b4c5cace4904377ab7abf47a6cb687a1271`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327022d24632dc8b08b919b64a286e7940ebeb584afef07378861e93afab8d9`  
		Last Modified: Tue, 12 Dec 2017 06:17:00 GMT  
		Size: 42.5 MB (42529466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543fcabea67b04f0e467ed0fdd74116f71d5bb608b54121b3a04fac8c4aa4add`  
		Last Modified: Tue, 12 Dec 2017 06:16:51 GMT  
		Size: 6.7 KB (6691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a44b576a99d718d2bf2769f7b035d6fd21ea5ae035a594f9b5339fe3c6ce04b`  
		Last Modified: Tue, 12 Dec 2017 06:16:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609760b4b1649f4c3814a1cef484b1e1001cea3d5e8bf8ae7d465d119bc027e8`  
		Last Modified: Tue, 12 Dec 2017 06:16:52 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5046f80cef5e99486b86dc214ea7b7cbab3d71ba39deb7fafebfb5ed5c758c47`  
		Last Modified: Tue, 12 Dec 2017 06:16:52 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f157fa181a90aafdf11c881e5221957370089f8959c67adefd0ef2cd2f6782`  
		Last Modified: Tue, 12 Dec 2017 06:16:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v5

```console
$ docker pull postgres@sha256:9e50f5f666a0e21eeeda65c86f1b8fdac03cac2978cee875d5c9552d1d5b7054
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95752582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30f2ce94376930bcf6cb5e95a2063c21e0706825d999a2353f7369bb834a943b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:39:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:39:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:39:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:40:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:41:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:41:12 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:41:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 06:41:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 07:19:09 GMT
ENV PG_MAJOR=9.4
# Tue, 14 Nov 2017 08:36:38 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 14 Nov 2017 08:53:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 08:53:47 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 08:53:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 08:53:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 14 Nov 2017 08:53:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 08:53:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 08:53:49 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 08:53:50 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 08:53:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 08:53:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 08:53:51 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 08:53:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4499355f1f971b072f5df97cae2d6c7f1d8322f25b4dac2045c821d21422f60`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a01cff85622e54745784c0095d76615df0b38104efb50588c3b16c82a0875`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 974.6 KB (974611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ddc153c4035b61f0b934caa80c2c3a28ad633808b73de2fe5d26fa939f138c`  
		Last Modified: Fri, 03 Nov 2017 07:53:41 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89dd6d7a3a69fb863cd3a6ca51206622ac391e9b42e24058e60d8a0711f8a1`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e4feab6ba0b72a409ac8a911ca1567bb6c3045a3d5df5340d079fbdb71d4a`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf30caf59df56b9ce067fb3638a5bf8857797ac1fc6c0cbb130c7d1720773121`  
		Last Modified: Tue, 14 Nov 2017 09:12:58 GMT  
		Size: 36.8 MB (36769544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d506327a427a7d31fbb1b01a5db1149b3b340822d208370590139f7fa8a361b`  
		Last Modified: Tue, 14 Nov 2017 09:12:43 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0564d2fb42a96fa908d0fa8a1b79a47384b7669fad7ec7b473c2c785f15b5`  
		Last Modified: Tue, 14 Nov 2017 09:12:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae29abee6b48b01f8eb9468a3a0fe3d124291d6e67bdb7e747aee4a9e707c524`  
		Last Modified: Tue, 14 Nov 2017 09:12:44 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5217b91274e20f3df2ce5e41c56990f1614a92c3b70ee20f21128792bca23c`  
		Last Modified: Tue, 14 Nov 2017 09:12:44 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6da2652c11947f933d68e8a14aaf75d6507f0e01b97875961dea31af64a6d68`  
		Last Modified: Tue, 14 Nov 2017 09:12:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v7

```console
$ docker pull postgres@sha256:8840d6135997cdd4025529f08696413a782f957258fc1b4855b9fda64c26c18f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92390760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973ec715b4dfc269790b97078dc11f7b658eea4b6de55d25bea309e704e2a7f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:56:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:56:26 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:56:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:57:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:57:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:57:44 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:57:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:57:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 04:32:26 GMT
ENV PG_MAJOR=9.4
# Tue, 14 Nov 2017 05:30:30 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 14 Nov 2017 05:46:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 05:46:19 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 05:46:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 05:46:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 14 Nov 2017 05:46:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 05:46:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 05:46:21 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 05:46:22 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 05:46:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 05:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 05:46:23 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 05:46:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02098f289f28f48d15c8057d71bca11099f92c8881c3bd933872c26f6985b337`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21569521b18c3d8ec1866e36c769afee2e7df592328f47270c5ab21f52d32bb5`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 959.5 KB (959463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7452cab800e0181df2560290a179aee3c826b3f94a06361f8d839c6998ee202`  
		Last Modified: Fri, 03 Nov 2017 05:05:00 GMT  
		Size: 7.1 MB (7112849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3843f9383decade650ca4091414ae5281360a616b2fbdeb4b721dd888d3490`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d61923d5463975ebb16f0ec093820c560c5fe617f3ef995a6edd259ca802dd0`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79e8a99f87086b5073bf65a7479f525862d635703c4a0a2554f7a681c3d6be2`  
		Last Modified: Tue, 14 Nov 2017 06:04:35 GMT  
		Size: 35.6 MB (35616461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ac14b77e03edd94a26e78fa6929e2e67756fade27ec3bcd1c4d78c05ea950b`  
		Last Modified: Tue, 14 Nov 2017 06:04:23 GMT  
		Size: 6.7 KB (6690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5f859c3234c97e9c4883708c719599b01969e72b3ce8de44bbe0955fce050a`  
		Last Modified: Tue, 14 Nov 2017 06:04:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c904663bdc0f6e87fa0991624257e8eaa9ab9413bac1ee660c4831d0dbdff237`  
		Last Modified: Tue, 14 Nov 2017 06:04:23 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb53bcf4015e2dc41c3edb08ed6d68a639b16fd3e93df1a634c6f3e37b6ae082`  
		Last Modified: Tue, 14 Nov 2017 06:04:23 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ec2d088a216e898fff52b003ce185d213dbb8ebe720ecdad913b77079a6c11`  
		Last Modified: Tue, 14 Nov 2017 06:04:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:28aa470388f79b441f32c14a760233e6e3c121ea06246cb8cbdcb64be6664bf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94325011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14de36dfac56c402efc5b3ffe1474e296fe370e59500c4d38081768a77f8f1aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:53:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:53:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:53:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:54:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:54:57 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:54:58 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:54:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:55:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 15:56:01 GMT
ENV PG_MAJOR=9.4
# Tue, 14 Nov 2017 16:56:04 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 14 Nov 2017 17:23:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 17:23:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 17:23:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 17:23:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 14 Nov 2017 17:23:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 17:23:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 17:23:38 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 17:23:39 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 17:23:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 17:23:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 17:23:43 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 17:23:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761707f443640f6f562f1f44235a97283159a4014a61abbd297ada36532115e9`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955fe9ac4b96bae2288a5f05ef3c02f0bc48df90b855e25a3dfb4e73d3ba575`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 952.0 KB (952002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1cdafa666dd2d36734ef54a12e2aad5442ebd915ecef0acc4ae693673c08c8`  
		Last Modified: Fri, 03 Nov 2017 16:52:24 GMT  
		Size: 7.1 MB (7112949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1d1dc96054579ac0ff64dd908159fea56499d8ed0201c7a1098ee2289e14f4`  
		Last Modified: Fri, 03 Nov 2017 16:52:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f9081b317e93fb35134fb782506e64e81b0b51e0b5eb85074725c9e8489c0`  
		Last Modified: Fri, 03 Nov 2017 16:52:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020d9ca6091cb13687341f18e19e04bc872cec47854cd2ed0ea7313398505b7f`  
		Last Modified: Tue, 14 Nov 2017 17:55:41 GMT  
		Size: 36.3 MB (36315115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e18540d66611291de41fd2f99a6b3eb70362fb3e3446e9325fcca2759e6a098`  
		Last Modified: Tue, 14 Nov 2017 17:55:21 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1089c6370ebb0864d3ebc2c890b67837577265669f24acfd2f2ffc85756d77c9`  
		Last Modified: Tue, 14 Nov 2017 17:55:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb717dd034462e6f3b708d7bea89cac4a7ed238c7c52a4475c4761afad5a822b`  
		Last Modified: Tue, 14 Nov 2017 17:55:21 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd366402051ad56ef2369946d679b3d43235602c0f5a01aef9ec01b6ddc662d2`  
		Last Modified: Tue, 14 Nov 2017 17:55:21 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f08ae19bc0838562a1a34b101f485ed5d225403429d5286b32f7a6a2e58acf`  
		Last Modified: Tue, 14 Nov 2017 17:55:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; 386

```console
$ docker pull postgres@sha256:0c1f7e3b9dde656e99273cfac6a6af355a7b5aa2ed84c3174db3aa8a1177e55a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105203939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc95d6a6d9d74cda58056fca146fdf96c7e67a297b3206f58fa7081286e3e57d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:04:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:04:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:05:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:06:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:06:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:06:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:06:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:15:12 GMT
ENV PG_MAJOR=9.4
# Tue, 14 Nov 2017 15:19:00 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 14 Nov 2017 15:20:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:20:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:20:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:20:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 14 Nov 2017 15:20:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:20:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:20:15 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 15:20:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 15:20:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 15:20:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 15:20:17 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 15:20:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366ef82afdd57e133e3f13fffeddf60d7091a4156c52b001f8d62f133242e4a3`  
		Last Modified: Fri, 03 Nov 2017 14:20:45 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739e92549a18ba2ad04079f386bb792685b985bdcab983de37841d1e39afdb3`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 964.0 KB (964043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9224c66676892c47bb1fd087470d1af92bf08abe1b72e414620e13e97707dac8`  
		Last Modified: Fri, 03 Nov 2017 14:20:46 GMT  
		Size: 7.1 MB (7112906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a008b74d4f4e222caacf03c380974727ba01a4b795874f08634fe5a6e7cdcb`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086efe6530699424c36bef2d1e43e20a40f75683abac22bb721deeef2dd8e209`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e919bfbcfc2cbae4c8c431f4475a6f06e5afec3df6be31af446a5c501ef50925`  
		Last Modified: Tue, 14 Nov 2017 15:24:43 GMT  
		Size: 44.3 MB (44337520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9646b1f59bb43e274e14d0a057e9b966b06a8db705dabdcfdeccc0b7e9bc3059`  
		Last Modified: Tue, 14 Nov 2017 15:24:30 GMT  
		Size: 6.7 KB (6691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b43ebabccafc907cee4eec7b3cfb7af5daa5b7d50369cf0fa571f0426ce03d`  
		Last Modified: Tue, 14 Nov 2017 15:24:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b8c2b42c45f8ae785350604f9429331039b1515dbe6755eb3e0c0620610565`  
		Last Modified: Tue, 14 Nov 2017 15:24:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e1141944c770502ab1422848a9299fc926b991a77ca86466db8507ea602c86`  
		Last Modified: Tue, 14 Nov 2017 15:24:30 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6865c9d54bd9803f34ff5bcd72331de390a95746066fdec7b715db06f22583e6`  
		Last Modified: Tue, 14 Nov 2017 15:24:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; ppc64le

```console
$ docker pull postgres@sha256:bd29ee9b9eabff8c50731ba175e81fb55f2595131426d0820a82e2321b655019
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101472436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861a76c11234a1ad8d768a213cd5c21cf839eaa232c6facc25ac86501b144038`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:52:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:52:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:52:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:54:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:54:27 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:54:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 23:06:03 GMT
ENV PG_MAJOR=9.4
# Wed, 15 Nov 2017 21:56:28 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Wed, 15 Nov 2017 22:00:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 22:00:47 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 22:00:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 22:00:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Wed, 15 Nov 2017 22:00:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 22:00:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 22:00:59 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 15 Nov 2017 22:01:04 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 15 Nov 2017 22:01:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 Nov 2017 22:01:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Nov 2017 22:01:14 GMT
EXPOSE 5432/tcp
# Wed, 15 Nov 2017 22:01:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2274de1c60ca9068566e9b2aa25e1577842168ab4bea606dea05bb983d920d`  
		Last Modified: Thu, 02 Nov 2017 23:19:17 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f10fa7a59c50bfcb1b548f4a5c6fb4283f614e85b1b79181c26659593303e5`  
		Last Modified: Thu, 02 Nov 2017 23:19:16 GMT  
		Size: 954.2 KB (954205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704bbcb919d4acc8240dd530ad4e1a1b81f131beb9cd7fc6fdf74a5a6c1aedc5`  
		Last Modified: Thu, 02 Nov 2017 23:19:19 GMT  
		Size: 7.1 MB (7113113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654559d07452800eee7cb9a1015d928ee9dfa05699007b198f741a5460eb258`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4517113322391565e20deb637d428fcea031004005736b4b386299329501e9b`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfc7bbed6772941d34988664c3a805e09f188586dca9b490580a8e787b8b2d`  
		Last Modified: Wed, 15 Nov 2017 22:08:39 GMT  
		Size: 41.6 MB (41579690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd8c2c4d2549d8ecb6dee19eb617b6edb5a87ef4700924a9a13954815daf1b5`  
		Last Modified: Wed, 15 Nov 2017 22:08:24 GMT  
		Size: 6.7 KB (6689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cadceada1a9bbf505a3f4daaf220e15db4e099cf11b7cf39bdadb6c50f7bf6`  
		Last Modified: Wed, 15 Nov 2017 22:08:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943b4fb3a1422de9be3126d7752e639724a9253a6b192238451adc8c4e3986f2`  
		Last Modified: Wed, 15 Nov 2017 22:08:24 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510403505030bac03235b22957a5a995df42ab24786c7470fcb37f013eb342a7`  
		Last Modified: Wed, 15 Nov 2017 22:08:24 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1947b29f7988137dc72a0c80511a3f61fa8ee078d807cb1d395b146a777ffc37`  
		Last Modified: Wed, 15 Nov 2017 22:08:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; s390x

```console
$ docker pull postgres@sha256:4436a0d21165dceb3aa5ea125776bad9fa8b86fbfaa276eb091941eb4b7ea0d6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.7 MB (99650138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6392125ceeb9af601e9a24ab5fb61298596d44e01533d982003d0e130b3cec81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:35:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:35:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:35:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:36:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:36:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:36:16 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:36:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:36:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 09:55:20 GMT
ENV PG_MAJOR=9.4
# Tue, 14 Nov 2017 10:57:03 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 14 Nov 2017 11:04:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 11:04:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 11:04:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 11:04:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 14 Nov 2017 11:04:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 11:04:44 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 11:04:44 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 11:04:44 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 11:04:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 11:04:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 11:04:45 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 11:04:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aaee9d43798a6e20352bc42182c2bd8e68f5a38ac8e7b1bfc2fdfb5456de5`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b307261018837c5c30edaf6e361dbd0300f4e4faaeddda83a0bcf05fe2bd24`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 970.2 KB (970243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aa0513398d454ecd65972a3cc8860400f071026e8579bbc79790be908710ed`  
		Last Modified: Fri, 03 Nov 2017 10:12:31 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6751dc08e24fee6350e4371b5dad8a0fc196723983017284914fe308cdaf88f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b3cac6db2ee49c30a497ab6f625b9cb6fe3cab8b5330faa4fc42034e8bad0f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6b6ac7269fa8a796e3f3158c5f34fbbe78096dd8433977904f853cd6351610`  
		Last Modified: Tue, 14 Nov 2017 11:14:32 GMT  
		Size: 38.7 MB (38744223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d673e1299b14d91026ba18e2ab4067e57a09b16003115c413a7bf7da649b21e`  
		Last Modified: Tue, 14 Nov 2017 11:14:24 GMT  
		Size: 6.7 KB (6695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc31bafea6017e3cdc36d8f45b82db0cf0ae75926c69805fe6b7c232aa046cd`  
		Last Modified: Tue, 14 Nov 2017 11:14:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2bf9dccbe628ddcbd4817f1a6d7350a255a787d870ba084deb463cbd721e58`  
		Last Modified: Tue, 14 Nov 2017 11:14:24 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2627cdfd1f479b5d58e0515595021e4cf0d57d38ecbacebe02a911fab4215dc8`  
		Last Modified: Tue, 14 Nov 2017 11:14:24 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9430ac8f7d12d4871d54249b74a3fb0bda89eb79261675c5722c8c187da6c6db`  
		Last Modified: Tue, 14 Nov 2017 11:14:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.15`

```console
$ docker pull postgres@sha256:28f4f197d99ad0234fcc6f970b6c5673423fee905aaffaf65c006852cdefd5e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:9.4.15` - linux; amd64

```console
$ docker pull postgres@sha256:a5baaf6f53d5d63265bbb42a0f448ceabec8b627f074ab8168f52bb37495f579
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103243053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92cb571ca65a610d1c789c572f43514e6475a51f17c86c3c0b2f535c9dbea4a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:05:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:05:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:05:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:05:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:06:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:06:14 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:06:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:06:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:08:46 GMT
ENV PG_MAJOR=9.4
# Tue, 12 Dec 2017 06:08:47 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 12 Dec 2017 06:09:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:09:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:09:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:09:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 12 Dec 2017 06:09:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:09:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:09:35 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:09:35 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:09:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:09:36 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:09:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d44cf86769b1ace14785cbf0437fdf62eb233ac876b2aee10a1990774b2f6c`  
		Last Modified: Tue, 12 Dec 2017 06:15:20 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a15c538319f3f262243801ed927879f0a177d9e64cc9d0f972fa6476b0f2b`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 985.2 KB (985223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76eec81f9ce8772ca4bbff467e13862e31d5cbf1c736544d802e989a97bf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:21 GMT  
		Size: 7.1 MB (7113051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a1ed29c8a8f6328532d32b0beaee52f0b42bf37a6a2a7a3fa166a0b650dde3`  
		Last Modified: Tue, 12 Dec 2017 06:15:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8862935f78c771d276cb8c27de571b4c5cace4904377ab7abf47a6cb687a1271`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327022d24632dc8b08b919b64a286e7940ebeb584afef07378861e93afab8d9`  
		Last Modified: Tue, 12 Dec 2017 06:17:00 GMT  
		Size: 42.5 MB (42529466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543fcabea67b04f0e467ed0fdd74116f71d5bb608b54121b3a04fac8c4aa4add`  
		Last Modified: Tue, 12 Dec 2017 06:16:51 GMT  
		Size: 6.7 KB (6691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a44b576a99d718d2bf2769f7b035d6fd21ea5ae035a594f9b5339fe3c6ce04b`  
		Last Modified: Tue, 12 Dec 2017 06:16:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609760b4b1649f4c3814a1cef484b1e1001cea3d5e8bf8ae7d465d119bc027e8`  
		Last Modified: Tue, 12 Dec 2017 06:16:52 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5046f80cef5e99486b86dc214ea7b7cbab3d71ba39deb7fafebfb5ed5c758c47`  
		Last Modified: Tue, 12 Dec 2017 06:16:52 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f157fa181a90aafdf11c881e5221957370089f8959c67adefd0ef2cd2f6782`  
		Last Modified: Tue, 12 Dec 2017 06:16:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.15` - linux; arm variant v5

```console
$ docker pull postgres@sha256:9e50f5f666a0e21eeeda65c86f1b8fdac03cac2978cee875d5c9552d1d5b7054
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95752582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30f2ce94376930bcf6cb5e95a2063c21e0706825d999a2353f7369bb834a943b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:39:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:39:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:39:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:40:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:41:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:41:12 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:41:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 06:41:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 07:19:09 GMT
ENV PG_MAJOR=9.4
# Tue, 14 Nov 2017 08:36:38 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 14 Nov 2017 08:53:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 08:53:47 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 08:53:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 08:53:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 14 Nov 2017 08:53:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 08:53:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 08:53:49 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 08:53:50 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 08:53:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 08:53:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 08:53:51 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 08:53:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4499355f1f971b072f5df97cae2d6c7f1d8322f25b4dac2045c821d21422f60`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a01cff85622e54745784c0095d76615df0b38104efb50588c3b16c82a0875`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 974.6 KB (974611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ddc153c4035b61f0b934caa80c2c3a28ad633808b73de2fe5d26fa939f138c`  
		Last Modified: Fri, 03 Nov 2017 07:53:41 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89dd6d7a3a69fb863cd3a6ca51206622ac391e9b42e24058e60d8a0711f8a1`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e4feab6ba0b72a409ac8a911ca1567bb6c3045a3d5df5340d079fbdb71d4a`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf30caf59df56b9ce067fb3638a5bf8857797ac1fc6c0cbb130c7d1720773121`  
		Last Modified: Tue, 14 Nov 2017 09:12:58 GMT  
		Size: 36.8 MB (36769544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d506327a427a7d31fbb1b01a5db1149b3b340822d208370590139f7fa8a361b`  
		Last Modified: Tue, 14 Nov 2017 09:12:43 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0564d2fb42a96fa908d0fa8a1b79a47384b7669fad7ec7b473c2c785f15b5`  
		Last Modified: Tue, 14 Nov 2017 09:12:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae29abee6b48b01f8eb9468a3a0fe3d124291d6e67bdb7e747aee4a9e707c524`  
		Last Modified: Tue, 14 Nov 2017 09:12:44 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5217b91274e20f3df2ce5e41c56990f1614a92c3b70ee20f21128792bca23c`  
		Last Modified: Tue, 14 Nov 2017 09:12:44 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6da2652c11947f933d68e8a14aaf75d6507f0e01b97875961dea31af64a6d68`  
		Last Modified: Tue, 14 Nov 2017 09:12:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.15` - linux; arm variant v7

```console
$ docker pull postgres@sha256:8840d6135997cdd4025529f08696413a782f957258fc1b4855b9fda64c26c18f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92390760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973ec715b4dfc269790b97078dc11f7b658eea4b6de55d25bea309e704e2a7f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:56:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:56:26 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:56:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:57:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:57:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:57:44 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:57:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:57:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 04:32:26 GMT
ENV PG_MAJOR=9.4
# Tue, 14 Nov 2017 05:30:30 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 14 Nov 2017 05:46:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 05:46:19 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 05:46:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 05:46:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 14 Nov 2017 05:46:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 05:46:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 05:46:21 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 05:46:22 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 05:46:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 05:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 05:46:23 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 05:46:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02098f289f28f48d15c8057d71bca11099f92c8881c3bd933872c26f6985b337`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21569521b18c3d8ec1866e36c769afee2e7df592328f47270c5ab21f52d32bb5`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 959.5 KB (959463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7452cab800e0181df2560290a179aee3c826b3f94a06361f8d839c6998ee202`  
		Last Modified: Fri, 03 Nov 2017 05:05:00 GMT  
		Size: 7.1 MB (7112849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3843f9383decade650ca4091414ae5281360a616b2fbdeb4b721dd888d3490`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d61923d5463975ebb16f0ec093820c560c5fe617f3ef995a6edd259ca802dd0`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79e8a99f87086b5073bf65a7479f525862d635703c4a0a2554f7a681c3d6be2`  
		Last Modified: Tue, 14 Nov 2017 06:04:35 GMT  
		Size: 35.6 MB (35616461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ac14b77e03edd94a26e78fa6929e2e67756fade27ec3bcd1c4d78c05ea950b`  
		Last Modified: Tue, 14 Nov 2017 06:04:23 GMT  
		Size: 6.7 KB (6690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5f859c3234c97e9c4883708c719599b01969e72b3ce8de44bbe0955fce050a`  
		Last Modified: Tue, 14 Nov 2017 06:04:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c904663bdc0f6e87fa0991624257e8eaa9ab9413bac1ee660c4831d0dbdff237`  
		Last Modified: Tue, 14 Nov 2017 06:04:23 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb53bcf4015e2dc41c3edb08ed6d68a639b16fd3e93df1a634c6f3e37b6ae082`  
		Last Modified: Tue, 14 Nov 2017 06:04:23 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ec2d088a216e898fff52b003ce185d213dbb8ebe720ecdad913b77079a6c11`  
		Last Modified: Tue, 14 Nov 2017 06:04:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.15` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:28aa470388f79b441f32c14a760233e6e3c121ea06246cb8cbdcb64be6664bf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94325011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14de36dfac56c402efc5b3ffe1474e296fe370e59500c4d38081768a77f8f1aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:53:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:53:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:53:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:54:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:54:57 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:54:58 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:54:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:55:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 15:56:01 GMT
ENV PG_MAJOR=9.4
# Tue, 14 Nov 2017 16:56:04 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 14 Nov 2017 17:23:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 17:23:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 17:23:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 17:23:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 14 Nov 2017 17:23:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 17:23:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 17:23:38 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 17:23:39 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 17:23:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 17:23:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 17:23:43 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 17:23:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761707f443640f6f562f1f44235a97283159a4014a61abbd297ada36532115e9`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955fe9ac4b96bae2288a5f05ef3c02f0bc48df90b855e25a3dfb4e73d3ba575`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 952.0 KB (952002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1cdafa666dd2d36734ef54a12e2aad5442ebd915ecef0acc4ae693673c08c8`  
		Last Modified: Fri, 03 Nov 2017 16:52:24 GMT  
		Size: 7.1 MB (7112949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1d1dc96054579ac0ff64dd908159fea56499d8ed0201c7a1098ee2289e14f4`  
		Last Modified: Fri, 03 Nov 2017 16:52:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f9081b317e93fb35134fb782506e64e81b0b51e0b5eb85074725c9e8489c0`  
		Last Modified: Fri, 03 Nov 2017 16:52:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020d9ca6091cb13687341f18e19e04bc872cec47854cd2ed0ea7313398505b7f`  
		Last Modified: Tue, 14 Nov 2017 17:55:41 GMT  
		Size: 36.3 MB (36315115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e18540d66611291de41fd2f99a6b3eb70362fb3e3446e9325fcca2759e6a098`  
		Last Modified: Tue, 14 Nov 2017 17:55:21 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1089c6370ebb0864d3ebc2c890b67837577265669f24acfd2f2ffc85756d77c9`  
		Last Modified: Tue, 14 Nov 2017 17:55:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb717dd034462e6f3b708d7bea89cac4a7ed238c7c52a4475c4761afad5a822b`  
		Last Modified: Tue, 14 Nov 2017 17:55:21 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd366402051ad56ef2369946d679b3d43235602c0f5a01aef9ec01b6ddc662d2`  
		Last Modified: Tue, 14 Nov 2017 17:55:21 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f08ae19bc0838562a1a34b101f485ed5d225403429d5286b32f7a6a2e58acf`  
		Last Modified: Tue, 14 Nov 2017 17:55:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.15` - linux; 386

```console
$ docker pull postgres@sha256:0c1f7e3b9dde656e99273cfac6a6af355a7b5aa2ed84c3174db3aa8a1177e55a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105203939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc95d6a6d9d74cda58056fca146fdf96c7e67a297b3206f58fa7081286e3e57d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:04:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:04:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:05:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:06:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:06:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:06:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:06:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:15:12 GMT
ENV PG_MAJOR=9.4
# Tue, 14 Nov 2017 15:19:00 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 14 Nov 2017 15:20:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:20:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:20:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:20:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 14 Nov 2017 15:20:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:20:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:20:15 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 15:20:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 15:20:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 15:20:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 15:20:17 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 15:20:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366ef82afdd57e133e3f13fffeddf60d7091a4156c52b001f8d62f133242e4a3`  
		Last Modified: Fri, 03 Nov 2017 14:20:45 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739e92549a18ba2ad04079f386bb792685b985bdcab983de37841d1e39afdb3`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 964.0 KB (964043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9224c66676892c47bb1fd087470d1af92bf08abe1b72e414620e13e97707dac8`  
		Last Modified: Fri, 03 Nov 2017 14:20:46 GMT  
		Size: 7.1 MB (7112906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a008b74d4f4e222caacf03c380974727ba01a4b795874f08634fe5a6e7cdcb`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086efe6530699424c36bef2d1e43e20a40f75683abac22bb721deeef2dd8e209`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e919bfbcfc2cbae4c8c431f4475a6f06e5afec3df6be31af446a5c501ef50925`  
		Last Modified: Tue, 14 Nov 2017 15:24:43 GMT  
		Size: 44.3 MB (44337520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9646b1f59bb43e274e14d0a057e9b966b06a8db705dabdcfdeccc0b7e9bc3059`  
		Last Modified: Tue, 14 Nov 2017 15:24:30 GMT  
		Size: 6.7 KB (6691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b43ebabccafc907cee4eec7b3cfb7af5daa5b7d50369cf0fa571f0426ce03d`  
		Last Modified: Tue, 14 Nov 2017 15:24:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b8c2b42c45f8ae785350604f9429331039b1515dbe6755eb3e0c0620610565`  
		Last Modified: Tue, 14 Nov 2017 15:24:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e1141944c770502ab1422848a9299fc926b991a77ca86466db8507ea602c86`  
		Last Modified: Tue, 14 Nov 2017 15:24:30 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6865c9d54bd9803f34ff5bcd72331de390a95746066fdec7b715db06f22583e6`  
		Last Modified: Tue, 14 Nov 2017 15:24:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.15` - linux; ppc64le

```console
$ docker pull postgres@sha256:bd29ee9b9eabff8c50731ba175e81fb55f2595131426d0820a82e2321b655019
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101472436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861a76c11234a1ad8d768a213cd5c21cf839eaa232c6facc25ac86501b144038`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:52:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:52:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:52:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:54:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:54:27 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:54:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 23:06:03 GMT
ENV PG_MAJOR=9.4
# Wed, 15 Nov 2017 21:56:28 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Wed, 15 Nov 2017 22:00:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 22:00:47 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 22:00:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 22:00:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Wed, 15 Nov 2017 22:00:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 22:00:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 22:00:59 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 15 Nov 2017 22:01:04 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 15 Nov 2017 22:01:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 Nov 2017 22:01:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Nov 2017 22:01:14 GMT
EXPOSE 5432/tcp
# Wed, 15 Nov 2017 22:01:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2274de1c60ca9068566e9b2aa25e1577842168ab4bea606dea05bb983d920d`  
		Last Modified: Thu, 02 Nov 2017 23:19:17 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f10fa7a59c50bfcb1b548f4a5c6fb4283f614e85b1b79181c26659593303e5`  
		Last Modified: Thu, 02 Nov 2017 23:19:16 GMT  
		Size: 954.2 KB (954205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704bbcb919d4acc8240dd530ad4e1a1b81f131beb9cd7fc6fdf74a5a6c1aedc5`  
		Last Modified: Thu, 02 Nov 2017 23:19:19 GMT  
		Size: 7.1 MB (7113113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654559d07452800eee7cb9a1015d928ee9dfa05699007b198f741a5460eb258`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4517113322391565e20deb637d428fcea031004005736b4b386299329501e9b`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfc7bbed6772941d34988664c3a805e09f188586dca9b490580a8e787b8b2d`  
		Last Modified: Wed, 15 Nov 2017 22:08:39 GMT  
		Size: 41.6 MB (41579690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd8c2c4d2549d8ecb6dee19eb617b6edb5a87ef4700924a9a13954815daf1b5`  
		Last Modified: Wed, 15 Nov 2017 22:08:24 GMT  
		Size: 6.7 KB (6689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cadceada1a9bbf505a3f4daaf220e15db4e099cf11b7cf39bdadb6c50f7bf6`  
		Last Modified: Wed, 15 Nov 2017 22:08:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943b4fb3a1422de9be3126d7752e639724a9253a6b192238451adc8c4e3986f2`  
		Last Modified: Wed, 15 Nov 2017 22:08:24 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510403505030bac03235b22957a5a995df42ab24786c7470fcb37f013eb342a7`  
		Last Modified: Wed, 15 Nov 2017 22:08:24 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1947b29f7988137dc72a0c80511a3f61fa8ee078d807cb1d395b146a777ffc37`  
		Last Modified: Wed, 15 Nov 2017 22:08:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.15` - linux; s390x

```console
$ docker pull postgres@sha256:4436a0d21165dceb3aa5ea125776bad9fa8b86fbfaa276eb091941eb4b7ea0d6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.7 MB (99650138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6392125ceeb9af601e9a24ab5fb61298596d44e01533d982003d0e130b3cec81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:35:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:35:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:35:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:36:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:36:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:36:16 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:36:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:36:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 09:55:20 GMT
ENV PG_MAJOR=9.4
# Tue, 14 Nov 2017 10:57:03 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Tue, 14 Nov 2017 11:04:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 11:04:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 11:04:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 11:04:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Tue, 14 Nov 2017 11:04:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 11:04:44 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 11:04:44 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 11:04:44 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 11:04:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 11:04:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 11:04:45 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 11:04:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aaee9d43798a6e20352bc42182c2bd8e68f5a38ac8e7b1bfc2fdfb5456de5`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b307261018837c5c30edaf6e361dbd0300f4e4faaeddda83a0bcf05fe2bd24`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 970.2 KB (970243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aa0513398d454ecd65972a3cc8860400f071026e8579bbc79790be908710ed`  
		Last Modified: Fri, 03 Nov 2017 10:12:31 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6751dc08e24fee6350e4371b5dad8a0fc196723983017284914fe308cdaf88f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b3cac6db2ee49c30a497ab6f625b9cb6fe3cab8b5330faa4fc42034e8bad0f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6b6ac7269fa8a796e3f3158c5f34fbbe78096dd8433977904f853cd6351610`  
		Last Modified: Tue, 14 Nov 2017 11:14:32 GMT  
		Size: 38.7 MB (38744223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d673e1299b14d91026ba18e2ab4067e57a09b16003115c413a7bf7da649b21e`  
		Last Modified: Tue, 14 Nov 2017 11:14:24 GMT  
		Size: 6.7 KB (6695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc31bafea6017e3cdc36d8f45b82db0cf0ae75926c69805fe6b7c232aa046cd`  
		Last Modified: Tue, 14 Nov 2017 11:14:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2bf9dccbe628ddcbd4817f1a6d7350a255a787d870ba084deb463cbd721e58`  
		Last Modified: Tue, 14 Nov 2017 11:14:24 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2627cdfd1f479b5d58e0515595021e4cf0d57d38ecbacebe02a911fab4215dc8`  
		Last Modified: Tue, 14 Nov 2017 11:14:24 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9430ac8f7d12d4871d54249b74a3fb0bda89eb79261675c5722c8c187da6c6db`  
		Last Modified: Tue, 14 Nov 2017 11:14:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.15-alpine`

```console
$ docker pull postgres@sha256:3838fbbf1d9d384802f5089b968bbf22090532f7d43c89b59156651fe316f9a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.15-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:923c388a89d2ae22f69c5b28681b346ab54099a6e6ad0c8302d5b2fbbdb9462c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14265500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c533253a673f5e4a46cc97920affd07c4a013da40b9b5bbd497cb8f8861b1e10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:10:18 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:10:19 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:10:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:16:51 GMT
ENV PG_MAJOR=9.4
# Mon, 04 Dec 2017 16:16:51 GMT
ENV PG_VERSION=9.4.15
# Mon, 04 Dec 2017 16:16:51 GMT
ENV PG_SHA256=12bfb3c7e8e45515ef921ad365e122682a5c4935dcc0032644433af2de31acc4
# Mon, 04 Dec 2017 16:19:17 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:19:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:19:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:19:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:19:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:19:23 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:19:23 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:19:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:19:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:19:24 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:19:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904f0449cfc1a8855b4b35387faf3a181e8cfe4c8c2bb985abc4169ce9ced2e7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1af663c14438cb6f70c996b08c05e850621c235d0cb810888802bf5650edb7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9b52459d7edd44e0f9979262192e51b5a02c7465362f96e9cb9fd28c05db10`  
		Last Modified: Mon, 04 Dec 2017 16:24:58 GMT  
		Size: 12.3 MB (12286225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e04664b6ebf09e689cb6b23f8f04f7b9ac3ea8b1876de61a47b336839a8b3f`  
		Last Modified: Mon, 04 Dec 2017 16:24:52 GMT  
		Size: 6.7 KB (6660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c37058098e37ccb888266960e18333654f5741a26dba3e70238fed23e6fbc5`  
		Last Modified: Mon, 04 Dec 2017 16:24:52 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9832649552d24aaa32361cde063edee075ce3ef676352cb611b090d5ef719a90`  
		Last Modified: Mon, 04 Dec 2017 16:24:53 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dd52c340f99fdec7589d5682f3486912110998183fc4ad6d291c8692c29969`  
		Last Modified: Mon, 04 Dec 2017 16:24:52 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae45a58e65f83d94fbfcbabf8685c34325d0a0d6e7e692b6db5951116ad1f551`  
		Last Modified: Mon, 04 Dec 2017 16:24:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:3838fbbf1d9d384802f5089b968bbf22090532f7d43c89b59156651fe316f9a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:923c388a89d2ae22f69c5b28681b346ab54099a6e6ad0c8302d5b2fbbdb9462c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14265500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c533253a673f5e4a46cc97920affd07c4a013da40b9b5bbd497cb8f8861b1e10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:10:18 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:10:19 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:10:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:16:51 GMT
ENV PG_MAJOR=9.4
# Mon, 04 Dec 2017 16:16:51 GMT
ENV PG_VERSION=9.4.15
# Mon, 04 Dec 2017 16:16:51 GMT
ENV PG_SHA256=12bfb3c7e8e45515ef921ad365e122682a5c4935dcc0032644433af2de31acc4
# Mon, 04 Dec 2017 16:19:17 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:19:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:19:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:19:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:19:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:19:23 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:19:23 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:19:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:19:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:19:24 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:19:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904f0449cfc1a8855b4b35387faf3a181e8cfe4c8c2bb985abc4169ce9ced2e7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1af663c14438cb6f70c996b08c05e850621c235d0cb810888802bf5650edb7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9b52459d7edd44e0f9979262192e51b5a02c7465362f96e9cb9fd28c05db10`  
		Last Modified: Mon, 04 Dec 2017 16:24:58 GMT  
		Size: 12.3 MB (12286225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e04664b6ebf09e689cb6b23f8f04f7b9ac3ea8b1876de61a47b336839a8b3f`  
		Last Modified: Mon, 04 Dec 2017 16:24:52 GMT  
		Size: 6.7 KB (6660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c37058098e37ccb888266960e18333654f5741a26dba3e70238fed23e6fbc5`  
		Last Modified: Mon, 04 Dec 2017 16:24:52 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9832649552d24aaa32361cde063edee075ce3ef676352cb611b090d5ef719a90`  
		Last Modified: Mon, 04 Dec 2017 16:24:53 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dd52c340f99fdec7589d5682f3486912110998183fc4ad6d291c8692c29969`  
		Last Modified: Mon, 04 Dec 2017 16:24:52 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae45a58e65f83d94fbfcbabf8685c34325d0a0d6e7e692b6db5951116ad1f551`  
		Last Modified: Mon, 04 Dec 2017 16:24:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:a6b552a72be465de78536bdaae0237e645f9195e4f57eb0d77d74c04f4f7df1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:9.5` - linux; amd64

```console
$ docker pull postgres@sha256:21890546aa1caa3e265fc99e2586b1e9e9c24c41ddecb06f2fa4ee481d357423
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103585270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea87be7b432410145a010707f53debb826ffa09fb08906e72e451a81885e8ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:05:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:05:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:05:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:05:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:06:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:06:14 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:06:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:06:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:07:37 GMT
ENV PG_MAJOR=9.5
# Tue, 12 Dec 2017 06:07:37 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 12 Dec 2017 06:08:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:08:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:08:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:08:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 12 Dec 2017 06:08:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:08:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:08:30 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:08:31 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:08:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:08:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:08:32 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:08:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d44cf86769b1ace14785cbf0437fdf62eb233ac876b2aee10a1990774b2f6c`  
		Last Modified: Tue, 12 Dec 2017 06:15:20 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a15c538319f3f262243801ed927879f0a177d9e64cc9d0f972fa6476b0f2b`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 985.2 KB (985223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76eec81f9ce8772ca4bbff467e13862e31d5cbf1c736544d802e989a97bf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:21 GMT  
		Size: 7.1 MB (7113051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a1ed29c8a8f6328532d32b0beaee52f0b42bf37a6a2a7a3fa166a0b650dde3`  
		Last Modified: Tue, 12 Dec 2017 06:15:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8862935f78c771d276cb8c27de571b4c5cace4904377ab7abf47a6cb687a1271`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2b4ab2d8735f5c241a103665aec1ebd7e52ff862ddd63ddd4a855e0599344`  
		Last Modified: Tue, 12 Dec 2017 06:16:29 GMT  
		Size: 42.9 MB (42871541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c59731cd856c747c9bdf867d6ce86b5ecfa7094551098f9a7e59915241b192b`  
		Last Modified: Tue, 12 Dec 2017 06:16:20 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12acb5363ee2d1e227b5f020e1b118d160ed2647329846b576a3b1a8b2711c4c`  
		Last Modified: Tue, 12 Dec 2017 06:16:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4c26e20aa196b73eec94a0130a1a08ed7b42ac13624f13b3b137c7d4eea0cd`  
		Last Modified: Tue, 12 Dec 2017 06:16:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8397eb589621c5157724d1958a8fcfc32cc98277936ccf994e04257e3e89f6e3`  
		Last Modified: Tue, 12 Dec 2017 06:16:20 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3041f255f7a4d95e2a905c7d1020c3c0cb4b0d3b654fbdae04cc2a09eb04414`  
		Last Modified: Tue, 12 Dec 2017 06:16:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v5

```console
$ docker pull postgres@sha256:e5b287e8c39006cee251211385166f9143b754a21e2fa710ff84b0d4c817635c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96078908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78406645fc96642728259fb1608480e747fb203b5468cda4645db8c25cbc4a26`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:39:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:39:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:39:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:40:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:41:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:41:12 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:41:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 06:41:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 07:00:57 GMT
ENV PG_MAJOR=9.5
# Tue, 14 Nov 2017 08:18:15 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 14 Nov 2017 08:36:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 08:36:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 08:36:15 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 08:36:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 14 Nov 2017 08:36:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 08:36:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 08:36:16 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 08:36:17 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 08:36:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 08:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 08:36:18 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 08:36:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4499355f1f971b072f5df97cae2d6c7f1d8322f25b4dac2045c821d21422f60`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a01cff85622e54745784c0095d76615df0b38104efb50588c3b16c82a0875`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 974.6 KB (974611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ddc153c4035b61f0b934caa80c2c3a28ad633808b73de2fe5d26fa939f138c`  
		Last Modified: Fri, 03 Nov 2017 07:53:41 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89dd6d7a3a69fb863cd3a6ca51206622ac391e9b42e24058e60d8a0711f8a1`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e4feab6ba0b72a409ac8a911ca1567bb6c3045a3d5df5340d079fbdb71d4a`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8748493af239efb1014217e1db02c12e9568b7e68fc2a1767736225bfda5ac4`  
		Last Modified: Tue, 14 Nov 2017 09:12:27 GMT  
		Size: 37.1 MB (37095724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d4aabe86f95f705c9e968f9741250766e4cc1f4dc9cd6900b21794fc9ebfd6`  
		Last Modified: Tue, 14 Nov 2017 09:12:13 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f1573ea56e8c438bc8aa3ab1945caf81e36cabb75316a459c34bd711416d51`  
		Last Modified: Tue, 14 Nov 2017 09:12:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b275c6af12ebd7bd820164b14411cb6e9a4bca82647439a51dc16dba72e01cb`  
		Last Modified: Tue, 14 Nov 2017 09:12:13 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b7f22b62b9b573cda860214709391b276fc670f2337ae6af5bde3b52ff9fcf`  
		Last Modified: Tue, 14 Nov 2017 09:12:14 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b86ed581affc00037c613bb363fb5d896cf72db31940cb0fa05d742cc36c926`  
		Last Modified: Tue, 14 Nov 2017 09:12:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v7

```console
$ docker pull postgres@sha256:27006224aa1f7485b9cdc69bbe5fcb5b309f2a1e60aa1f5f3240c0b6842b772b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92697617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6085ba08018ceaaf1f740bf32132ceb90b5f76b091fbcaf10a3d345d39f874f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:56:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:56:26 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:56:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:57:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:57:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:57:44 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:57:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:57:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 04:15:27 GMT
ENV PG_MAJOR=9.5
# Tue, 14 Nov 2017 05:13:30 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 14 Nov 2017 05:30:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 05:30:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 05:30:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 05:30:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 14 Nov 2017 05:30:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 05:30:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 05:30:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 05:30:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 05:30:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 05:30:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 05:30:09 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 05:30:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02098f289f28f48d15c8057d71bca11099f92c8881c3bd933872c26f6985b337`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21569521b18c3d8ec1866e36c769afee2e7df592328f47270c5ab21f52d32bb5`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 959.5 KB (959463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7452cab800e0181df2560290a179aee3c826b3f94a06361f8d839c6998ee202`  
		Last Modified: Fri, 03 Nov 2017 05:05:00 GMT  
		Size: 7.1 MB (7112849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3843f9383decade650ca4091414ae5281360a616b2fbdeb4b721dd888d3490`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d61923d5463975ebb16f0ec093820c560c5fe617f3ef995a6edd259ca802dd0`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95680195b250a32184e93f1bb6b70b0f9748115a3747c9d1beba8e8bfc4a301d`  
		Last Modified: Tue, 14 Nov 2017 06:04:02 GMT  
		Size: 35.9 MB (35923173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fa75254b7e4c4caf23afb1aaeb2a69c71a15e7df65dc60a065fe6e7e02e28d`  
		Last Modified: Tue, 14 Nov 2017 06:03:50 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9b1d0eed3dd880a9d2e5bff221235d17bb3de713780afb84f984cf88bba368`  
		Last Modified: Tue, 14 Nov 2017 06:03:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ebd21d6509c4ebf0d5c1e45bcfb2b6c05a053bc882606ddd92d9e56740b95af`  
		Last Modified: Tue, 14 Nov 2017 06:03:50 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63ca926b531bd5ab86fdc4d04a4ff4b4b3e2ec9917b0d6751e3ba5e02ab5ed4`  
		Last Modified: Tue, 14 Nov 2017 06:03:50 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6893d24b940445cfca9ade703025d5b8ccea0cdf31185694c5d88ebebaa2614d`  
		Last Modified: Tue, 14 Nov 2017 06:03:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:2cc503c62787a03577346cc534ebf63644e13cc09e6a72a280b6243018bc2240
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94642506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78eb0b599612d40f9a29f34eb893870b3639a08f774cd20f48e42c8192723901`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:53:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:53:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:53:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:54:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:54:57 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:54:58 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:54:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:55:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 15:26:34 GMT
ENV PG_MAJOR=9.5
# Tue, 14 Nov 2017 16:26:32 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 14 Nov 2017 16:55:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 16:55:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 16:55:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 16:55:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 14 Nov 2017 16:55:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 16:55:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 16:55:30 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 16:55:31 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 16:55:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 16:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 16:55:34 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 16:55:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761707f443640f6f562f1f44235a97283159a4014a61abbd297ada36532115e9`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955fe9ac4b96bae2288a5f05ef3c02f0bc48df90b855e25a3dfb4e73d3ba575`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 952.0 KB (952002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1cdafa666dd2d36734ef54a12e2aad5442ebd915ecef0acc4ae693673c08c8`  
		Last Modified: Fri, 03 Nov 2017 16:52:24 GMT  
		Size: 7.1 MB (7112949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1d1dc96054579ac0ff64dd908159fea56499d8ed0201c7a1098ee2289e14f4`  
		Last Modified: Fri, 03 Nov 2017 16:52:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f9081b317e93fb35134fb782506e64e81b0b51e0b5eb85074725c9e8489c0`  
		Last Modified: Fri, 03 Nov 2017 16:52:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4922ea2c54db326a7d03acf571e09195022e0a6b33fde5c9514a0a09ea6ca7a9`  
		Last Modified: Tue, 14 Nov 2017 17:54:42 GMT  
		Size: 36.6 MB (36632465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e01fcae0859a2d7fe0d09e62429fa9b0c3b7992f503ddd60f7896abc9e8c12`  
		Last Modified: Tue, 14 Nov 2017 17:54:27 GMT  
		Size: 6.8 KB (6838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc95f0ff5f1c1ffb81580a342acbb3a9f100d8a1ccfcbe7a67ed96ca1d5cf39b`  
		Last Modified: Tue, 14 Nov 2017 17:54:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aea601632cb84ea751cc2b7602c76b8427ff81a8d7365743ce0d27bc0b02226`  
		Last Modified: Tue, 14 Nov 2017 17:54:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220aa527dc7bef84fdb1a63458fc41ba1aa09b6d41976faef07f969c59660258`  
		Last Modified: Tue, 14 Nov 2017 17:54:27 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992cfa96a535deecd07b192dc8d5214bb542fbdd26f0448711c1f959927dc88a`  
		Last Modified: Tue, 14 Nov 2017 17:54:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; 386

```console
$ docker pull postgres@sha256:e74d5b1996bb63acfacac3b3f9ecf2ed3e5936c4e54fe1650f905a737b6929f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105555346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f24c94f9d9fff469cc1566e028287a10816f229de458cfa4f7f54443be540f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:04:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:04:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:05:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:06:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:06:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:06:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:06:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:08:12 GMT
ENV PG_MAJOR=9.5
# Tue, 14 Nov 2017 15:15:19 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 14 Nov 2017 15:16:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:16:47 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:16:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:16:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 14 Nov 2017 15:16:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:16:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:16:49 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 15:16:49 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 15:16:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 15:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 15:16:51 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 15:16:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366ef82afdd57e133e3f13fffeddf60d7091a4156c52b001f8d62f133242e4a3`  
		Last Modified: Fri, 03 Nov 2017 14:20:45 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739e92549a18ba2ad04079f386bb792685b985bdcab983de37841d1e39afdb3`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 964.0 KB (964043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9224c66676892c47bb1fd087470d1af92bf08abe1b72e414620e13e97707dac8`  
		Last Modified: Fri, 03 Nov 2017 14:20:46 GMT  
		Size: 7.1 MB (7112906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a008b74d4f4e222caacf03c380974727ba01a4b795874f08634fe5a6e7cdcb`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086efe6530699424c36bef2d1e43e20a40f75683abac22bb721deeef2dd8e209`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a517d95cae698dad70a3efbeae9baf3acd017e445b98908d4e06d1df210788d8`  
		Last Modified: Tue, 14 Nov 2017 15:24:12 GMT  
		Size: 44.7 MB (44688786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874ae65a5a90140014490d06a79577f52afc95d3521d3f48e10815ae5eec8141`  
		Last Modified: Tue, 14 Nov 2017 15:24:00 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542b0a5bfaea93451faf977097067f077d02912fa4b732ab0704d7e463c12cef`  
		Last Modified: Tue, 14 Nov 2017 15:24:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f981c33d83db96fbbaa89987a634f3573bbb76952331abeca5f365b14eecb365`  
		Last Modified: Tue, 14 Nov 2017 15:24:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469590534c3933c169db1036b52d3a9b17efc98f1ae0415bce4a2fae99651981`  
		Last Modified: Tue, 14 Nov 2017 15:24:00 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0403840c37cffa453ee291bfa43a3c93ceb132c548339fd1f22ecbdd832f51`  
		Last Modified: Tue, 14 Nov 2017 15:24:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; ppc64le

```console
$ docker pull postgres@sha256:cffc23d7fbef6e361545565b9547f8d050355fc9080bf11bf9e3d5d6364f5056
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101807054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461e639e2ddd197126680a09d55c0a34f9b53ad6feeac115671a179ca96c1ae0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:52:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:52:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:52:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:54:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:54:27 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:54:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 23:00:18 GMT
ENV PG_MAJOR=9.5
# Wed, 15 Nov 2017 21:51:57 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Wed, 15 Nov 2017 21:55:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 21:55:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 21:55:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 21:55:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Wed, 15 Nov 2017 21:55:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 21:55:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 21:55:53 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 15 Nov 2017 21:55:57 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 15 Nov 2017 21:56:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 Nov 2017 21:56:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Nov 2017 21:56:12 GMT
EXPOSE 5432/tcp
# Wed, 15 Nov 2017 21:56:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2274de1c60ca9068566e9b2aa25e1577842168ab4bea606dea05bb983d920d`  
		Last Modified: Thu, 02 Nov 2017 23:19:17 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f10fa7a59c50bfcb1b548f4a5c6fb4283f614e85b1b79181c26659593303e5`  
		Last Modified: Thu, 02 Nov 2017 23:19:16 GMT  
		Size: 954.2 KB (954205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704bbcb919d4acc8240dd530ad4e1a1b81f131beb9cd7fc6fdf74a5a6c1aedc5`  
		Last Modified: Thu, 02 Nov 2017 23:19:19 GMT  
		Size: 7.1 MB (7113113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654559d07452800eee7cb9a1015d928ee9dfa05699007b198f741a5460eb258`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4517113322391565e20deb637d428fcea031004005736b4b386299329501e9b`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd966fa3bec5716ed22bd993908d71542bb49380de116f218d861f2c22e7271`  
		Last Modified: Wed, 15 Nov 2017 22:08:11 GMT  
		Size: 41.9 MB (41914161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd2eee78774b25814f398e1a30e50cadcca1f2cd27dc5a7231202adb56362c9`  
		Last Modified: Wed, 15 Nov 2017 22:07:58 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7429e554b30e795efb9b0f6184247c9a20b78194c8e409d6caf82d49b732092f`  
		Last Modified: Wed, 15 Nov 2017 22:07:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aba0be7ce049d86cc245fd9d535cc07932206d2f44586bf9e8bf6f1a0b491d0`  
		Last Modified: Wed, 15 Nov 2017 22:07:58 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8fab2addde50a4cda3820be57eda684084aedd191355744c626b671e3d332bd`  
		Last Modified: Wed, 15 Nov 2017 22:07:58 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f451f6f7e85a0137dc4c5f89c2b0f90d41f3f0c53dbacad9d958b855f045e0ca`  
		Last Modified: Wed, 15 Nov 2017 22:07:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; s390x

```console
$ docker pull postgres@sha256:e886e967260d6afad4370ff0c1946b9bc96466dd80f679d0ae06cc819de78f97
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100024807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2afed16762384492330b9762a43c5b7e08238134a9631ad54e7e6c999a3f27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:35:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:35:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:35:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:36:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:36:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:36:16 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:36:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:36:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 09:45:46 GMT
ENV PG_MAJOR=9.5
# Tue, 14 Nov 2017 10:48:33 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 14 Nov 2017 10:56:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 10:56:52 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 10:56:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 10:56:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 14 Nov 2017 10:56:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 10:56:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 10:56:53 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 10:56:54 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 10:56:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 10:56:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 10:56:54 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 10:56:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aaee9d43798a6e20352bc42182c2bd8e68f5a38ac8e7b1bfc2fdfb5456de5`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b307261018837c5c30edaf6e361dbd0300f4e4faaeddda83a0bcf05fe2bd24`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 970.2 KB (970243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aa0513398d454ecd65972a3cc8860400f071026e8579bbc79790be908710ed`  
		Last Modified: Fri, 03 Nov 2017 10:12:31 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6751dc08e24fee6350e4371b5dad8a0fc196723983017284914fe308cdaf88f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b3cac6db2ee49c30a497ab6f625b9cb6fe3cab8b5330faa4fc42034e8bad0f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225e50a7d343e43e5acb81660df90958fb7f66efa4b1ef64aca161f01225a05e`  
		Last Modified: Tue, 14 Nov 2017 11:14:10 GMT  
		Size: 39.1 MB (39118756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490182c84eb3edf70bc33fde7ced179a99ac8450c13bd0fec7d8300f11cb9649`  
		Last Modified: Tue, 14 Nov 2017 11:14:02 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23eb50cac05190f5d742defff11059006d52be3fac15f269b15d0fc0700f2a00`  
		Last Modified: Tue, 14 Nov 2017 11:14:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2783d956d7dc40dac3a4c7c5c9d6ef38e3f9c361122dc8a3cc5395ea199c36c5`  
		Last Modified: Tue, 14 Nov 2017 11:14:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf29579388d3345615dbbb4c29af603e0b248361f538f04d599dc8cd784feae`  
		Last Modified: Tue, 14 Nov 2017 11:14:02 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aef5276c00554b0043518ef319243e0f02cfa9862b446e9fad41ea4064daede`  
		Last Modified: Tue, 14 Nov 2017 11:14:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.10`

```console
$ docker pull postgres@sha256:a6b552a72be465de78536bdaae0237e645f9195e4f57eb0d77d74c04f4f7df1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:9.5.10` - linux; amd64

```console
$ docker pull postgres@sha256:21890546aa1caa3e265fc99e2586b1e9e9c24c41ddecb06f2fa4ee481d357423
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103585270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea87be7b432410145a010707f53debb826ffa09fb08906e72e451a81885e8ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:05:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:05:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:05:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:05:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:06:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:06:14 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:06:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:06:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:07:37 GMT
ENV PG_MAJOR=9.5
# Tue, 12 Dec 2017 06:07:37 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 12 Dec 2017 06:08:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:08:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:08:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:08:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 12 Dec 2017 06:08:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:08:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:08:30 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:08:31 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:08:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:08:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:08:32 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:08:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d44cf86769b1ace14785cbf0437fdf62eb233ac876b2aee10a1990774b2f6c`  
		Last Modified: Tue, 12 Dec 2017 06:15:20 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a15c538319f3f262243801ed927879f0a177d9e64cc9d0f972fa6476b0f2b`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 985.2 KB (985223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76eec81f9ce8772ca4bbff467e13862e31d5cbf1c736544d802e989a97bf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:21 GMT  
		Size: 7.1 MB (7113051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a1ed29c8a8f6328532d32b0beaee52f0b42bf37a6a2a7a3fa166a0b650dde3`  
		Last Modified: Tue, 12 Dec 2017 06:15:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8862935f78c771d276cb8c27de571b4c5cace4904377ab7abf47a6cb687a1271`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2b4ab2d8735f5c241a103665aec1ebd7e52ff862ddd63ddd4a855e0599344`  
		Last Modified: Tue, 12 Dec 2017 06:16:29 GMT  
		Size: 42.9 MB (42871541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c59731cd856c747c9bdf867d6ce86b5ecfa7094551098f9a7e59915241b192b`  
		Last Modified: Tue, 12 Dec 2017 06:16:20 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12acb5363ee2d1e227b5f020e1b118d160ed2647329846b576a3b1a8b2711c4c`  
		Last Modified: Tue, 12 Dec 2017 06:16:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4c26e20aa196b73eec94a0130a1a08ed7b42ac13624f13b3b137c7d4eea0cd`  
		Last Modified: Tue, 12 Dec 2017 06:16:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8397eb589621c5157724d1958a8fcfc32cc98277936ccf994e04257e3e89f6e3`  
		Last Modified: Tue, 12 Dec 2017 06:16:20 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3041f255f7a4d95e2a905c7d1020c3c0cb4b0d3b654fbdae04cc2a09eb04414`  
		Last Modified: Tue, 12 Dec 2017 06:16:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.10` - linux; arm variant v5

```console
$ docker pull postgres@sha256:e5b287e8c39006cee251211385166f9143b754a21e2fa710ff84b0d4c817635c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96078908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78406645fc96642728259fb1608480e747fb203b5468cda4645db8c25cbc4a26`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:39:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:39:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:39:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:40:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:41:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:41:12 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:41:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 06:41:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 07:00:57 GMT
ENV PG_MAJOR=9.5
# Tue, 14 Nov 2017 08:18:15 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 14 Nov 2017 08:36:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 08:36:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 08:36:15 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 08:36:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 14 Nov 2017 08:36:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 08:36:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 08:36:16 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 08:36:17 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 08:36:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 08:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 08:36:18 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 08:36:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4499355f1f971b072f5df97cae2d6c7f1d8322f25b4dac2045c821d21422f60`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a01cff85622e54745784c0095d76615df0b38104efb50588c3b16c82a0875`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 974.6 KB (974611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ddc153c4035b61f0b934caa80c2c3a28ad633808b73de2fe5d26fa939f138c`  
		Last Modified: Fri, 03 Nov 2017 07:53:41 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89dd6d7a3a69fb863cd3a6ca51206622ac391e9b42e24058e60d8a0711f8a1`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e4feab6ba0b72a409ac8a911ca1567bb6c3045a3d5df5340d079fbdb71d4a`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8748493af239efb1014217e1db02c12e9568b7e68fc2a1767736225bfda5ac4`  
		Last Modified: Tue, 14 Nov 2017 09:12:27 GMT  
		Size: 37.1 MB (37095724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d4aabe86f95f705c9e968f9741250766e4cc1f4dc9cd6900b21794fc9ebfd6`  
		Last Modified: Tue, 14 Nov 2017 09:12:13 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f1573ea56e8c438bc8aa3ab1945caf81e36cabb75316a459c34bd711416d51`  
		Last Modified: Tue, 14 Nov 2017 09:12:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b275c6af12ebd7bd820164b14411cb6e9a4bca82647439a51dc16dba72e01cb`  
		Last Modified: Tue, 14 Nov 2017 09:12:13 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b7f22b62b9b573cda860214709391b276fc670f2337ae6af5bde3b52ff9fcf`  
		Last Modified: Tue, 14 Nov 2017 09:12:14 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b86ed581affc00037c613bb363fb5d896cf72db31940cb0fa05d742cc36c926`  
		Last Modified: Tue, 14 Nov 2017 09:12:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.10` - linux; arm variant v7

```console
$ docker pull postgres@sha256:27006224aa1f7485b9cdc69bbe5fcb5b309f2a1e60aa1f5f3240c0b6842b772b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92697617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6085ba08018ceaaf1f740bf32132ceb90b5f76b091fbcaf10a3d345d39f874f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:56:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:56:26 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:56:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:57:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:57:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:57:44 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:57:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:57:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 04:15:27 GMT
ENV PG_MAJOR=9.5
# Tue, 14 Nov 2017 05:13:30 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 14 Nov 2017 05:30:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 05:30:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 05:30:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 05:30:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 14 Nov 2017 05:30:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 05:30:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 05:30:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 05:30:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 05:30:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 05:30:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 05:30:09 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 05:30:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02098f289f28f48d15c8057d71bca11099f92c8881c3bd933872c26f6985b337`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21569521b18c3d8ec1866e36c769afee2e7df592328f47270c5ab21f52d32bb5`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 959.5 KB (959463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7452cab800e0181df2560290a179aee3c826b3f94a06361f8d839c6998ee202`  
		Last Modified: Fri, 03 Nov 2017 05:05:00 GMT  
		Size: 7.1 MB (7112849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3843f9383decade650ca4091414ae5281360a616b2fbdeb4b721dd888d3490`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d61923d5463975ebb16f0ec093820c560c5fe617f3ef995a6edd259ca802dd0`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95680195b250a32184e93f1bb6b70b0f9748115a3747c9d1beba8e8bfc4a301d`  
		Last Modified: Tue, 14 Nov 2017 06:04:02 GMT  
		Size: 35.9 MB (35923173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fa75254b7e4c4caf23afb1aaeb2a69c71a15e7df65dc60a065fe6e7e02e28d`  
		Last Modified: Tue, 14 Nov 2017 06:03:50 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9b1d0eed3dd880a9d2e5bff221235d17bb3de713780afb84f984cf88bba368`  
		Last Modified: Tue, 14 Nov 2017 06:03:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ebd21d6509c4ebf0d5c1e45bcfb2b6c05a053bc882606ddd92d9e56740b95af`  
		Last Modified: Tue, 14 Nov 2017 06:03:50 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63ca926b531bd5ab86fdc4d04a4ff4b4b3e2ec9917b0d6751e3ba5e02ab5ed4`  
		Last Modified: Tue, 14 Nov 2017 06:03:50 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6893d24b940445cfca9ade703025d5b8ccea0cdf31185694c5d88ebebaa2614d`  
		Last Modified: Tue, 14 Nov 2017 06:03:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.10` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:2cc503c62787a03577346cc534ebf63644e13cc09e6a72a280b6243018bc2240
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94642506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78eb0b599612d40f9a29f34eb893870b3639a08f774cd20f48e42c8192723901`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:53:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:53:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:53:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:54:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:54:57 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:54:58 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:54:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:55:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 15:26:34 GMT
ENV PG_MAJOR=9.5
# Tue, 14 Nov 2017 16:26:32 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 14 Nov 2017 16:55:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 16:55:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 16:55:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 16:55:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 14 Nov 2017 16:55:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 16:55:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 16:55:30 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 16:55:31 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 16:55:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 16:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 16:55:34 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 16:55:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761707f443640f6f562f1f44235a97283159a4014a61abbd297ada36532115e9`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955fe9ac4b96bae2288a5f05ef3c02f0bc48df90b855e25a3dfb4e73d3ba575`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 952.0 KB (952002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1cdafa666dd2d36734ef54a12e2aad5442ebd915ecef0acc4ae693673c08c8`  
		Last Modified: Fri, 03 Nov 2017 16:52:24 GMT  
		Size: 7.1 MB (7112949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1d1dc96054579ac0ff64dd908159fea56499d8ed0201c7a1098ee2289e14f4`  
		Last Modified: Fri, 03 Nov 2017 16:52:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f9081b317e93fb35134fb782506e64e81b0b51e0b5eb85074725c9e8489c0`  
		Last Modified: Fri, 03 Nov 2017 16:52:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4922ea2c54db326a7d03acf571e09195022e0a6b33fde5c9514a0a09ea6ca7a9`  
		Last Modified: Tue, 14 Nov 2017 17:54:42 GMT  
		Size: 36.6 MB (36632465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e01fcae0859a2d7fe0d09e62429fa9b0c3b7992f503ddd60f7896abc9e8c12`  
		Last Modified: Tue, 14 Nov 2017 17:54:27 GMT  
		Size: 6.8 KB (6838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc95f0ff5f1c1ffb81580a342acbb3a9f100d8a1ccfcbe7a67ed96ca1d5cf39b`  
		Last Modified: Tue, 14 Nov 2017 17:54:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aea601632cb84ea751cc2b7602c76b8427ff81a8d7365743ce0d27bc0b02226`  
		Last Modified: Tue, 14 Nov 2017 17:54:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220aa527dc7bef84fdb1a63458fc41ba1aa09b6d41976faef07f969c59660258`  
		Last Modified: Tue, 14 Nov 2017 17:54:27 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992cfa96a535deecd07b192dc8d5214bb542fbdd26f0448711c1f959927dc88a`  
		Last Modified: Tue, 14 Nov 2017 17:54:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.10` - linux; 386

```console
$ docker pull postgres@sha256:e74d5b1996bb63acfacac3b3f9ecf2ed3e5936c4e54fe1650f905a737b6929f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105555346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f24c94f9d9fff469cc1566e028287a10816f229de458cfa4f7f54443be540f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:04:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:04:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:05:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:06:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:06:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:06:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:06:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:08:12 GMT
ENV PG_MAJOR=9.5
# Tue, 14 Nov 2017 15:15:19 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 14 Nov 2017 15:16:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:16:47 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:16:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:16:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 14 Nov 2017 15:16:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:16:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:16:49 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 15:16:49 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 15:16:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 15:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 15:16:51 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 15:16:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366ef82afdd57e133e3f13fffeddf60d7091a4156c52b001f8d62f133242e4a3`  
		Last Modified: Fri, 03 Nov 2017 14:20:45 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739e92549a18ba2ad04079f386bb792685b985bdcab983de37841d1e39afdb3`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 964.0 KB (964043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9224c66676892c47bb1fd087470d1af92bf08abe1b72e414620e13e97707dac8`  
		Last Modified: Fri, 03 Nov 2017 14:20:46 GMT  
		Size: 7.1 MB (7112906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a008b74d4f4e222caacf03c380974727ba01a4b795874f08634fe5a6e7cdcb`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086efe6530699424c36bef2d1e43e20a40f75683abac22bb721deeef2dd8e209`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a517d95cae698dad70a3efbeae9baf3acd017e445b98908d4e06d1df210788d8`  
		Last Modified: Tue, 14 Nov 2017 15:24:12 GMT  
		Size: 44.7 MB (44688786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874ae65a5a90140014490d06a79577f52afc95d3521d3f48e10815ae5eec8141`  
		Last Modified: Tue, 14 Nov 2017 15:24:00 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542b0a5bfaea93451faf977097067f077d02912fa4b732ab0704d7e463c12cef`  
		Last Modified: Tue, 14 Nov 2017 15:24:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f981c33d83db96fbbaa89987a634f3573bbb76952331abeca5f365b14eecb365`  
		Last Modified: Tue, 14 Nov 2017 15:24:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469590534c3933c169db1036b52d3a9b17efc98f1ae0415bce4a2fae99651981`  
		Last Modified: Tue, 14 Nov 2017 15:24:00 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0403840c37cffa453ee291bfa43a3c93ceb132c548339fd1f22ecbdd832f51`  
		Last Modified: Tue, 14 Nov 2017 15:24:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.10` - linux; ppc64le

```console
$ docker pull postgres@sha256:cffc23d7fbef6e361545565b9547f8d050355fc9080bf11bf9e3d5d6364f5056
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101807054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461e639e2ddd197126680a09d55c0a34f9b53ad6feeac115671a179ca96c1ae0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:52:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:52:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:52:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:54:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:54:27 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:54:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 23:00:18 GMT
ENV PG_MAJOR=9.5
# Wed, 15 Nov 2017 21:51:57 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Wed, 15 Nov 2017 21:55:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 21:55:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 21:55:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 21:55:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Wed, 15 Nov 2017 21:55:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 21:55:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 21:55:53 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 15 Nov 2017 21:55:57 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 15 Nov 2017 21:56:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 Nov 2017 21:56:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Nov 2017 21:56:12 GMT
EXPOSE 5432/tcp
# Wed, 15 Nov 2017 21:56:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2274de1c60ca9068566e9b2aa25e1577842168ab4bea606dea05bb983d920d`  
		Last Modified: Thu, 02 Nov 2017 23:19:17 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f10fa7a59c50bfcb1b548f4a5c6fb4283f614e85b1b79181c26659593303e5`  
		Last Modified: Thu, 02 Nov 2017 23:19:16 GMT  
		Size: 954.2 KB (954205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704bbcb919d4acc8240dd530ad4e1a1b81f131beb9cd7fc6fdf74a5a6c1aedc5`  
		Last Modified: Thu, 02 Nov 2017 23:19:19 GMT  
		Size: 7.1 MB (7113113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654559d07452800eee7cb9a1015d928ee9dfa05699007b198f741a5460eb258`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4517113322391565e20deb637d428fcea031004005736b4b386299329501e9b`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd966fa3bec5716ed22bd993908d71542bb49380de116f218d861f2c22e7271`  
		Last Modified: Wed, 15 Nov 2017 22:08:11 GMT  
		Size: 41.9 MB (41914161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd2eee78774b25814f398e1a30e50cadcca1f2cd27dc5a7231202adb56362c9`  
		Last Modified: Wed, 15 Nov 2017 22:07:58 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7429e554b30e795efb9b0f6184247c9a20b78194c8e409d6caf82d49b732092f`  
		Last Modified: Wed, 15 Nov 2017 22:07:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aba0be7ce049d86cc245fd9d535cc07932206d2f44586bf9e8bf6f1a0b491d0`  
		Last Modified: Wed, 15 Nov 2017 22:07:58 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8fab2addde50a4cda3820be57eda684084aedd191355744c626b671e3d332bd`  
		Last Modified: Wed, 15 Nov 2017 22:07:58 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f451f6f7e85a0137dc4c5f89c2b0f90d41f3f0c53dbacad9d958b855f045e0ca`  
		Last Modified: Wed, 15 Nov 2017 22:07:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.10` - linux; s390x

```console
$ docker pull postgres@sha256:e886e967260d6afad4370ff0c1946b9bc96466dd80f679d0ae06cc819de78f97
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100024807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2afed16762384492330b9762a43c5b7e08238134a9631ad54e7e6c999a3f27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:35:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:35:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:35:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:36:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:36:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:36:16 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:36:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:36:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 09:45:46 GMT
ENV PG_MAJOR=9.5
# Tue, 14 Nov 2017 10:48:33 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Tue, 14 Nov 2017 10:56:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 10:56:52 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 10:56:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 10:56:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Tue, 14 Nov 2017 10:56:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 10:56:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 10:56:53 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 10:56:54 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 10:56:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 10:56:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 10:56:54 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 10:56:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aaee9d43798a6e20352bc42182c2bd8e68f5a38ac8e7b1bfc2fdfb5456de5`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b307261018837c5c30edaf6e361dbd0300f4e4faaeddda83a0bcf05fe2bd24`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 970.2 KB (970243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aa0513398d454ecd65972a3cc8860400f071026e8579bbc79790be908710ed`  
		Last Modified: Fri, 03 Nov 2017 10:12:31 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6751dc08e24fee6350e4371b5dad8a0fc196723983017284914fe308cdaf88f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b3cac6db2ee49c30a497ab6f625b9cb6fe3cab8b5330faa4fc42034e8bad0f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225e50a7d343e43e5acb81660df90958fb7f66efa4b1ef64aca161f01225a05e`  
		Last Modified: Tue, 14 Nov 2017 11:14:10 GMT  
		Size: 39.1 MB (39118756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490182c84eb3edf70bc33fde7ced179a99ac8450c13bd0fec7d8300f11cb9649`  
		Last Modified: Tue, 14 Nov 2017 11:14:02 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23eb50cac05190f5d742defff11059006d52be3fac15f269b15d0fc0700f2a00`  
		Last Modified: Tue, 14 Nov 2017 11:14:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2783d956d7dc40dac3a4c7c5c9d6ef38e3f9c361122dc8a3cc5395ea199c36c5`  
		Last Modified: Tue, 14 Nov 2017 11:14:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf29579388d3345615dbbb4c29af603e0b248361f538f04d599dc8cd784feae`  
		Last Modified: Tue, 14 Nov 2017 11:14:02 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aef5276c00554b0043518ef319243e0f02cfa9862b446e9fad41ea4064daede`  
		Last Modified: Tue, 14 Nov 2017 11:14:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.10-alpine`

```console
$ docker pull postgres@sha256:88bd8ac5b201770d99e090a8a83b9c60b8ebd5f536e47de54b47e07adae18b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:253254abd776dcd4004bed51104f93a2032242c206b6bdbe8b0421452416c61f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14404720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0394f10329afe44616ba7144456d54efe4dd0d287ee49747dffc12225625c442`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:10:18 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:10:19 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:10:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:13:36 GMT
ENV PG_MAJOR=9.5
# Mon, 04 Dec 2017 16:13:36 GMT
ENV PG_VERSION=9.5.10
# Mon, 04 Dec 2017 16:13:37 GMT
ENV PG_SHA256=945d7ade094dded6b95495d8f1561a12ac9608276858ed30adf3c3658275f281
# Mon, 04 Dec 2017 16:16:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:16:06 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:16:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:16:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:16:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:16:13 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:16:18 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:16:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:16:24 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:16:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904f0449cfc1a8855b4b35387faf3a181e8cfe4c8c2bb985abc4169ce9ced2e7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1af663c14438cb6f70c996b08c05e850621c235d0cb810888802bf5650edb7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c9821e620bef8fb7bbc389c7565a61574e56f5ba69911699d72aff8aa9eaa9`  
		Last Modified: Mon, 04 Dec 2017 16:24:27 GMT  
		Size: 12.4 MB (12425305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4a45e7a9b87eafa6194713550a32117dd797cf34d565e8045e496bf18baa55`  
		Last Modified: Mon, 04 Dec 2017 16:24:20 GMT  
		Size: 6.8 KB (6802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d296cff48011d4e713bcc332821b8c5dbffaf057d75fd9947545c6207670eab5`  
		Last Modified: Mon, 04 Dec 2017 16:24:20 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1db0e3847dd41ccf1cf0d126381173ff00db0a5512a837c0944042712798533`  
		Last Modified: Mon, 04 Dec 2017 16:24:19 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00334d4fb2d8446de72c102173b8ea7274acdaf34058870fd907b8798e1d93d3`  
		Last Modified: Mon, 04 Dec 2017 16:24:20 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbff4fffca7ed75711a998556dfc0b32573c3d42b739449eced751959d7936aa`  
		Last Modified: Mon, 04 Dec 2017 16:24:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:88bd8ac5b201770d99e090a8a83b9c60b8ebd5f536e47de54b47e07adae18b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:253254abd776dcd4004bed51104f93a2032242c206b6bdbe8b0421452416c61f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14404720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0394f10329afe44616ba7144456d54efe4dd0d287ee49747dffc12225625c442`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:10:18 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:10:19 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:10:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:13:36 GMT
ENV PG_MAJOR=9.5
# Mon, 04 Dec 2017 16:13:36 GMT
ENV PG_VERSION=9.5.10
# Mon, 04 Dec 2017 16:13:37 GMT
ENV PG_SHA256=945d7ade094dded6b95495d8f1561a12ac9608276858ed30adf3c3658275f281
# Mon, 04 Dec 2017 16:16:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:16:06 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:16:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:16:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:16:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:16:13 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:16:18 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:16:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:16:24 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:16:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904f0449cfc1a8855b4b35387faf3a181e8cfe4c8c2bb985abc4169ce9ced2e7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1af663c14438cb6f70c996b08c05e850621c235d0cb810888802bf5650edb7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c9821e620bef8fb7bbc389c7565a61574e56f5ba69911699d72aff8aa9eaa9`  
		Last Modified: Mon, 04 Dec 2017 16:24:27 GMT  
		Size: 12.4 MB (12425305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4a45e7a9b87eafa6194713550a32117dd797cf34d565e8045e496bf18baa55`  
		Last Modified: Mon, 04 Dec 2017 16:24:20 GMT  
		Size: 6.8 KB (6802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d296cff48011d4e713bcc332821b8c5dbffaf057d75fd9947545c6207670eab5`  
		Last Modified: Mon, 04 Dec 2017 16:24:20 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1db0e3847dd41ccf1cf0d126381173ff00db0a5512a837c0944042712798533`  
		Last Modified: Mon, 04 Dec 2017 16:24:19 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00334d4fb2d8446de72c102173b8ea7274acdaf34058870fd907b8798e1d93d3`  
		Last Modified: Mon, 04 Dec 2017 16:24:20 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbff4fffca7ed75711a998556dfc0b32573c3d42b739449eced751959d7936aa`  
		Last Modified: Mon, 04 Dec 2017 16:24:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:1413c5c712d28d8d9659325a40d25d6af064353127c2b05c93fcae080863dc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:9.6` - linux; amd64

```console
$ docker pull postgres@sha256:a31c8b2d1c0386cd91fac235f5945fd31f452a580dfd9236a173fec8d9c5e4dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104129997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5579c7505b1bb56fddfd01164e02d13cd8e81a4d9524ada4f9c94697997c25cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:05:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:05:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:05:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:05:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:06:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:06:14 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:06:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:06:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:06:19 GMT
ENV PG_MAJOR=9.6
# Tue, 12 Dec 2017 06:06:19 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 12 Dec 2017 06:07:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:07:13 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:07:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:07:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 12 Dec 2017 06:07:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:07:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:07:16 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:07:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:07:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:07:18 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:07:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d44cf86769b1ace14785cbf0437fdf62eb233ac876b2aee10a1990774b2f6c`  
		Last Modified: Tue, 12 Dec 2017 06:15:20 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a15c538319f3f262243801ed927879f0a177d9e64cc9d0f972fa6476b0f2b`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 985.2 KB (985223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76eec81f9ce8772ca4bbff467e13862e31d5cbf1c736544d802e989a97bf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:21 GMT  
		Size: 7.1 MB (7113051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a1ed29c8a8f6328532d32b0beaee52f0b42bf37a6a2a7a3fa166a0b650dde3`  
		Last Modified: Tue, 12 Dec 2017 06:15:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8862935f78c771d276cb8c27de571b4c5cace4904377ab7abf47a6cb687a1271`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6264275e324ac17a044d652ca93c7e45d79ea21e4583e7fe81e632869eb8ac57`  
		Last Modified: Tue, 12 Dec 2017 06:15:32 GMT  
		Size: 43.4 MB (43415993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa0ac8d49e57c147b284a997e2d834e81878c8da47e600dcfbef4d47e16f2a1`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195b6cc09dddb9e4b7ad1122b145fd05f7951a69fa820a794d127ef8666f6714`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1162cbf0e030a1b14f4833a5d9b3abd4a9011106ff93c455ed71b32b8641c6`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afef25248e130f8672cb3d509761657c6d8c2fafd4d61d27284f30b879d176f2`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9332c260ec530eefd8b356e88ff2039b3c3c75bdde64f50bceb76e1702bbbff`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v5

```console
$ docker pull postgres@sha256:fee0e45744905f252bf6ae89dc567c85a5e6f600317b6b9ed9639236a02da247
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96599252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69424fcd5532c2542337e44d925d9191e4028db9589fe3fe7306a405627daa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:39:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:39:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:39:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:40:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:41:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:41:12 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:41:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 06:41:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 06:41:21 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 07:58:33 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 08:17:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 08:17:57 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 08:17:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 08:17:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 08:17:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 08:17:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 08:17:59 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 08:17:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 08:18:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 08:18:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 08:18:00 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 08:18:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4499355f1f971b072f5df97cae2d6c7f1d8322f25b4dac2045c821d21422f60`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a01cff85622e54745784c0095d76615df0b38104efb50588c3b16c82a0875`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 974.6 KB (974611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ddc153c4035b61f0b934caa80c2c3a28ad633808b73de2fe5d26fa939f138c`  
		Last Modified: Fri, 03 Nov 2017 07:53:41 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89dd6d7a3a69fb863cd3a6ca51206622ac391e9b42e24058e60d8a0711f8a1`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e4feab6ba0b72a409ac8a911ca1567bb6c3045a3d5df5340d079fbdb71d4a`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed4fe2588fb106790d0f234888990413c1263ef2253b0181052f1d365908934`  
		Last Modified: Tue, 14 Nov 2017 09:11:51 GMT  
		Size: 37.6 MB (37615799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973cdac6699a6b1cd250bd65cd2fb79e3093549f56f1a61cc2be080495488ab4`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045fe9a4bd2604b091fbf713590645aaedeeaa16ddeab04a60b28ab6dee49eca`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b98992434707dd71802340b4647304100bc4ff825a08119ca103c1aad99e272`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a47f771a224cead0b8ea6dcd9326c5c2e91d1c447d810c3e68cf754ad8cfc7`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15059e6cc881ffe80c519926d504eeea1a4154739a85d69c001da72ef725ad8f`  
		Last Modified: Tue, 14 Nov 2017 09:11:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v7

```console
$ docker pull postgres@sha256:4249c4ccc4e23eeb343cd9d42aa1f930146b06b38bcdca7a30643517b3fc5b39
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93196989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c39b449dc74a7c1b04e9b69ec5b800d8c23fb029c88ece92f87cea482b5c027`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:56:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:56:26 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:56:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:57:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:57:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:57:44 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:57:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:57:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 03:57:53 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 04:55:42 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 05:13:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 05:13:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 05:13:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 05:13:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 05:13:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 05:13:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 05:13:05 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 05:13:06 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 05:13:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 05:13:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 05:13:07 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 05:13:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02098f289f28f48d15c8057d71bca11099f92c8881c3bd933872c26f6985b337`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21569521b18c3d8ec1866e36c769afee2e7df592328f47270c5ab21f52d32bb5`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 959.5 KB (959463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7452cab800e0181df2560290a179aee3c826b3f94a06361f8d839c6998ee202`  
		Last Modified: Fri, 03 Nov 2017 05:05:00 GMT  
		Size: 7.1 MB (7112849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3843f9383decade650ca4091414ae5281360a616b2fbdeb4b721dd888d3490`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d61923d5463975ebb16f0ec093820c560c5fe617f3ef995a6edd259ca802dd0`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a1cfc7b9e07b995848cabfd53adbee0bf83a98afb118b2ff9fcc3d72172de2`  
		Last Modified: Tue, 14 Nov 2017 06:03:20 GMT  
		Size: 36.4 MB (36422274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d381802a36a9be1d7775b31be1f8eb0ed48f8c93cffd2fc120fda27719c385e`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da81c1d728fb1d3d30cd461ecf5ac8a21605981ff74f2adf9fc9d377cd6b4b6`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c7f2e16b26c312eff3aadb03d98154ad405e15549369df860bbbe39c17cf3e`  
		Last Modified: Tue, 14 Nov 2017 06:03:09 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468b3f78b5ad5d8cf9193e433ddea55ada4c29f51cedfb8c2dddccb0c18c513`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc75378698a744e5b4f6b563d74b60d225c0075a11598cf590efbecda37a995`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:172b5524ef1302af876dae30f909b2399198a8027506894560907200c5778fc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95161748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9ed1163f72ef550e01310d75aca14cfb4e79c6facff69ed793371689fa4631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:53:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:53:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:53:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:54:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:54:57 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:54:58 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:54:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:55:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:55:05 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 15:56:18 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 16:26:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 16:26:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 16:26:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 16:26:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 16:26:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 16:26:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 16:26:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 16:26:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 16:26:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 16:26:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 16:26:13 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 16:26:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761707f443640f6f562f1f44235a97283159a4014a61abbd297ada36532115e9`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955fe9ac4b96bae2288a5f05ef3c02f0bc48df90b855e25a3dfb4e73d3ba575`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 952.0 KB (952002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1cdafa666dd2d36734ef54a12e2aad5442ebd915ecef0acc4ae693673c08c8`  
		Last Modified: Fri, 03 Nov 2017 16:52:24 GMT  
		Size: 7.1 MB (7112949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1d1dc96054579ac0ff64dd908159fea56499d8ed0201c7a1098ee2289e14f4`  
		Last Modified: Fri, 03 Nov 2017 16:52:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f9081b317e93fb35134fb782506e64e81b0b51e0b5eb85074725c9e8489c0`  
		Last Modified: Fri, 03 Nov 2017 16:52:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb8f9723a17f666997a98796f3f7725e23a38a55dbeba6562adee3c18289a49`  
		Last Modified: Tue, 14 Nov 2017 17:53:32 GMT  
		Size: 37.2 MB (37151439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60aa9ee3f657f6215b1f41e027f13b5d835000b75f1130e95cd6613a3b6b7d9`  
		Last Modified: Tue, 14 Nov 2017 17:53:09 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4234a6d7a4f81a6eda762f40927138a981db8874eafc7f83ddff174f00839076`  
		Last Modified: Tue, 14 Nov 2017 17:53:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2eb25620e29aec2051efc85c30479458fa2bc1fce119fd53e3d1c0bd77b7b1e`  
		Last Modified: Tue, 14 Nov 2017 17:53:11 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f2ba0baabd8fb188a32f60387e29b9aa28865244f5a1c70a739a1cb13f300`  
		Last Modified: Tue, 14 Nov 2017 17:53:09 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77b585717e3b9b5ee7da1d3fbfbe571e06aea9696daa4119d303e71d8209ac1`  
		Last Modified: Tue, 14 Nov 2017 17:53:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; 386

```console
$ docker pull postgres@sha256:bde116ab1bf92da8979c43bb142029a99b04ab7bb2af6082f5a5347dbef994d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106094180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c330cf911400d7f08a3c157cc77b6aa1989ee034ea8690b37944af3fb8839b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:04:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:04:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:05:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:06:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:06:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:06:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:06:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:06:17 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 15:11:14 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 15:12:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:12:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:12:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:12:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 15:12:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:12:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:12:53 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 15:12:53 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 15:12:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 15:12:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 15:12:55 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 15:12:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366ef82afdd57e133e3f13fffeddf60d7091a4156c52b001f8d62f133242e4a3`  
		Last Modified: Fri, 03 Nov 2017 14:20:45 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739e92549a18ba2ad04079f386bb792685b985bdcab983de37841d1e39afdb3`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 964.0 KB (964043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9224c66676892c47bb1fd087470d1af92bf08abe1b72e414620e13e97707dac8`  
		Last Modified: Fri, 03 Nov 2017 14:20:46 GMT  
		Size: 7.1 MB (7112906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a008b74d4f4e222caacf03c380974727ba01a4b795874f08634fe5a6e7cdcb`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086efe6530699424c36bef2d1e43e20a40f75683abac22bb721deeef2dd8e209`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7ac8547b13a5371a93ae4656d203cc7662cef7e09b9fa2fe000d20643c6043`  
		Last Modified: Tue, 14 Nov 2017 15:23:33 GMT  
		Size: 45.2 MB (45227348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b6c1a55fe10f78247fc513362058f25a027e3e1fdedc935e8887d2dabcc8a`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc257467883f13288bacc29515c74cca53b69314788066c99edc9ebd3d22b59c`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f793b9cfa956308cd3a1d6a7ea11d418a796caa2c5c80fcaeec716bd35da24f3`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc38afd954b48b4867a5cceb8f7b3a606aeb8f078982e52295fe2674d7aa5859`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9689053d1fb03a3096e272124ffac7441fcb8c7782feb833ab79f9de074df5f5`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; ppc64le

```console
$ docker pull postgres@sha256:9e0e3652ace14258feb0e8362d904890501bafd09238e669a36bc980624144cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102338706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:561300478b226d7f0c4c714d0b9d91508c78d5a6f0ddb291c0b180c656b8888a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:52:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:52:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:52:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:54:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:54:27 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:54:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 22:54:40 GMT
ENV PG_MAJOR=9.6
# Wed, 15 Nov 2017 21:45:38 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Wed, 15 Nov 2017 21:51:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 21:51:18 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 21:51:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 21:51:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 15 Nov 2017 21:51:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 21:51:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 21:51:31 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 15 Nov 2017 21:51:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 15 Nov 2017 21:51:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 Nov 2017 21:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Nov 2017 21:51:50 GMT
EXPOSE 5432/tcp
# Wed, 15 Nov 2017 21:51:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2274de1c60ca9068566e9b2aa25e1577842168ab4bea606dea05bb983d920d`  
		Last Modified: Thu, 02 Nov 2017 23:19:17 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f10fa7a59c50bfcb1b548f4a5c6fb4283f614e85b1b79181c26659593303e5`  
		Last Modified: Thu, 02 Nov 2017 23:19:16 GMT  
		Size: 954.2 KB (954205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704bbcb919d4acc8240dd530ad4e1a1b81f131beb9cd7fc6fdf74a5a6c1aedc5`  
		Last Modified: Thu, 02 Nov 2017 23:19:19 GMT  
		Size: 7.1 MB (7113113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654559d07452800eee7cb9a1015d928ee9dfa05699007b198f741a5460eb258`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4517113322391565e20deb637d428fcea031004005736b4b386299329501e9b`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db30c0c8e9cb881bbe213e7a613e246e7ee35b83e2c7f9caf7a0b52d404998`  
		Last Modified: Wed, 15 Nov 2017 22:07:34 GMT  
		Size: 42.4 MB (42445537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75aacedeaca8a2b6416553aa1255e25b2a32350ef0bb31a61221f210a0aa181`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2373b6956ca1901a89b86e92c3fcfba64cbda27cbec37ddfe47ba905606ef681`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4f0d711e56ba06b9606188d5b16a1dbab924eeaa87dff3875a205c12c4577f`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31a278c43cc0d1a2a9e469c16cf71b3adff11d48da2553b66deb631a306b698`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3408f8a88804fbbde57193d33477e5be8162a446efee13842a229c97f69d1`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; s390x

```console
$ docker pull postgres@sha256:649a90a317bbebb81358c0c7b4e0da4cae5f0e900b471d6284512be9938062ad
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100571967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58dceea9a4b665b9dbd2d5621291cca7c20055d99d27c132758b186f55db4339`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:35:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:35:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:35:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:36:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:36:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:36:16 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:36:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:36:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 09:36:19 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 10:39:18 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 10:48:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 10:48:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 10:48:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 10:48:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 10:48:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 10:48:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 10:48:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 10:48:19 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 10:48:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 10:48:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 10:48:20 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 10:48:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aaee9d43798a6e20352bc42182c2bd8e68f5a38ac8e7b1bfc2fdfb5456de5`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b307261018837c5c30edaf6e361dbd0300f4e4faaeddda83a0bcf05fe2bd24`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 970.2 KB (970243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aa0513398d454ecd65972a3cc8860400f071026e8579bbc79790be908710ed`  
		Last Modified: Fri, 03 Nov 2017 10:12:31 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6751dc08e24fee6350e4371b5dad8a0fc196723983017284914fe308cdaf88f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b3cac6db2ee49c30a497ab6f625b9cb6fe3cab8b5330faa4fc42034e8bad0f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344c4fe55da22031f89f04f57cc1615813242015cb71a11ab8694dd7784d4a01`  
		Last Modified: Tue, 14 Nov 2017 11:13:45 GMT  
		Size: 39.7 MB (39665637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f37149fcc40201d870bc95803297a9fda5c3826aba3ec97fba601eed7ece10`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4917f9bfdaf66a33661cd66091092bdc46b22b5cb96ae495d52edb577cc91d`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be4e567168179739a35c6ebfb17cabfd6c41f6876d6e3d95470ffb25295067a`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5877512e85efd437655ebede9b9f512579b3d3b358d6e2b0b6a5c23a51c9a2e1`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c744b7f4c06b6d0b72e37b8b20fe7750fcb486feca49e9d2e6180dc5fb50b40`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.6`

```console
$ docker pull postgres@sha256:1413c5c712d28d8d9659325a40d25d6af064353127c2b05c93fcae080863dc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:9.6.6` - linux; amd64

```console
$ docker pull postgres@sha256:a31c8b2d1c0386cd91fac235f5945fd31f452a580dfd9236a173fec8d9c5e4dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104129997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5579c7505b1bb56fddfd01164e02d13cd8e81a4d9524ada4f9c94697997c25cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:05:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:05:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:05:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:05:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:06:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:06:14 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:06:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:06:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:06:19 GMT
ENV PG_MAJOR=9.6
# Tue, 12 Dec 2017 06:06:19 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 12 Dec 2017 06:07:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:07:13 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:07:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:07:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 12 Dec 2017 06:07:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:07:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:07:16 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:07:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:07:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:07:18 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:07:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d44cf86769b1ace14785cbf0437fdf62eb233ac876b2aee10a1990774b2f6c`  
		Last Modified: Tue, 12 Dec 2017 06:15:20 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a15c538319f3f262243801ed927879f0a177d9e64cc9d0f972fa6476b0f2b`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 985.2 KB (985223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76eec81f9ce8772ca4bbff467e13862e31d5cbf1c736544d802e989a97bf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:21 GMT  
		Size: 7.1 MB (7113051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a1ed29c8a8f6328532d32b0beaee52f0b42bf37a6a2a7a3fa166a0b650dde3`  
		Last Modified: Tue, 12 Dec 2017 06:15:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8862935f78c771d276cb8c27de571b4c5cace4904377ab7abf47a6cb687a1271`  
		Last Modified: Tue, 12 Dec 2017 06:15:19 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6264275e324ac17a044d652ca93c7e45d79ea21e4583e7fe81e632869eb8ac57`  
		Last Modified: Tue, 12 Dec 2017 06:15:32 GMT  
		Size: 43.4 MB (43415993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa0ac8d49e57c147b284a997e2d834e81878c8da47e600dcfbef4d47e16f2a1`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195b6cc09dddb9e4b7ad1122b145fd05f7951a69fa820a794d127ef8666f6714`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1162cbf0e030a1b14f4833a5d9b3abd4a9011106ff93c455ed71b32b8641c6`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afef25248e130f8672cb3d509761657c6d8c2fafd4d61d27284f30b879d176f2`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9332c260ec530eefd8b356e88ff2039b3c3c75bdde64f50bceb76e1702bbbff`  
		Last Modified: Tue, 12 Dec 2017 06:15:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.6` - linux; arm variant v5

```console
$ docker pull postgres@sha256:fee0e45744905f252bf6ae89dc567c85a5e6f600317b6b9ed9639236a02da247
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96599252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69424fcd5532c2542337e44d925d9191e4028db9589fe3fe7306a405627daa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:39:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:39:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:39:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:40:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:41:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:41:12 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:41:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 06:41:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 06:41:21 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 07:58:33 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 08:17:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 08:17:57 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 08:17:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 08:17:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 08:17:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 08:17:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 08:17:59 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 08:17:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 08:18:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 08:18:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 08:18:00 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 08:18:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4499355f1f971b072f5df97cae2d6c7f1d8322f25b4dac2045c821d21422f60`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a01cff85622e54745784c0095d76615df0b38104efb50588c3b16c82a0875`  
		Last Modified: Fri, 03 Nov 2017 07:53:39 GMT  
		Size: 974.6 KB (974611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ddc153c4035b61f0b934caa80c2c3a28ad633808b73de2fe5d26fa939f138c`  
		Last Modified: Fri, 03 Nov 2017 07:53:41 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89dd6d7a3a69fb863cd3a6ca51206622ac391e9b42e24058e60d8a0711f8a1`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e4feab6ba0b72a409ac8a911ca1567bb6c3045a3d5df5340d079fbdb71d4a`  
		Last Modified: Fri, 03 Nov 2017 07:53:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed4fe2588fb106790d0f234888990413c1263ef2253b0181052f1d365908934`  
		Last Modified: Tue, 14 Nov 2017 09:11:51 GMT  
		Size: 37.6 MB (37615799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973cdac6699a6b1cd250bd65cd2fb79e3093549f56f1a61cc2be080495488ab4`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045fe9a4bd2604b091fbf713590645aaedeeaa16ddeab04a60b28ab6dee49eca`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b98992434707dd71802340b4647304100bc4ff825a08119ca103c1aad99e272`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a47f771a224cead0b8ea6dcd9326c5c2e91d1c447d810c3e68cf754ad8cfc7`  
		Last Modified: Tue, 14 Nov 2017 09:11:37 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15059e6cc881ffe80c519926d504eeea1a4154739a85d69c001da72ef725ad8f`  
		Last Modified: Tue, 14 Nov 2017 09:11:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.6` - linux; arm variant v7

```console
$ docker pull postgres@sha256:4249c4ccc4e23eeb343cd9d42aa1f930146b06b38bcdca7a30643517b3fc5b39
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93196989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c39b449dc74a7c1b04e9b69ec5b800d8c23fb029c88ece92f87cea482b5c027`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:56:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:56:26 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:56:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:57:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:57:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:57:44 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:57:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:57:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 03:57:53 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 04:55:42 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 05:13:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 05:13:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 05:13:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 05:13:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 05:13:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 05:13:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 05:13:05 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 05:13:06 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 05:13:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 05:13:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 05:13:07 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 05:13:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02098f289f28f48d15c8057d71bca11099f92c8881c3bd933872c26f6985b337`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21569521b18c3d8ec1866e36c769afee2e7df592328f47270c5ab21f52d32bb5`  
		Last Modified: Fri, 03 Nov 2017 05:04:57 GMT  
		Size: 959.5 KB (959463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7452cab800e0181df2560290a179aee3c826b3f94a06361f8d839c6998ee202`  
		Last Modified: Fri, 03 Nov 2017 05:05:00 GMT  
		Size: 7.1 MB (7112849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3843f9383decade650ca4091414ae5281360a616b2fbdeb4b721dd888d3490`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d61923d5463975ebb16f0ec093820c560c5fe617f3ef995a6edd259ca802dd0`  
		Last Modified: Fri, 03 Nov 2017 05:04:56 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a1cfc7b9e07b995848cabfd53adbee0bf83a98afb118b2ff9fcc3d72172de2`  
		Last Modified: Tue, 14 Nov 2017 06:03:20 GMT  
		Size: 36.4 MB (36422274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d381802a36a9be1d7775b31be1f8eb0ed48f8c93cffd2fc120fda27719c385e`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da81c1d728fb1d3d30cd461ecf5ac8a21605981ff74f2adf9fc9d377cd6b4b6`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c7f2e16b26c312eff3aadb03d98154ad405e15549369df860bbbe39c17cf3e`  
		Last Modified: Tue, 14 Nov 2017 06:03:09 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468b3f78b5ad5d8cf9193e433ddea55ada4c29f51cedfb8c2dddccb0c18c513`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc75378698a744e5b4f6b563d74b60d225c0075a11598cf590efbecda37a995`  
		Last Modified: Tue, 14 Nov 2017 06:03:08 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.6` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:172b5524ef1302af876dae30f909b2399198a8027506894560907200c5778fc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95161748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9ed1163f72ef550e01310d75aca14cfb4e79c6facff69ed793371689fa4631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:53:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:53:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:53:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:54:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:54:57 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:54:58 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:54:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:55:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:55:05 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 15:56:18 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 16:26:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 16:26:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 16:26:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 16:26:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 16:26:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 16:26:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 16:26:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 16:26:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 16:26:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 16:26:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 16:26:13 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 16:26:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761707f443640f6f562f1f44235a97283159a4014a61abbd297ada36532115e9`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955fe9ac4b96bae2288a5f05ef3c02f0bc48df90b855e25a3dfb4e73d3ba575`  
		Last Modified: Fri, 03 Nov 2017 16:52:22 GMT  
		Size: 952.0 KB (952002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1cdafa666dd2d36734ef54a12e2aad5442ebd915ecef0acc4ae693673c08c8`  
		Last Modified: Fri, 03 Nov 2017 16:52:24 GMT  
		Size: 7.1 MB (7112949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1d1dc96054579ac0ff64dd908159fea56499d8ed0201c7a1098ee2289e14f4`  
		Last Modified: Fri, 03 Nov 2017 16:52:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f9081b317e93fb35134fb782506e64e81b0b51e0b5eb85074725c9e8489c0`  
		Last Modified: Fri, 03 Nov 2017 16:52:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb8f9723a17f666997a98796f3f7725e23a38a55dbeba6562adee3c18289a49`  
		Last Modified: Tue, 14 Nov 2017 17:53:32 GMT  
		Size: 37.2 MB (37151439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60aa9ee3f657f6215b1f41e027f13b5d835000b75f1130e95cd6613a3b6b7d9`  
		Last Modified: Tue, 14 Nov 2017 17:53:09 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4234a6d7a4f81a6eda762f40927138a981db8874eafc7f83ddff174f00839076`  
		Last Modified: Tue, 14 Nov 2017 17:53:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2eb25620e29aec2051efc85c30479458fa2bc1fce119fd53e3d1c0bd77b7b1e`  
		Last Modified: Tue, 14 Nov 2017 17:53:11 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f2ba0baabd8fb188a32f60387e29b9aa28865244f5a1c70a739a1cb13f300`  
		Last Modified: Tue, 14 Nov 2017 17:53:09 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77b585717e3b9b5ee7da1d3fbfbe571e06aea9696daa4119d303e71d8209ac1`  
		Last Modified: Tue, 14 Nov 2017 17:53:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.6` - linux; 386

```console
$ docker pull postgres@sha256:bde116ab1bf92da8979c43bb142029a99b04ab7bb2af6082f5a5347dbef994d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106094180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c330cf911400d7f08a3c157cc77b6aa1989ee034ea8690b37944af3fb8839b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:04:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:04:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:05:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:06:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:06:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:06:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:06:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:06:17 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 15:11:14 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 15:12:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:12:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:12:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:12:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 15:12:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:12:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:12:53 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 15:12:53 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 15:12:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 15:12:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 15:12:55 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 15:12:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366ef82afdd57e133e3f13fffeddf60d7091a4156c52b001f8d62f133242e4a3`  
		Last Modified: Fri, 03 Nov 2017 14:20:45 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739e92549a18ba2ad04079f386bb792685b985bdcab983de37841d1e39afdb3`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 964.0 KB (964043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9224c66676892c47bb1fd087470d1af92bf08abe1b72e414620e13e97707dac8`  
		Last Modified: Fri, 03 Nov 2017 14:20:46 GMT  
		Size: 7.1 MB (7112906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a008b74d4f4e222caacf03c380974727ba01a4b795874f08634fe5a6e7cdcb`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086efe6530699424c36bef2d1e43e20a40f75683abac22bb721deeef2dd8e209`  
		Last Modified: Fri, 03 Nov 2017 14:20:43 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7ac8547b13a5371a93ae4656d203cc7662cef7e09b9fa2fe000d20643c6043`  
		Last Modified: Tue, 14 Nov 2017 15:23:33 GMT  
		Size: 45.2 MB (45227348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b6c1a55fe10f78247fc513362058f25a027e3e1fdedc935e8887d2dabcc8a`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc257467883f13288bacc29515c74cca53b69314788066c99edc9ebd3d22b59c`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f793b9cfa956308cd3a1d6a7ea11d418a796caa2c5c80fcaeec716bd35da24f3`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc38afd954b48b4867a5cceb8f7b3a606aeb8f078982e52295fe2674d7aa5859`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9689053d1fb03a3096e272124ffac7441fcb8c7782feb833ab79f9de074df5f5`  
		Last Modified: Tue, 14 Nov 2017 15:23:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.6` - linux; ppc64le

```console
$ docker pull postgres@sha256:9e0e3652ace14258feb0e8362d904890501bafd09238e669a36bc980624144cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102338706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:561300478b226d7f0c4c714d0b9d91508c78d5a6f0ddb291c0b180c656b8888a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:52:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:52:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:52:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:54:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:54:27 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:54:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 22:54:40 GMT
ENV PG_MAJOR=9.6
# Wed, 15 Nov 2017 21:45:38 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Wed, 15 Nov 2017 21:51:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 21:51:18 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 21:51:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 21:51:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 15 Nov 2017 21:51:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 21:51:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 21:51:31 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 15 Nov 2017 21:51:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 15 Nov 2017 21:51:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 Nov 2017 21:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Nov 2017 21:51:50 GMT
EXPOSE 5432/tcp
# Wed, 15 Nov 2017 21:51:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2274de1c60ca9068566e9b2aa25e1577842168ab4bea606dea05bb983d920d`  
		Last Modified: Thu, 02 Nov 2017 23:19:17 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f10fa7a59c50bfcb1b548f4a5c6fb4283f614e85b1b79181c26659593303e5`  
		Last Modified: Thu, 02 Nov 2017 23:19:16 GMT  
		Size: 954.2 KB (954205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704bbcb919d4acc8240dd530ad4e1a1b81f131beb9cd7fc6fdf74a5a6c1aedc5`  
		Last Modified: Thu, 02 Nov 2017 23:19:19 GMT  
		Size: 7.1 MB (7113113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654559d07452800eee7cb9a1015d928ee9dfa05699007b198f741a5460eb258`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4517113322391565e20deb637d428fcea031004005736b4b386299329501e9b`  
		Last Modified: Thu, 02 Nov 2017 23:19:14 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db30c0c8e9cb881bbe213e7a613e246e7ee35b83e2c7f9caf7a0b52d404998`  
		Last Modified: Wed, 15 Nov 2017 22:07:34 GMT  
		Size: 42.4 MB (42445537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75aacedeaca8a2b6416553aa1255e25b2a32350ef0bb31a61221f210a0aa181`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2373b6956ca1901a89b86e92c3fcfba64cbda27cbec37ddfe47ba905606ef681`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4f0d711e56ba06b9606188d5b16a1dbab924eeaa87dff3875a205c12c4577f`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31a278c43cc0d1a2a9e469c16cf71b3adff11d48da2553b66deb631a306b698`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3408f8a88804fbbde57193d33477e5be8162a446efee13842a229c97f69d1`  
		Last Modified: Wed, 15 Nov 2017 22:07:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.6` - linux; s390x

```console
$ docker pull postgres@sha256:649a90a317bbebb81358c0c7b4e0da4cae5f0e900b471d6284512be9938062ad
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100571967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58dceea9a4b665b9dbd2d5621291cca7c20055d99d27c132758b186f55db4339`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:35:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:35:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:35:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:36:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:36:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:36:16 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:36:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:36:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 09:36:19 GMT
ENV PG_MAJOR=9.6
# Tue, 14 Nov 2017 10:39:18 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Tue, 14 Nov 2017 10:48:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 10:48:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 10:48:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 10:48:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Tue, 14 Nov 2017 10:48:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 10:48:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 10:48:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Nov 2017 10:48:19 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 10:48:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 10:48:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 10:48:20 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 10:48:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aaee9d43798a6e20352bc42182c2bd8e68f5a38ac8e7b1bfc2fdfb5456de5`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b307261018837c5c30edaf6e361dbd0300f4e4faaeddda83a0bcf05fe2bd24`  
		Last Modified: Fri, 03 Nov 2017 10:12:30 GMT  
		Size: 970.2 KB (970243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aa0513398d454ecd65972a3cc8860400f071026e8579bbc79790be908710ed`  
		Last Modified: Fri, 03 Nov 2017 10:12:31 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6751dc08e24fee6350e4371b5dad8a0fc196723983017284914fe308cdaf88f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b3cac6db2ee49c30a497ab6f625b9cb6fe3cab8b5330faa4fc42034e8bad0f`  
		Last Modified: Fri, 03 Nov 2017 10:12:29 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344c4fe55da22031f89f04f57cc1615813242015cb71a11ab8694dd7784d4a01`  
		Last Modified: Tue, 14 Nov 2017 11:13:45 GMT  
		Size: 39.7 MB (39665637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f37149fcc40201d870bc95803297a9fda5c3826aba3ec97fba601eed7ece10`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4917f9bfdaf66a33661cd66091092bdc46b22b5cb96ae495d52edb577cc91d`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be4e567168179739a35c6ebfb17cabfd6c41f6876d6e3d95470ffb25295067a`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5877512e85efd437655ebede9b9f512579b3d3b358d6e2b0b6a5c23a51c9a2e1`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c744b7f4c06b6d0b72e37b8b20fe7750fcb486feca49e9d2e6180dc5fb50b40`  
		Last Modified: Tue, 14 Nov 2017 11:13:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.6-alpine`

```console
$ docker pull postgres@sha256:02b8d708a3cfc0bc9f6bd955daba2e8d36d460f68789dbe4e04c31878735684d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:db0fad337a95d178350169549e0ac1874af430bd77a8533a5b03542aa31cdd12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14691783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c1fbd604c024134f41e291293e645f1ab692088953be06121d6e8077f87e4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:10:18 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:10:19 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:10:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:10:20 GMT
ENV PG_MAJOR=9.6
# Mon, 04 Dec 2017 16:10:20 GMT
ENV PG_VERSION=9.6.6
# Mon, 04 Dec 2017 16:10:20 GMT
ENV PG_SHA256=399cdffcb872f785ba67e25d275463d74521566318cfef8fe219050d063c8154
# Mon, 04 Dec 2017 16:12:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:12:57 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:13:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:13:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:13:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:13:08 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:13:09 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:13:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:13:10 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:13:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904f0449cfc1a8855b4b35387faf3a181e8cfe4c8c2bb985abc4169ce9ced2e7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1af663c14438cb6f70c996b08c05e850621c235d0cb810888802bf5650edb7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51085086e4e33f4bb80b0cf8c54e53e96f349926b770c0aeb8b6675d64250c5`  
		Last Modified: Mon, 04 Dec 2017 16:23:46 GMT  
		Size: 12.7 MB (12712099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8064a0d2f685aab0debb53d323539dc6f523b9a2319f1822ca3f54450fd9258b`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d17009f2aaf09ba4c64dbdfe0c0622e839469d60cd1d7a1233a4c436e36361`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0435ce4d7b9458071514ba2c9496316e4d395f4a81f3eedc89e84cbacc033932`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c1a5e0fa9fefe236f03cb7a4e880e84af1ac1d2f59449a9135d3bb1a38d339`  
		Last Modified: Mon, 04 Dec 2017 16:23:39 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481b2e72aa80c0ddc1e076b53978141210190cf104a466d8d697b214fd8cb7f6`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:02b8d708a3cfc0bc9f6bd955daba2e8d36d460f68789dbe4e04c31878735684d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:db0fad337a95d178350169549e0ac1874af430bd77a8533a5b03542aa31cdd12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14691783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c1fbd604c024134f41e291293e645f1ab692088953be06121d6e8077f87e4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:10:18 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:10:19 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:10:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:10:20 GMT
ENV PG_MAJOR=9.6
# Mon, 04 Dec 2017 16:10:20 GMT
ENV PG_VERSION=9.6.6
# Mon, 04 Dec 2017 16:10:20 GMT
ENV PG_SHA256=399cdffcb872f785ba67e25d275463d74521566318cfef8fe219050d063c8154
# Mon, 04 Dec 2017 16:12:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:12:57 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:13:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:13:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:13:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:13:08 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:13:09 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:13:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:13:10 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:13:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904f0449cfc1a8855b4b35387faf3a181e8cfe4c8c2bb985abc4169ce9ced2e7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1af663c14438cb6f70c996b08c05e850621c235d0cb810888802bf5650edb7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51085086e4e33f4bb80b0cf8c54e53e96f349926b770c0aeb8b6675d64250c5`  
		Last Modified: Mon, 04 Dec 2017 16:23:46 GMT  
		Size: 12.7 MB (12712099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8064a0d2f685aab0debb53d323539dc6f523b9a2319f1822ca3f54450fd9258b`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d17009f2aaf09ba4c64dbdfe0c0622e839469d60cd1d7a1233a4c436e36361`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0435ce4d7b9458071514ba2c9496316e4d395f4a81f3eedc89e84cbacc033932`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c1a5e0fa9fefe236f03cb7a4e880e84af1ac1d2f59449a9135d3bb1a38d339`  
		Last Modified: Mon, 04 Dec 2017 16:23:39 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481b2e72aa80c0ddc1e076b53978141210190cf104a466d8d697b214fd8cb7f6`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:02b8d708a3cfc0bc9f6bd955daba2e8d36d460f68789dbe4e04c31878735684d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:db0fad337a95d178350169549e0ac1874af430bd77a8533a5b03542aa31cdd12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14691783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c1fbd604c024134f41e291293e645f1ab692088953be06121d6e8077f87e4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:10:18 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:10:19 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:10:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:10:20 GMT
ENV PG_MAJOR=9.6
# Mon, 04 Dec 2017 16:10:20 GMT
ENV PG_VERSION=9.6.6
# Mon, 04 Dec 2017 16:10:20 GMT
ENV PG_SHA256=399cdffcb872f785ba67e25d275463d74521566318cfef8fe219050d063c8154
# Mon, 04 Dec 2017 16:12:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:12:57 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:13:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:13:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:13:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:13:08 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:13:09 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:13:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:13:10 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:13:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904f0449cfc1a8855b4b35387faf3a181e8cfe4c8c2bb985abc4169ce9ced2e7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1af663c14438cb6f70c996b08c05e850621c235d0cb810888802bf5650edb7`  
		Last Modified: Mon, 04 Dec 2017 16:23:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51085086e4e33f4bb80b0cf8c54e53e96f349926b770c0aeb8b6675d64250c5`  
		Last Modified: Mon, 04 Dec 2017 16:23:46 GMT  
		Size: 12.7 MB (12712099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8064a0d2f685aab0debb53d323539dc6f523b9a2319f1822ca3f54450fd9258b`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d17009f2aaf09ba4c64dbdfe0c0622e839469d60cd1d7a1233a4c436e36361`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0435ce4d7b9458071514ba2c9496316e4d395f4a81f3eedc89e84cbacc033932`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c1a5e0fa9fefe236f03cb7a4e880e84af1ac1d2f59449a9135d3bb1a38d339`  
		Last Modified: Mon, 04 Dec 2017 16:23:39 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481b2e72aa80c0ddc1e076b53978141210190cf104a466d8d697b214fd8cb7f6`  
		Last Modified: Mon, 04 Dec 2017 16:23:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:a91afc88ea22cd33c74f9dadd6732a2841f9a2ba4f5bf15a0f29fb0b8cecf790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:93ceecf1b681885cc2a730f810e44183b1ffac87c277327dede00274c2a7c14b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14359851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022e3d66b3cdb4df18a29d2a5218d59d4499215cb4407b2309bcdc1ee44ad080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 16:06:35 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 04 Dec 2017 16:06:40 GMT
ENV LANG=en_US.utf8
# Mon, 04 Dec 2017 16:06:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Dec 2017 16:06:41 GMT
ENV PG_MAJOR=10
# Mon, 04 Dec 2017 16:06:46 GMT
ENV PG_VERSION=10.1
# Mon, 04 Dec 2017 16:06:46 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Mon, 04 Dec 2017 16:09:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 04 Dec 2017 16:09:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 04 Dec 2017 16:09:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 04 Dec 2017 16:09:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 04 Dec 2017 16:09:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 04 Dec 2017 16:09:51 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 04 Dec 2017 16:09:56 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Mon, 04 Dec 2017 16:09:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 04 Dec 2017 16:10:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 16:10:02 GMT
EXPOSE 5432/tcp
# Mon, 04 Dec 2017 16:10:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfc5560fd669eaededcf1c2874aed84c62a0f9337b877d91dfb096388ea6b4a`  
		Last Modified: Mon, 04 Dec 2017 16:23:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e7e7ad6776914ad71c090f88e281226aeddaa2804d0c42750f9352669ee8e2`  
		Last Modified: Mon, 04 Dec 2017 16:23:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95628b7931116d78bf1f3c8b9cd9c15f4d4ee1bc92aef9539a8815ef09c7f12`  
		Last Modified: Mon, 04 Dec 2017 16:23:04 GMT  
		Size: 12.4 MB (12358575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb8222c6c7b1013b011f5ab14ac0b86ba0d55fe0ebcc1d6389ef771a5961e82`  
		Last Modified: Mon, 04 Dec 2017 16:22:58 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898afc901fed2b7ba36a81c54b0ca95d160b9b3e86d1cb82ee2f01a7ff156401`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f581da30ddb019fc3b911efea8533a1cbcc36fe11c5508c8de3a0eb1b57f296`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beeb4a7049c2925b011e9413a167dd8d9669d282cfc4df9535e49e39cbf7abcc`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f76bad8a5b6e331da835a41787040edeb8bb87d7a790cbda6d8b461eade3b7`  
		Last Modified: Mon, 04 Dec 2017 16:22:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:edaa769c7da3f89d5d870934f1f733f6daca42b1b10d7003e5f2116729b65621
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14081731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68ec80ca40fbff9e59403c849f98118a4d231ec619c75c9f7e812ff881ebc72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:28:00 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 05:28:01 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 05:28:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 05:28:02 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 00:36:18 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 00:36:18 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 00:37:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 00:37:59 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 00:38:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 00:38:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 00:38:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 00:38:01 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 00:36:18 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:36:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:36:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:36:19 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 00:36:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ee21f323722b4de6199fd75d7ac98af881df8745fa40ee9d05ac50b65bb0ee`  
		Last Modified: Thu, 26 Oct 2017 05:30:06 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08471e694908aa21aeb260899b548eb79de839a3b64892df07cc76799410bab`  
		Last Modified: Thu, 26 Oct 2017 05:30:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1ff89a8de664ab1ce8568a740713f9a837299cf8d01447f864977ee555840c`  
		Last Modified: Tue, 14 Nov 2017 00:38:16 GMT  
		Size: 12.1 MB (12105670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950f198523fc3b70204b52195509962e6748f4f58fad67766529f82f78e11ae`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc32db7b103d878fb5d78fda2583981a48d41fde041280ad6008779827a31da`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c034b568bdf4945ea7a9437a5c6d905fe9bd787249bb852252b33fbd38ae885`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6b624f06dc9916a4113d6c49c31b54b76497dd95999c24eee41ebfb6e555d`  
		Last Modified: Thu, 16 Nov 2017 00:36:25 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa371d66fd8904ddc4f021223c3900dd75952a869b29d6e33051d08e4b0fc41`  
		Last Modified: Thu, 16 Nov 2017 00:36:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a43ae608f38710b3b2defb6e9309f4072d1aa081851955bf9031b0b638c76901
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13580809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695f25bfc84b4c5b946069db5950c2be83fb897c0ab4ab894b9f0525b09f9951`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 14:21:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 14:21:07 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 14:21:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 14:21:09 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:51:31 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 15:51:31 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 15:55:37 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 15:55:39 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:55:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:55:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:55:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:55:43 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:21:40 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:21:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:21:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:21:43 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:21:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9279e12cd5e4d64ecccdaa1e2c84905721462be29e276e033e82dc8e9f9618`  
		Last Modified: Thu, 26 Oct 2017 14:26:09 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251fba6008fdbbfdbed7eb759d124fa5fb44d25bc358bba815e480506378d3fc`  
		Last Modified: Thu, 26 Oct 2017 14:26:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e449b574d4977f1570de6ae66b30a7c92f15a1c9f8400ee95d376a81c8295c`  
		Last Modified: Tue, 14 Nov 2017 17:52:16 GMT  
		Size: 11.7 MB (11656117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459c01fccfd4e472bfb19d74272b713b7e388311db5e1def5a7a14981b3267f6`  
		Last Modified: Tue, 14 Nov 2017 17:52:07 GMT  
		Size: 7.3 KB (7263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ae336bd6115adb35f0b5849a6a20a41bc91b4f3ca5a970bf4fbb8700b6dfb`  
		Last Modified: Tue, 14 Nov 2017 17:52:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b1178234700be6e9747d2bf04e3ffd432a5a2b71f88d817beb36cf3d2c2033`  
		Last Modified: Tue, 14 Nov 2017 17:52:08 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5ae31dfbeb08b3b3bb86b37a07ed2cb70a5668b5bd938ff49fcf69aef09d60`  
		Last Modified: Thu, 16 Nov 2017 15:23:14 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a571bc6c4200383fc65971aaeebf1a79c8cecf6e0b3bcffd0515247ba2ba55`  
		Last Modified: Thu, 16 Nov 2017 15:23:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; 386

```console
$ docker pull postgres@sha256:ef4a4d798e880b3c0a8e9aa6df82060f7fb9357a154fe2171be0cc76d1516b4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15287723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ada08f647e535bc779e20093d734e4cdfaa2320fff32db1066e653b4fa963da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 14:02:56 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 14:02:56 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 14:02:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 14:02:57 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:05:09 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 15:05:09 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 15:08:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 15:08:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:08:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:08:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:08:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:08:11 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:00:55 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:00:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:00:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:00:56 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:00:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70a58c1149f88ed96eb8e2fd8c5f4ac797a01539a650a011fd70525f439c090`  
		Last Modified: Thu, 26 Oct 2017 14:06:16 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51753dfc14b286d27f6635b81e06f61b33883b573f797fef42c3af1e09d7242`  
		Last Modified: Thu, 26 Oct 2017 14:06:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66bbeed0e77e6190b6905ae8981d91d3259d69664b08d06a648370e3f73352f`  
		Last Modified: Tue, 14 Nov 2017 15:22:55 GMT  
		Size: 13.2 MB (13232173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8957ac3f7e7727c63c8e04a57704227dcb925629653d806782c7d79eb9002be`  
		Last Modified: Tue, 14 Nov 2017 15:22:50 GMT  
		Size: 7.3 KB (7269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718ce9383375bd01f4d0c2c3249788b47d488020b6a246e196baa0ef9433e52b`  
		Last Modified: Tue, 14 Nov 2017 15:22:50 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7792d302e22bbe6f4f1cddada75e6c107357586cdca48e51a3531aa108b8afb`  
		Last Modified: Tue, 14 Nov 2017 15:22:50 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4b93ee3f1105625eda47b90035021d14d10ea13dfe29acea0e77c2819b3e5e`  
		Last Modified: Thu, 16 Nov 2017 15:01:45 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b5e93c826c2ee8de888fc82f484f4dc3a14970a6b432fa2ee45f3c0b1c6f03`  
		Last Modified: Thu, 16 Nov 2017 15:01:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:9f73ba6d203a06439e1e3e013ef370d0297eab5ddb968ba6f5056bb28f2dce21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14395537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77d1a6a8c15dd30e6d3d2213bbeb4cffb07a590103c3f931673abf3c425c9a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 22:01:37 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 22:01:40 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 22:01:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 22:01:46 GMT
ENV PG_MAJOR=10
# Wed, 15 Nov 2017 21:39:43 GMT
ENV PG_VERSION=10.1
# Wed, 15 Nov 2017 21:39:46 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Wed, 15 Nov 2017 21:44:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 15 Nov 2017 21:44:26 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 21:44:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 21:44:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 21:44:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 21:44:39 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 23:01:38 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 23:01:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 23:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 23:01:45 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 23:01:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c23c4fdb0ebc4f191045f6bf19cca7b80df9186efad68a3333b03e331280aab`  
		Last Modified: Thu, 26 Oct 2017 22:06:42 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3f58b8ca892b95a961eeadd35dd139839ccce3879da6dd63ff0babcbbf9153`  
		Last Modified: Thu, 26 Oct 2017 22:06:42 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8a0f54f9f085e42e42a9155f4c6fd6555866974b8bd2a2b15c667a0706b415`  
		Last Modified: Wed, 15 Nov 2017 22:07:06 GMT  
		Size: 12.4 MB (12376883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bb3af609bb20533b2f0ec376d184d9363604b0d80fd2973c636399dc5a524a`  
		Last Modified: Wed, 15 Nov 2017 22:07:00 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311c4b26ee255d35a9fc9594dac3037ec1516ffd69d54cbc3169b1c7c25b96bf`  
		Last Modified: Wed, 15 Nov 2017 22:07:00 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0943f222a1a12fdd07c7a2e88cf838033b1cf10f41668cc950559853abc0cdf9`  
		Last Modified: Wed, 15 Nov 2017 22:07:00 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf7c145ae9a84897ec54896f33dc04752ea8889a66637f71c67a95bab8e6a49`  
		Last Modified: Thu, 16 Nov 2017 23:02:22 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96bcec5290d93f3cab7db3b6d85ec6219cb0439246c75821f9aeefee82043c84`  
		Last Modified: Thu, 16 Nov 2017 23:02:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; s390x

```console
$ docker pull postgres@sha256:6e50d8693572d1a76fad393b456eced8628b7870c41305459a82751c0bb2f41d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14743362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e853452be9762f65b4696c2bfdaa8506bd11af71917a19edde9aad13b9ea28ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 09:25:35 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 09:25:36 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 09:25:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 09:25:36 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 10:36:10 GMT
ENV PG_VERSION=10.1
# Tue, 14 Nov 2017 10:36:10 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Tue, 14 Nov 2017 10:38:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 14 Nov 2017 10:38:54 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 10:38:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 10:38:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 10:38:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 10:38:56 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 10:25:45 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:25:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 10:25:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 10:25:46 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 10:25:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64021f8919c5741e8db38e29e920f78d5e229b9451ca0fcae9c682606db203b`  
		Last Modified: Thu, 26 Oct 2017 09:28:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958cf18dd66d6c5b0994b62c5056998a9c4d47f8ef8baa2516f779083812eeb3`  
		Last Modified: Thu, 26 Oct 2017 09:28:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9280eb3befff97803958ae4f6cd6adc77de65b376961b82e854bbbdef3cc78f3`  
		Last Modified: Tue, 14 Nov 2017 11:13:21 GMT  
		Size: 12.7 MB (12667951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130267153c8f2d0783a8ed7f548acd008387b699521db86ec21458b4f915da1d`  
		Last Modified: Tue, 14 Nov 2017 11:13:17 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301f375a1bb76e89365d0525b846ae205977484de93d78d9a8202652c49ca866`  
		Last Modified: Tue, 14 Nov 2017 11:13:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015d18cbf8839aa974818ac9f64908d5cfe4ad1c74a2d0c8d61543292f7ed181`  
		Last Modified: Tue, 14 Nov 2017 11:13:18 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738ff6b64f12399420bcf3fecdef237374b2741e2b9346a4b32e1be5246d1dcf`  
		Last Modified: Thu, 16 Nov 2017 10:26:24 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f9a7586dd533bad31c72c0acd2fed0563a6eb57f1fb580038ad89be88c1848`  
		Last Modified: Thu, 16 Nov 2017 10:26:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:7d2245fc62ef0b12788e6f764f8f8a14021265c2607b40af772063fdd1341eca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:latest` - linux; amd64

```console
$ docker pull postgres@sha256:df5b5545e937ab152f2cf401fccb515d49363dfce1333c4b8b2580b6c0bbc207
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116693158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec61d13c85666651ff092b89d46ae958d81c7f3d387ed91ae5c530a38b9896e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:04:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:04:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:04:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:04:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:04:44 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:04:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:04:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:04:48 GMT
ENV PG_MAJOR=10
# Tue, 12 Dec 2017 06:04:48 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 12 Dec 2017 06:05:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Dec 2017 06:05:11 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Dec 2017 06:05:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Dec 2017 06:05:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 12 Dec 2017 06:05:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Dec 2017 06:05:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Dec 2017 06:05:13 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Dec 2017 06:05:13 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:05:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 06:05:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 06:05:14 GMT
EXPOSE 5432/tcp
# Tue, 12 Dec 2017 06:05:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ec0e6c372cb6a90b3c04cab7c4134482753e799da4c656f788d7cd49e96518`  
		Last Modified: Tue, 12 Dec 2017 06:14:23 GMT  
		Size: 6.9 MB (6920957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1542fb91f3cd6043831f02c687a7dbfd4d379887287f397fc6cfb6288cccd3`  
		Last Modified: Tue, 12 Dec 2017 06:14:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7195e6423888bfbdb8384d7fded1fa5c7db1699a30ba5058cf48ce3abab3b63`  
		Last Modified: Tue, 12 Dec 2017 06:14:18 GMT  
		Size: 956.7 KB (956678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95424deca6a23c0774b150aac53a17ccc9a1fdcb33d20e9db0c74aa5b2ac5995`  
		Last Modified: Tue, 12 Dec 2017 06:14:20 GMT  
		Size: 6.6 MB (6577482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7d4b3a4ce29f536e447c68e63cb887ac105090f61ee19754495787afb52077`  
		Last Modified: Tue, 12 Dec 2017 06:14:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbde41d4a8cce145353a8a71a3f19e3d3085c8996636a92bf7a4f022f93f72f5`  
		Last Modified: Tue, 12 Dec 2017 06:14:17 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880120b92addb9a725ed7733fa121c40f187680f966752406dc930d687705245`  
		Last Modified: Tue, 12 Dec 2017 06:14:27 GMT  
		Size: 57.1 MB (57100544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a217c784089e11313d9f916e4d99b3b200e425a3c7dde0a553a169bc00b66a7`  
		Last Modified: Tue, 12 Dec 2017 06:14:14 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d581543fe8e7a594c6486145bd27bd6c6d41dffd273e27fb843b094f430f4258`  
		Last Modified: Tue, 12 Dec 2017 06:14:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5eff8940bb05426f577617765c6c11387d73f67f430cd9cefbc6fbefdc99f16`  
		Last Modified: Tue, 12 Dec 2017 06:14:14 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462d60a56b09019ef6af979504a8c2d7a2a712a05d94b89f8450ce9931b954ac`  
		Last Modified: Tue, 12 Dec 2017 06:14:14 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135fa6b9c139781e8fa2ab31983acab3e5a25647f81bc5ebb3bbb3b49a1c1ba6`  
		Last Modified: Tue, 12 Dec 2017 06:14:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:ff7aeead5c6ec708e09ecaeff5ecf10c36b4467ee824f2f419274732fce519f3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116012022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:586d2af983fe6bc6f97145ce77f5956e6549e9e057e4697457fa592eea1e241a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 06:38:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 06:38:45 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 06:38:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 06:39:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 06:39:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 06:39:35 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 06:39:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 06:38:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 06:38:43 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 07:38:38 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 07:58:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 07:58:10 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 07:58:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 07:58:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 07:58:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 07:58:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 07:58:12 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 07:38:37 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 07:38:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 07:38:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 07:38:39 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 07:38:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b3077bf3f73016525600577a9af11dc0a121689a44962aa2a391a25bfe61b8`  
		Last Modified: Sat, 04 Nov 2017 06:58:58 GMT  
		Size: 6.7 MB (6654541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5c506d0be5e01938015781b0004da2cff7b1154a00ea106e452bb2f9a13b0e`  
		Last Modified: Sat, 04 Nov 2017 06:58:56 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed1b94871e601e57d5b0217cfa42640ef4848d62264f3f13d14fe08284135f`  
		Last Modified: Sat, 04 Nov 2017 06:58:56 GMT  
		Size: 946.7 KB (946688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a26ac5770464d510a8128689a44a9d9ce54a7a35383873a48d27661fbd96325`  
		Last Modified: Sat, 04 Nov 2017 06:58:58 GMT  
		Size: 6.6 MB (6577408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c3ae6fdf9b4a2d3b0e63acdfb84c46245285977071c811937477e14911079c`  
		Last Modified: Sat, 04 Nov 2017 06:58:55 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cd43c696a6e5b07032bbb8b3b7f634ce6e7fa573d13841d8e9cb083843cba5`  
		Last Modified: Sat, 04 Nov 2017 06:58:55 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a4d5a0b76aabb4c88e26649e17c0fdde6faf9cc5815ae51864acec3bbd0310`  
		Last Modified: Tue, 14 Nov 2017 09:11:14 GMT  
		Size: 58.0 MB (58001553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8208339cbbdb347b53cebea4ec9d4e2beb0371b0953b98098c9b0cce2cd1d35`  
		Last Modified: Tue, 14 Nov 2017 09:10:55 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f21aad6c4d3539cba8c65fa6000a1870520bad24dbc9f20491045d8d5d120c`  
		Last Modified: Tue, 14 Nov 2017 09:10:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f631eede17369004890bf3b3acfaae7dfb7e4a662ce0857102dfe35b238c427`  
		Last Modified: Tue, 14 Nov 2017 09:10:56 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c8edec6e0f49d1a642cbcf64c5eb096fd48f4c11ae5d07b30de35fddc2ec6`  
		Last Modified: Thu, 16 Nov 2017 07:39:03 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052122d0d696b53aa75cbc8dcdd6fd3565aa7296596c60bad5828cd355fcb1be`  
		Last Modified: Thu, 16 Nov 2017 07:39:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:4aecfac04d231d0105616f9d52c965f514a59ebd7f6dc1136e130e48a1ebf2fe
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111941348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b34ded16f0eaf6181b56e3ee0a51c718798f2bdf360929e2537a78b62643008c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 03:38:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 03:38:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 03:38:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 03:39:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 03:39:11 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 03:39:11 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 03:39:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 03:39:16 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 03:39:17 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 04:38:41 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 04:55:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 04:55:26 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 04:55:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 04:55:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 04:55:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 04:55:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 04:55:29 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 04:38:44 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 04:38:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 04:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 04:38:45 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 04:38:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7412293e32a6eab79bcf67d1c42a07e0cd093f37efb5d0acdf4240bed3a10fc`  
		Last Modified: Fri, 03 Nov 2017 05:04:16 GMT  
		Size: 6.3 MB (6291663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63fea13c7a3ca32a37fac0d2c81e3238a0ae1e1d82fada43f18ba74f2124ac1`  
		Last Modified: Fri, 03 Nov 2017 05:04:14 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f359ad5335151af40906626e99f3d685d0cc94140c27dadf26f9a41b785289b9`  
		Last Modified: Fri, 03 Nov 2017 05:04:14 GMT  
		Size: 931.2 KB (931217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733b3ff93d7813504f2efa3894d096791fd58b25372da03a6f19687fdbc33290`  
		Last Modified: Fri, 03 Nov 2017 05:04:16 GMT  
		Size: 6.6 MB (6577451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5739741fe9053bb85641af4e1bbe2967e8bdc8bd5ae7d8955fc2abe22d8dd1`  
		Last Modified: Fri, 03 Nov 2017 05:04:13 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43aaf60b5cc61e378b9a92a3eb96fee297bb212bb1428b20fd8a4146a1790d53`  
		Last Modified: Fri, 03 Nov 2017 05:04:13 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dad7230b4c512750bff98d30f4ed51c2cfa55ff8b11720683fac64bc896f1f`  
		Last Modified: Tue, 14 Nov 2017 06:02:38 GMT  
		Size: 56.3 MB (56283144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3da4b7a0dbeb61d41233a124db17a4e45845144ff88df4b16c9782c2ed27909`  
		Last Modified: Tue, 14 Nov 2017 06:02:20 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479b9ae71e1e18e27dbee907a25ef2391faebc4e56a312ce9cc1fc9e33e0988c`  
		Last Modified: Tue, 14 Nov 2017 06:02:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a55dbbc88397362b5ca5c76658bece9443bee84a25df116779800abcc76bf29`  
		Last Modified: Tue, 14 Nov 2017 06:02:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad239358f9cfed8e946b7d40baea68a45212e42a20acfc458fbc7dd3a15f2e26`  
		Last Modified: Thu, 16 Nov 2017 04:39:11 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0ab6dd7d0cc1c49f33af21e8dc3e263c2a32d8705eafc594bea5e813ea4ed0`  
		Last Modified: Thu, 16 Nov 2017 04:39:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:b281a84de862ea45534653ebfb8c6223f915e192e39ff1dd6688c5f1ef8b2916
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113973313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057648157ba1e9dea3692397feefb7d41bb28472cacc388b75cf8fe0912b70be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:21:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:21:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:21:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:22:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:23:00 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:23:01 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:23:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:23:07 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:23:07 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:21:18 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 15:50:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:50:53 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:50:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:50:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 15:50:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:50:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:50:59 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:21:19 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:21:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:21:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:21:22 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:21:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6006bf2895eca4960480791277950a3160efbc991c201d91159b7729b9a00402`  
		Last Modified: Fri, 03 Nov 2017 16:51:06 GMT  
		Size: 6.5 MB (6495750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d783ba69183e8bde8039643e4a0c1d46d0037932ab82ea19fc408250ba0da16`  
		Last Modified: Fri, 03 Nov 2017 16:51:04 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471692f3ee2826bb20945cefcc2f79e8bb92ef1888b0cf46604427a9be52e8aa`  
		Last Modified: Fri, 03 Nov 2017 16:51:03 GMT  
		Size: 924.2 KB (924191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e3d8ce34bf14405ef676fd43d3dc000865f8ff9cd6eea8f8e3fcf8d2e21bb6`  
		Last Modified: Fri, 03 Nov 2017 16:51:05 GMT  
		Size: 6.6 MB (6577298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f48a2da1e48404813f6cb3068af920b42b688e8dd6bd200afe1bd3ddd1258a`  
		Last Modified: Fri, 03 Nov 2017 16:51:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb97c373e4ef40799fd5629d8b02a3e919d2956088a670535c0ee6c8be45c3`  
		Last Modified: Fri, 03 Nov 2017 16:51:02 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9344e69a5b97035d37a0f6ed40b48ca9196bf199be52532b32dc2d1d7b0077`  
		Last Modified: Tue, 14 Nov 2017 17:51:12 GMT  
		Size: 57.0 MB (57048475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9396b417eb86df06e6977db6baf5e0613f59fd05edf222ea59e04af0d3a7038`  
		Last Modified: Tue, 14 Nov 2017 17:50:49 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d4a30d5749061c958536c05c1ba0b1f6f23f51397c551dae60b34265347c`  
		Last Modified: Tue, 14 Nov 2017 17:50:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4792494a786923df137d68e98eacd5cfbcc19c330342fb04836c881582462b`  
		Last Modified: Tue, 14 Nov 2017 17:50:49 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892b16aa48b6700e0a3aa8bc125c5211b59eb9ee857021b687879e9828dbb30d`  
		Last Modified: Thu, 16 Nov 2017 15:22:17 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbea65c7e243c01a2e0dae7b46c23582bf6eb837211ada0b7fc15fe9f8ebc26`  
		Last Modified: Thu, 16 Nov 2017 15:22:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:b0b45f8d59b9e9e833897db205136389dbf22b06776a25bca0cfc3c9a25a9b8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118765063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80bb44289fb48016b98375253f43b79adcc99c5e0b5bb1adc8b1abbebf0cb659`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:03:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 14:03:19 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 14:03:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:03:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:03:41 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 14:03:41 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 14:03:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 14:03:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 14:03:46 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 15:03:21 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 15:04:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 15:04:11 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 15:04:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 15:04:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 15:04:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 15:04:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 15:04:13 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 15:00:45 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 15:00:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 15:00:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 15:00:47 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 15:00:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1626b4d4017742dbf6b30e24a0929065d8a921d6e6630872547e7c120ba38900`  
		Last Modified: Fri, 03 Nov 2017 14:20:05 GMT  
		Size: 7.2 MB (7225445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ce6213a0de78ac8797f0695f1f46837940fed4e55f376d094051102f014896`  
		Last Modified: Fri, 03 Nov 2017 14:20:03 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646844a02e9a53507e5e7b1a2212a80fc235dc23ec0c3f946a1aea02202cbc2c`  
		Last Modified: Fri, 03 Nov 2017 14:20:01 GMT  
		Size: 936.4 KB (936405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ceebd4bf935246ed6ff130c29ca5005ee9516151bf7ee685a2999f5856ccf7`  
		Last Modified: Fri, 03 Nov 2017 14:20:04 GMT  
		Size: 6.6 MB (6577411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63de9c94c2a461802e84e2d22ab1ffcb66159cbda2c0997559cc732e11bc0d08`  
		Last Modified: Fri, 03 Nov 2017 14:20:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16f0f604d3aef75e0884f113021a6215bb3abcae9f776aa421694d77cdd623f`  
		Last Modified: Fri, 03 Nov 2017 14:20:00 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00f88085ddccbb0e60d2c515383d690ef7fa807219df6bc4a8ca641a47bed6c`  
		Last Modified: Tue, 14 Nov 2017 15:22:23 GMT  
		Size: 58.2 MB (58176265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815e913847e24f84e513bd88bc50b23b771d2a73a1968ca07826e3dd74f2bf57`  
		Last Modified: Tue, 14 Nov 2017 15:22:08 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0873ac3b2e4255e521f5136e9dc5138ea223d3280e6ffae29816bd045a1f58bf`  
		Last Modified: Tue, 14 Nov 2017 15:22:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7f96ca8854c7705f3785b7fccb87575b85d0b29f8581f42dfabd52c57fe3d`  
		Last Modified: Tue, 14 Nov 2017 15:22:09 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef66ab93cb40c3b3d5c8854719ce8ea6d9a8ef26fc035e4189e1678881b69f2`  
		Last Modified: Thu, 16 Nov 2017 15:01:13 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbedcae6d3ea36c5eb8b4a54a27a31e9b21b05f498a0db136920f7f1edba3e0a`  
		Last Modified: Thu, 16 Nov 2017 15:01:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:dbabeeb33d0e1cea2d37e43ef70cafec26b8bf7e83f4a88a944ae3966145b3a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116627045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f54d875230013e4293cea6f2ae084a42187823e864fd61a1bf353bd9ce41f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 22:43:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:43:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 02 Nov 2017 22:43:22 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 22:45:03 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 22:45:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 02 Nov 2017 22:45:23 GMT
ENV LANG=en_US.utf8
# Thu, 02 Nov 2017 22:45:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 02 Nov 2017 22:45:35 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Nov 2017 22:45:37 GMT
ENV PG_MAJOR=10
# Wed, 15 Nov 2017 21:31:57 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Wed, 15 Nov 2017 21:38:43 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 15 Nov 2017 21:38:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 15 Nov 2017 21:39:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 15 Nov 2017 21:39:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 15 Nov 2017 21:39:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Nov 2017 21:39:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 15 Nov 2017 21:39:13 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 23:01:25 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 23:01:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 23:01:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 23:01:31 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 23:01:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ec4c541921a18089b05dafd6a5bc4bcdd659a4b6ed8a2db65aef693dc91dc8`  
		Last Modified: Thu, 02 Nov 2017 23:18:36 GMT  
		Size: 6.8 MB (6783615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35b77f411bbe70712464106fe2a656e75e968508a6c02c454b1c20014d74f4`  
		Last Modified: Thu, 02 Nov 2017 23:18:34 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06a1ecb1b02b6205f6e7de8d6a97dec9b0c9ba93d939a7294c92dfa03deb05e`  
		Last Modified: Thu, 02 Nov 2017 23:18:32 GMT  
		Size: 925.6 KB (925571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1753bdd8532caba88b840a32c7b1bbdd16f8234bdc88a6774b4f4140834eb72e`  
		Last Modified: Thu, 02 Nov 2017 23:18:33 GMT  
		Size: 6.6 MB (6577778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b30a86a5255b95208c7afe87cbf67686bb92e27c270c2834dec1a946ba6309`  
		Last Modified: Thu, 02 Nov 2017 23:18:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d02c734343c1dc373e7fe7c932f1f5bdc394879543b889e2c2d497a64099`  
		Last Modified: Thu, 02 Nov 2017 23:18:31 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d92752e85abfa137004731189f9988f90db36597d64a4d441b6c71ac91ff50`  
		Last Modified: Wed, 15 Nov 2017 22:06:44 GMT  
		Size: 56.9 MB (56945776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8aa56d7694556600a26bfbf39e37e1467f4cbbc0f38d2973217aee7fb8c5704`  
		Last Modified: Wed, 15 Nov 2017 22:06:27 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9e1f66517bbb78445b4ce71e73c66a40108b47b2ed0447f9a16a4611423fa0`  
		Last Modified: Wed, 15 Nov 2017 22:06:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451ff1693ec8bc841a9d0f12a7a51e51b320eecd426d8682e3e4d7e17b81e910`  
		Last Modified: Wed, 15 Nov 2017 22:06:27 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a5b0ece4b4033abb0c6c3fdc322c075dd1165339bd9387826ad65931aa3f07`  
		Last Modified: Thu, 16 Nov 2017 23:02:04 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f26502774115d4bc30a0e3ba432810e5592ab28176c47261b9f35dc9ad21c84`  
		Last Modified: Thu, 16 Nov 2017 23:02:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:1227ba0de6c5514ec08af3092d2fdefcc6555a9fd1a709c969d7a0d5f207bec5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57686380d2563db1c8f553cc3dc3a496ab37308755d4342c969b5b99cbdbaa46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 09:25:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:25:49 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 03 Nov 2017 09:25:49 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 09:26:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 09:26:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 03 Nov 2017 09:26:07 GMT
ENV LANG=en_US.utf8
# Fri, 03 Nov 2017 09:26:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 09:26:11 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 09:26:11 GMT
ENV PG_MAJOR=10
# Tue, 14 Nov 2017 10:25:37 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Tue, 14 Nov 2017 10:35:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 14 Nov 2017 10:35:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 14 Nov 2017 10:35:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 14 Nov 2017 10:35:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 14 Nov 2017 10:35:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Nov 2017 10:35:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 14 Nov 2017 10:35:51 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 16 Nov 2017 10:25:36 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:25:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 10:25:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 10:25:38 GMT
EXPOSE 5432/tcp
# Thu, 16 Nov 2017 10:25:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b1fe28bfde608f5f308633a28245b5d2db64cf1fa719a6699406eec0371bfc`  
		Last Modified: Fri, 03 Nov 2017 10:12:00 GMT  
		Size: 7.0 MB (6952724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465a4c0d5a36ff8deee95627311cd321d05be560de2dbb5710ace72c5cf528b7`  
		Last Modified: Fri, 03 Nov 2017 10:11:58 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b97f44e605445ae839b25534df29b996749daaa2447a4e768347da2055b69e`  
		Last Modified: Fri, 03 Nov 2017 10:11:58 GMT  
		Size: 942.3 KB (942322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7ff9ca4ba12ff4ec14a9a8ab655baa4229eaf7d65e5203ca432cc8379f191c`  
		Last Modified: Fri, 03 Nov 2017 10:12:00 GMT  
		Size: 6.6 MB (6598541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ab164d28097f8dd6adb06a8a68aa2da9e42e926c6afe3ef769e10f03527c8d`  
		Last Modified: Fri, 03 Nov 2017 10:11:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0dc31541d1fb4ec570c09916c8ee293241678e1ff04532b7fa975fb6982141`  
		Last Modified: Fri, 03 Nov 2017 10:11:57 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851d3d656ffd76b73b32ddc3650d0169475d79f10f502dd90a829f93eb5d37b5`  
		Last Modified: Tue, 14 Nov 2017 11:13:01 GMT  
		Size: 59.4 MB (59405367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba2521c6712ff5e726a6000823c6035881fb527dfbee8ca9d9ab5d190d93c97`  
		Last Modified: Tue, 14 Nov 2017 11:12:51 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193fc952bf3a0b59da2ad1f5b0906b556f65f1b7490c2a810cfe5fc8752e98ae`  
		Last Modified: Tue, 14 Nov 2017 11:12:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908a8fafced46d7c806a447072d1999c4b79c4c2fa2e73231866794e4fc490c2`  
		Last Modified: Tue, 14 Nov 2017 11:12:50 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a38f4227aaa1d3d00c5a3981d5c0e1c078064758277bb22d39fca0358bc2c4`  
		Last Modified: Thu, 16 Nov 2017 10:26:08 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b5e5d8a2c5780e6239d57119831e3668bb6c95d928a27f3c8f7e82b37f7f67`  
		Last Modified: Thu, 16 Nov 2017 10:26:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
