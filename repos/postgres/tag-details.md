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
$ docker pull postgres@sha256:8a5fff9bcd648362e75021e92e9392c3947ffd868d5b07291b980328fd79d567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `postgres:10` - linux; amd64

```console
$ docker pull postgres@sha256:bfdb5cecec046e2dafa9a8ef4b669e6802f8abe59c7575451f0d5e60e033dfb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116700618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a2d73f5ce34a9d247f21b9f0006cf6c7bbcfdc38aaa266db7475cebf9f41e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:05:00 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:05:00 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:05:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:05:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:05:19 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:05:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:05:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:05:24 GMT
ENV PG_MAJOR=10
# Mon, 13 Nov 2017 16:12:18 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Mon, 13 Nov 2017 16:12:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:12:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:12:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:12:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Mon, 13 Nov 2017 16:12:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:12:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:12:46 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:12:47 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:12:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:12:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:12:48 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:12:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb9dc1cfcb8dafd437c65277f42e0af7f8502719bb16da96fe1e13996bd8b97`  
		Last Modified: Sat, 04 Nov 2017 09:25:14 GMT  
		Size: 6.9 MB (6920873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a344e5b3663cf66a215586c9fdbd5970238c770e6465d08fdf94e1260424f90`  
		Last Modified: Sat, 04 Nov 2017 09:25:12 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d619f9c5def65be41397e463680af16265e32e772803735003762d31aa9fddbe`  
		Last Modified: Sat, 04 Nov 2017 09:25:10 GMT  
		Size: 956.6 KB (956618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225b82de1e67b15d2c2f7466adc913671fbf250b71eb2c1ba42fe4eb38b355f2`  
		Last Modified: Sat, 04 Nov 2017 09:25:12 GMT  
		Size: 6.6 MB (6577399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10daa23c1d9a637911b241e4e6843df129ced1120596e90af0726ae319f72d5b`  
		Last Modified: Sat, 04 Nov 2017 09:25:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba4a4b2d69b010325ff1e86b9dd839dcfc2f7772405d47e79ea86817abfb2d0`  
		Last Modified: Sat, 04 Nov 2017 09:25:09 GMT  
		Size: 4.5 KB (4479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7138e38f64336fee4993b5937ae7b1fbaf4caaddda6f3ab9898d47cbf3355a69`  
		Last Modified: Mon, 13 Nov 2017 16:35:19 GMT  
		Size: 57.1 MB (57100775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d473ec94c4ae89dc06f31f1fdfeb439a3ae6112541873a72141ce8d3efc36b0`  
		Last Modified: Mon, 13 Nov 2017 16:35:04 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f370795820a4e739545e5a586f8165366c9558c21aff4cb9b507aae535aa4a2`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9d4bbd031377870060bc265e3286b881e36e9d86873a18b5cf3c4ff6c8ae91`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d38c1cd82817cd160d53e30389d141759d8cbce6ae7848bb51f62dbd317ef6`  
		Last Modified: Mon, 13 Nov 2017 16:35:03 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884c0b44a64a801c1c55e40b959e3cb0fc49a437c00c00c3573138c672afaeaa`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v7

```console
$ docker pull postgres@sha256:b8c2e5345eb1b99f67882798575770a2d99a0740202460f7705002d9cf90e5c5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111941353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a1b0fcd558fb91869693d5e950e75a8272cf3b985d733004ffdde2fd2bd5cb`
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
# Tue, 14 Nov 2017 04:55:29 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 04:55:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 04:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 04:55:30 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 04:55:30 GMT
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
	-	`sha256:c8ec06b3158f23458b81cbfe07eeca7f2301f5c84b49528c62196b444a2dc943`  
		Last Modified: Tue, 14 Nov 2017 06:02:21 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4109cf3d6eebc1e370f135355c27b872f4bd8910c5d8565ef4c56f8ebb9f14ac`  
		Last Modified: Tue, 14 Nov 2017 06:02:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.1`

```console
$ docker pull postgres@sha256:8a5fff9bcd648362e75021e92e9392c3947ffd868d5b07291b980328fd79d567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `postgres:10.1` - linux; amd64

```console
$ docker pull postgres@sha256:bfdb5cecec046e2dafa9a8ef4b669e6802f8abe59c7575451f0d5e60e033dfb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116700618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a2d73f5ce34a9d247f21b9f0006cf6c7bbcfdc38aaa266db7475cebf9f41e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:05:00 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:05:00 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:05:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:05:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:05:19 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:05:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:05:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:05:24 GMT
ENV PG_MAJOR=10
# Mon, 13 Nov 2017 16:12:18 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Mon, 13 Nov 2017 16:12:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:12:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:12:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:12:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Mon, 13 Nov 2017 16:12:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:12:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:12:46 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:12:47 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:12:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:12:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:12:48 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:12:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb9dc1cfcb8dafd437c65277f42e0af7f8502719bb16da96fe1e13996bd8b97`  
		Last Modified: Sat, 04 Nov 2017 09:25:14 GMT  
		Size: 6.9 MB (6920873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a344e5b3663cf66a215586c9fdbd5970238c770e6465d08fdf94e1260424f90`  
		Last Modified: Sat, 04 Nov 2017 09:25:12 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d619f9c5def65be41397e463680af16265e32e772803735003762d31aa9fddbe`  
		Last Modified: Sat, 04 Nov 2017 09:25:10 GMT  
		Size: 956.6 KB (956618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225b82de1e67b15d2c2f7466adc913671fbf250b71eb2c1ba42fe4eb38b355f2`  
		Last Modified: Sat, 04 Nov 2017 09:25:12 GMT  
		Size: 6.6 MB (6577399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10daa23c1d9a637911b241e4e6843df129ced1120596e90af0726ae319f72d5b`  
		Last Modified: Sat, 04 Nov 2017 09:25:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba4a4b2d69b010325ff1e86b9dd839dcfc2f7772405d47e79ea86817abfb2d0`  
		Last Modified: Sat, 04 Nov 2017 09:25:09 GMT  
		Size: 4.5 KB (4479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7138e38f64336fee4993b5937ae7b1fbaf4caaddda6f3ab9898d47cbf3355a69`  
		Last Modified: Mon, 13 Nov 2017 16:35:19 GMT  
		Size: 57.1 MB (57100775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d473ec94c4ae89dc06f31f1fdfeb439a3ae6112541873a72141ce8d3efc36b0`  
		Last Modified: Mon, 13 Nov 2017 16:35:04 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f370795820a4e739545e5a586f8165366c9558c21aff4cb9b507aae535aa4a2`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9d4bbd031377870060bc265e3286b881e36e9d86873a18b5cf3c4ff6c8ae91`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d38c1cd82817cd160d53e30389d141759d8cbce6ae7848bb51f62dbd317ef6`  
		Last Modified: Mon, 13 Nov 2017 16:35:03 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884c0b44a64a801c1c55e40b959e3cb0fc49a437c00c00c3573138c672afaeaa`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1` - linux; arm variant v7

```console
$ docker pull postgres@sha256:b8c2e5345eb1b99f67882798575770a2d99a0740202460f7705002d9cf90e5c5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111941353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a1b0fcd558fb91869693d5e950e75a8272cf3b985d733004ffdde2fd2bd5cb`
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
# Tue, 14 Nov 2017 04:55:29 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 14 Nov 2017 04:55:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 04:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 04:55:30 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 04:55:30 GMT
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
	-	`sha256:c8ec06b3158f23458b81cbfe07eeca7f2301f5c84b49528c62196b444a2dc943`  
		Last Modified: Tue, 14 Nov 2017 06:02:21 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4109cf3d6eebc1e370f135355c27b872f4bd8910c5d8565ef4c56f8ebb9f14ac`  
		Last Modified: Tue, 14 Nov 2017 06:02:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.1-alpine`

```console
$ docker pull postgres@sha256:7f1d3dd0346720c0787aeadeb6f3d9214465f72874ee5d5afbfeec58034f3c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `postgres:10.1-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:9c14f0c5d686d00fc28c8264c98016ef7076119340d09ad270876eb746fb3a4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14359979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3cbcca46ba457ed816c28c8631e681105e7a26c9b12ee47bab5239b08b3e5d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:06:02 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:06:02 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:06:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:06:03 GMT
ENV PG_MAJOR=10
# Mon, 13 Nov 2017 16:12:55 GMT
ENV PG_VERSION=10.1
# Mon, 13 Nov 2017 16:12:55 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Mon, 13 Nov 2017 16:16:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:16:20 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:16:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:16:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:16:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:16:22 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:16:22 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:16:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:16:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:16:24 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:16:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa78197d3423d8feaa8568548d72a7d3d37ffd4d462d1d662aeab098fcf4a697`  
		Last Modified: Sat, 04 Nov 2017 09:25:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908e39998270936a8ee6025396468a0b8dc2920669cc7a727d22c688026992bb`  
		Last Modified: Sat, 04 Nov 2017 09:25:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d840019f7f1528ffc3410455492bb503d412659605a133b77da304ca8bf9530`  
		Last Modified: Mon, 13 Nov 2017 16:35:54 GMT  
		Size: 12.4 MB (12358768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5e5a62d59e6d5c37c8d27bdc89676e56b73e55ff52eacac94386c3eb1169be`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f35a35a53be982a7ee5825f1c5c55060fb122d7cb6be7726e58b4fb27e7fe50`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd490dee6dfe3c58fa1be19e53c1e9a7a549cb6b1a4307eb145b286303a7b7e`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021c734743f3c3261a792ecca958c8d24485cecd6c78bb644060b79118e93228`  
		Last Modified: Mon, 13 Nov 2017 16:35:47 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707f5fec529f148d691bbc356742c0567a1a7904c50edaf09053ac1d902d9a80`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.1-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:cfaa38cbbe300ef535d12871d48f75b6da1a70f25089da1f6f20914d57d5fd12
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14081737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dbc6bc01151db59a9aafb611c8ed4d768f1e53f3434cf452072d1493c5eb9f4`
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
# Tue, 14 Nov 2017 00:38:02 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 14 Nov 2017 00:38:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 00:38:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 00:38:03 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 00:38:03 GMT
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
	-	`sha256:bb13a0bf35927f764003e65e8f2a0458dfcd149ebc430bfea8401c2454a833ce`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6074640474a098be6203584d57933766400f0d8b25c3326e3947f310a02841`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:7f1d3dd0346720c0787aeadeb6f3d9214465f72874ee5d5afbfeec58034f3c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:9c14f0c5d686d00fc28c8264c98016ef7076119340d09ad270876eb746fb3a4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14359979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3cbcca46ba457ed816c28c8631e681105e7a26c9b12ee47bab5239b08b3e5d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:06:02 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:06:02 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:06:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:06:03 GMT
ENV PG_MAJOR=10
# Mon, 13 Nov 2017 16:12:55 GMT
ENV PG_VERSION=10.1
# Mon, 13 Nov 2017 16:12:55 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Mon, 13 Nov 2017 16:16:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:16:20 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:16:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:16:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:16:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:16:22 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:16:22 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:16:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:16:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:16:24 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:16:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa78197d3423d8feaa8568548d72a7d3d37ffd4d462d1d662aeab098fcf4a697`  
		Last Modified: Sat, 04 Nov 2017 09:25:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908e39998270936a8ee6025396468a0b8dc2920669cc7a727d22c688026992bb`  
		Last Modified: Sat, 04 Nov 2017 09:25:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d840019f7f1528ffc3410455492bb503d412659605a133b77da304ca8bf9530`  
		Last Modified: Mon, 13 Nov 2017 16:35:54 GMT  
		Size: 12.4 MB (12358768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5e5a62d59e6d5c37c8d27bdc89676e56b73e55ff52eacac94386c3eb1169be`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f35a35a53be982a7ee5825f1c5c55060fb122d7cb6be7726e58b4fb27e7fe50`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd490dee6dfe3c58fa1be19e53c1e9a7a549cb6b1a4307eb145b286303a7b7e`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021c734743f3c3261a792ecca958c8d24485cecd6c78bb644060b79118e93228`  
		Last Modified: Mon, 13 Nov 2017 16:35:47 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707f5fec529f148d691bbc356742c0567a1a7904c50edaf09053ac1d902d9a80`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:cfaa38cbbe300ef535d12871d48f75b6da1a70f25089da1f6f20914d57d5fd12
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14081737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dbc6bc01151db59a9aafb611c8ed4d768f1e53f3434cf452072d1493c5eb9f4`
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
# Tue, 14 Nov 2017 00:38:02 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 14 Nov 2017 00:38:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 00:38:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 00:38:03 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 00:38:03 GMT
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
	-	`sha256:bb13a0bf35927f764003e65e8f2a0458dfcd149ebc430bfea8401c2454a833ce`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6074640474a098be6203584d57933766400f0d8b25c3326e3947f310a02841`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:e90da5e8a31c9a32ffac861181aea4eab645a3ed2ec14bac118244ed067a7fe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `postgres:9` - linux; amd64

```console
$ docker pull postgres@sha256:f0cf3de75710c665f79a74ab58e148603e7bc602852ab69735e776791db1d163
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104121735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ac03f9698da9c2f9ec42633d7bfab610f4878f1e44f3d22a286272b2dddb61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:09:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:09:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:09:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:09:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:09:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:09:43 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:09:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:09:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:09:46 GMT
ENV PG_MAJOR=9.6
# Mon, 13 Nov 2017 16:16:37 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Mon, 13 Nov 2017 16:17:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:17:23 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:17:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:17:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Mon, 13 Nov 2017 16:17:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:17:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:17:25 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:17:26 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:17:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:17:27 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:17:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4904bea61e3df3c6da7d464cb7aa7d2bbf1b52a4c5d819b1052918dc46f01b`  
		Last Modified: Sat, 04 Nov 2017 09:26:07 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fb981a71b75575051a35b50311109bb5a2510ff5b89f211c6cc1a01094794d`  
		Last Modified: Sat, 04 Nov 2017 09:26:06 GMT  
		Size: 985.1 KB (985130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dda1edd3e9b0a2e41141cc729ffb54fac25325137e351d8d1b217ff6e107bef`  
		Last Modified: Sat, 04 Nov 2017 09:26:08 GMT  
		Size: 7.1 MB (7112854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea002fc82805cce446210b8a1849887cbc92eb44a7f97d89d118b65423cd2e7`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feade6b1bbebb127f07f168f08f0f9b5ac006a436ae4fa34287d28cb099a9a1d`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d09e38e8d75b108131223968cd70535c236153a818200a5a924bbc0495e54e8`  
		Last Modified: Mon, 13 Nov 2017 16:36:26 GMT  
		Size: 43.4 MB (43412591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4315c4ea2dab17f67ce27ea1da98f346cd64ee1bae8091833518e5f73dcb915`  
		Last Modified: Mon, 13 Nov 2017 16:36:18 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83300d46c9a2ba627c8cd9390a643daac3e164d0d8f15f6c448c3a749b7fb176`  
		Last Modified: Mon, 13 Nov 2017 16:36:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5e0ecd572052cc3d45a3b1c8653c2bd3d9a7eda385a33017c31a4ff7df6cc`  
		Last Modified: Mon, 13 Nov 2017 16:36:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f110ffb0f56184af0e3c26eef424c9fed224a1137e55601b80c8dd9e550213`  
		Last Modified: Mon, 13 Nov 2017 16:36:16 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528f73e31b5de74fc0516a996416e5aab4c7600c9e952cb79167edff8ea0313b`  
		Last Modified: Mon, 13 Nov 2017 16:36:17 GMT  
		Size: 120.0 B  
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

## `postgres:9.3`

```console
$ docker pull postgres@sha256:5cf95c051053ad183277436c154d44cba79ebbbe4984edd3aca8608f6f6808cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `postgres:9.3` - linux; amd64

```console
$ docker pull postgres@sha256:b404e1fdc1ca7fa7eaa9e4ab3fef74d0ca539e6795a88a57b4a29e5acd7b98be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102868840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e111d57061465f61760c5f0fb7aa37d73671db6c0c9bbb9eb34420c8a95a33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:09:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:09:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:09:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:09:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:09:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:09:43 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:09:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:09:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:21:33 GMT
ENV PG_MAJOR=9.3
# Mon, 13 Nov 2017 16:30:43 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Mon, 13 Nov 2017 16:31:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:31:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:31:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:31:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Mon, 13 Nov 2017 16:31:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:31:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:31:29 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:31:29 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:31:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:31:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:31:30 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:31:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4904bea61e3df3c6da7d464cb7aa7d2bbf1b52a4c5d819b1052918dc46f01b`  
		Last Modified: Sat, 04 Nov 2017 09:26:07 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fb981a71b75575051a35b50311109bb5a2510ff5b89f211c6cc1a01094794d`  
		Last Modified: Sat, 04 Nov 2017 09:26:06 GMT  
		Size: 985.1 KB (985130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dda1edd3e9b0a2e41141cc729ffb54fac25325137e351d8d1b217ff6e107bef`  
		Last Modified: Sat, 04 Nov 2017 09:26:08 GMT  
		Size: 7.1 MB (7112854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea002fc82805cce446210b8a1849887cbc92eb44a7f97d89d118b65423cd2e7`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feade6b1bbebb127f07f168f08f0f9b5ac006a436ae4fa34287d28cb099a9a1d`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92126c43c189641dc4f203f72be280e34dc11e177cb6104327539456a6c894cd`  
		Last Modified: Mon, 13 Nov 2017 16:39:27 GMT  
		Size: 42.2 MB (42160300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bf94bc096b6949e371fe374e94283b1fa9c01c9a4698905f2b672bf432b932`  
		Last Modified: Mon, 13 Nov 2017 16:39:18 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009703c45d0079653d19aaa876aabb9b10ef6ee7f99c18c6767f1af7a848550e`  
		Last Modified: Mon, 13 Nov 2017 16:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ffd33834bec92338aae1bc0d76f6ba745ae5a70044b451cf02aa915e15558e`  
		Last Modified: Mon, 13 Nov 2017 16:39:17 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5da6ddc1d779dfc8f1a77ddb5818afeed104395f33680bd00dbb4f216df1de`  
		Last Modified: Mon, 13 Nov 2017 16:39:18 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e81709691e79d008d9a72f779221d9b129a183e5eda7647c5efe3fbdfaa805`  
		Last Modified: Mon, 13 Nov 2017 16:39:17 GMT  
		Size: 120.0 B  
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

## `postgres:9.3.20`

```console
$ docker pull postgres@sha256:5cf95c051053ad183277436c154d44cba79ebbbe4984edd3aca8608f6f6808cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `postgres:9.3.20` - linux; amd64

```console
$ docker pull postgres@sha256:b404e1fdc1ca7fa7eaa9e4ab3fef74d0ca539e6795a88a57b4a29e5acd7b98be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102868840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e111d57061465f61760c5f0fb7aa37d73671db6c0c9bbb9eb34420c8a95a33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:09:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:09:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:09:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:09:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:09:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:09:43 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:09:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:09:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:21:33 GMT
ENV PG_MAJOR=9.3
# Mon, 13 Nov 2017 16:30:43 GMT
ENV PG_VERSION=9.3.20-1.pgdg80+1
# Mon, 13 Nov 2017 16:31:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:31:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:31:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:31:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Mon, 13 Nov 2017 16:31:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:31:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:31:29 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:31:29 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:31:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:31:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:31:30 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:31:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4904bea61e3df3c6da7d464cb7aa7d2bbf1b52a4c5d819b1052918dc46f01b`  
		Last Modified: Sat, 04 Nov 2017 09:26:07 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fb981a71b75575051a35b50311109bb5a2510ff5b89f211c6cc1a01094794d`  
		Last Modified: Sat, 04 Nov 2017 09:26:06 GMT  
		Size: 985.1 KB (985130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dda1edd3e9b0a2e41141cc729ffb54fac25325137e351d8d1b217ff6e107bef`  
		Last Modified: Sat, 04 Nov 2017 09:26:08 GMT  
		Size: 7.1 MB (7112854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea002fc82805cce446210b8a1849887cbc92eb44a7f97d89d118b65423cd2e7`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feade6b1bbebb127f07f168f08f0f9b5ac006a436ae4fa34287d28cb099a9a1d`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92126c43c189641dc4f203f72be280e34dc11e177cb6104327539456a6c894cd`  
		Last Modified: Mon, 13 Nov 2017 16:39:27 GMT  
		Size: 42.2 MB (42160300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bf94bc096b6949e371fe374e94283b1fa9c01c9a4698905f2b672bf432b932`  
		Last Modified: Mon, 13 Nov 2017 16:39:18 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009703c45d0079653d19aaa876aabb9b10ef6ee7f99c18c6767f1af7a848550e`  
		Last Modified: Mon, 13 Nov 2017 16:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ffd33834bec92338aae1bc0d76f6ba745ae5a70044b451cf02aa915e15558e`  
		Last Modified: Mon, 13 Nov 2017 16:39:17 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5da6ddc1d779dfc8f1a77ddb5818afeed104395f33680bd00dbb4f216df1de`  
		Last Modified: Mon, 13 Nov 2017 16:39:18 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e81709691e79d008d9a72f779221d9b129a183e5eda7647c5efe3fbdfaa805`  
		Last Modified: Mon, 13 Nov 2017 16:39:17 GMT  
		Size: 120.0 B  
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

## `postgres:9.3.20-alpine`

```console
$ docker pull postgres@sha256:f04af1bdb35da5edfcbc13d359a8589f68aef15709dd6835134c4e6e20a106dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3.20-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:00e1f7dfed1ccdc3a2fbf3eb8575ff8deee7009a102befe8438321d986488d3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13977485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fd0e06be24af0bc9fcf602013818b7ece0899a7f62519467a2fc4fbc9e21d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:10:49 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:10:49 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:10:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:22:21 GMT
ENV PG_MAJOR=9.3
# Mon, 13 Nov 2017 16:31:44 GMT
ENV PG_VERSION=9.3.20
# Mon, 13 Nov 2017 16:31:45 GMT
ENV PG_SHA256=eb138ad67075b8acb4fae56e98ca7be5d85f3da0ba658fc48206834598a2e6ca
# Mon, 13 Nov 2017 16:31:45 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Mon, 13 Nov 2017 16:31:45 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Mon, 13 Nov 2017 16:34:38 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:34:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:34:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:34:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:34:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:34:40 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:34:40 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:34:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:34:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:34:41 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:34:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a88a2feda9fd9c11a4e26126bdb3c7b35e03f06fc60232e8146ab66c6e3fbe`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd866a92fb72cb1d8102afcef8d01e8751f657b317d150bfaa34a8fe61b2f11`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909b8bd884a4a180d3c21ff69e273a60f989ab22454f29d7817d7344e9944beb`  
		Last Modified: Mon, 13 Nov 2017 16:39:54 GMT  
		Size: 12.0 MB (11998262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6584d6b7bdcb648f150f840d46633f602f5118c084c5bcc4e6bf913f608640`  
		Last Modified: Mon, 13 Nov 2017 16:39:48 GMT  
		Size: 6.5 KB (6476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384f5a682bca5e3e1bd7443a339aa367008211d03a7e4edb3d8bd74dec96b8b`  
		Last Modified: Mon, 13 Nov 2017 16:39:48 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bbb49f09c2e3fa1add3427802aaa504748e8ba699577a81d4239ee2c59c574`  
		Last Modified: Mon, 13 Nov 2017 16:39:48 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacabdf42cdd9dfa40602c44c03e436c6b4732e688e6d261bb96d303465cdf3e`  
		Last Modified: Mon, 13 Nov 2017 16:39:48 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60873fac975712b99320193bdd2ce0e136916ba4488f1b990f72504b90ab4e71`  
		Last Modified: Mon, 13 Nov 2017 16:39:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:f04af1bdb35da5edfcbc13d359a8589f68aef15709dd6835134c4e6e20a106dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:00e1f7dfed1ccdc3a2fbf3eb8575ff8deee7009a102befe8438321d986488d3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13977485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fd0e06be24af0bc9fcf602013818b7ece0899a7f62519467a2fc4fbc9e21d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:10:49 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:10:49 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:10:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:22:21 GMT
ENV PG_MAJOR=9.3
# Mon, 13 Nov 2017 16:31:44 GMT
ENV PG_VERSION=9.3.20
# Mon, 13 Nov 2017 16:31:45 GMT
ENV PG_SHA256=eb138ad67075b8acb4fae56e98ca7be5d85f3da0ba658fc48206834598a2e6ca
# Mon, 13 Nov 2017 16:31:45 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Mon, 13 Nov 2017 16:31:45 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Mon, 13 Nov 2017 16:34:38 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:34:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:34:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:34:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:34:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:34:40 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:34:40 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:34:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:34:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:34:41 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:34:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a88a2feda9fd9c11a4e26126bdb3c7b35e03f06fc60232e8146ab66c6e3fbe`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd866a92fb72cb1d8102afcef8d01e8751f657b317d150bfaa34a8fe61b2f11`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909b8bd884a4a180d3c21ff69e273a60f989ab22454f29d7817d7344e9944beb`  
		Last Modified: Mon, 13 Nov 2017 16:39:54 GMT  
		Size: 12.0 MB (11998262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6584d6b7bdcb648f150f840d46633f602f5118c084c5bcc4e6bf913f608640`  
		Last Modified: Mon, 13 Nov 2017 16:39:48 GMT  
		Size: 6.5 KB (6476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384f5a682bca5e3e1bd7443a339aa367008211d03a7e4edb3d8bd74dec96b8b`  
		Last Modified: Mon, 13 Nov 2017 16:39:48 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bbb49f09c2e3fa1add3427802aaa504748e8ba699577a81d4239ee2c59c574`  
		Last Modified: Mon, 13 Nov 2017 16:39:48 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacabdf42cdd9dfa40602c44c03e436c6b4732e688e6d261bb96d303465cdf3e`  
		Last Modified: Mon, 13 Nov 2017 16:39:48 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60873fac975712b99320193bdd2ce0e136916ba4488f1b990f72504b90ab4e71`  
		Last Modified: Mon, 13 Nov 2017 16:39:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:d5afc9bd7f44daea072cbbd708f83a9c2715b13cf23a185f2e84f0c443e42199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `postgres:9.4` - linux; amd64

```console
$ docker pull postgres@sha256:d8c092208f9a9a0a8b9cc14b165d693f0f00f440f3a82bd357345fb9fb2ffaa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103237229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce7841129ec726d528ac01cbfd2486a4c4e214a2c20da883b59d22ba9bf90d1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:09:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:09:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:09:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:09:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:09:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:09:43 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:09:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:09:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:17:51 GMT
ENV PG_MAJOR=9.4
# Mon, 13 Nov 2017 16:26:16 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Mon, 13 Nov 2017 16:27:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:27:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:27:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:27:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Mon, 13 Nov 2017 16:27:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:27:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:27:04 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:27:04 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:27:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:27:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:27:06 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:27:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4904bea61e3df3c6da7d464cb7aa7d2bbf1b52a4c5d819b1052918dc46f01b`  
		Last Modified: Sat, 04 Nov 2017 09:26:07 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fb981a71b75575051a35b50311109bb5a2510ff5b89f211c6cc1a01094794d`  
		Last Modified: Sat, 04 Nov 2017 09:26:06 GMT  
		Size: 985.1 KB (985130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dda1edd3e9b0a2e41141cc729ffb54fac25325137e351d8d1b217ff6e107bef`  
		Last Modified: Sat, 04 Nov 2017 09:26:08 GMT  
		Size: 7.1 MB (7112854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea002fc82805cce446210b8a1849887cbc92eb44a7f97d89d118b65423cd2e7`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feade6b1bbebb127f07f168f08f0f9b5ac006a436ae4fa34287d28cb099a9a1d`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607ca1fe9aeca255ddffb97578533d5651d4bc99d8361597e5d91ddc16346334`  
		Last Modified: Mon, 13 Nov 2017 16:38:37 GMT  
		Size: 42.5 MB (42528507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb78c8b8ea023c9245e2a95b1c0085c0792ab443e12e5ef32a7bf34bd103cad0`  
		Last Modified: Mon, 13 Nov 2017 16:38:24 GMT  
		Size: 6.7 KB (6690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974ec94ee6bff40a504ca8e892222e4f7f777da477eac90c4b602a22681d44fc`  
		Last Modified: Mon, 13 Nov 2017 16:38:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91680439c4dd8244f141a8099abe09e6d37613eeb7f092770213094c64a0ad37`  
		Last Modified: Mon, 13 Nov 2017 16:38:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfdc449fca817a41813b8af20b9e43f908fe01bb9762ddc05396d76d7b328f6`  
		Last Modified: Mon, 13 Nov 2017 16:38:24 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b082a7495fbaaef1c9c15a245715ed9c2fb302a7d9b5007fcf9a06b77c932f`  
		Last Modified: Mon, 13 Nov 2017 16:38:25 GMT  
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

## `postgres:9.4.15`

```console
$ docker pull postgres@sha256:d5afc9bd7f44daea072cbbd708f83a9c2715b13cf23a185f2e84f0c443e42199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `postgres:9.4.15` - linux; amd64

```console
$ docker pull postgres@sha256:d8c092208f9a9a0a8b9cc14b165d693f0f00f440f3a82bd357345fb9fb2ffaa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103237229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce7841129ec726d528ac01cbfd2486a4c4e214a2c20da883b59d22ba9bf90d1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:09:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:09:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:09:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:09:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:09:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:09:43 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:09:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:09:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:17:51 GMT
ENV PG_MAJOR=9.4
# Mon, 13 Nov 2017 16:26:16 GMT
ENV PG_VERSION=9.4.15-1.pgdg80+1
# Mon, 13 Nov 2017 16:27:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:27:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:27:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:27:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Mon, 13 Nov 2017 16:27:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:27:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:27:04 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:27:04 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:27:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:27:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:27:06 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:27:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4904bea61e3df3c6da7d464cb7aa7d2bbf1b52a4c5d819b1052918dc46f01b`  
		Last Modified: Sat, 04 Nov 2017 09:26:07 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fb981a71b75575051a35b50311109bb5a2510ff5b89f211c6cc1a01094794d`  
		Last Modified: Sat, 04 Nov 2017 09:26:06 GMT  
		Size: 985.1 KB (985130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dda1edd3e9b0a2e41141cc729ffb54fac25325137e351d8d1b217ff6e107bef`  
		Last Modified: Sat, 04 Nov 2017 09:26:08 GMT  
		Size: 7.1 MB (7112854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea002fc82805cce446210b8a1849887cbc92eb44a7f97d89d118b65423cd2e7`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feade6b1bbebb127f07f168f08f0f9b5ac006a436ae4fa34287d28cb099a9a1d`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607ca1fe9aeca255ddffb97578533d5651d4bc99d8361597e5d91ddc16346334`  
		Last Modified: Mon, 13 Nov 2017 16:38:37 GMT  
		Size: 42.5 MB (42528507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb78c8b8ea023c9245e2a95b1c0085c0792ab443e12e5ef32a7bf34bd103cad0`  
		Last Modified: Mon, 13 Nov 2017 16:38:24 GMT  
		Size: 6.7 KB (6690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974ec94ee6bff40a504ca8e892222e4f7f777da477eac90c4b602a22681d44fc`  
		Last Modified: Mon, 13 Nov 2017 16:38:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91680439c4dd8244f141a8099abe09e6d37613eeb7f092770213094c64a0ad37`  
		Last Modified: Mon, 13 Nov 2017 16:38:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfdc449fca817a41813b8af20b9e43f908fe01bb9762ddc05396d76d7b328f6`  
		Last Modified: Mon, 13 Nov 2017 16:38:24 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b082a7495fbaaef1c9c15a245715ed9c2fb302a7d9b5007fcf9a06b77c932f`  
		Last Modified: Mon, 13 Nov 2017 16:38:25 GMT  
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

## `postgres:9.4.15-alpine`

```console
$ docker pull postgres@sha256:7b05ad500b88a2e56297ec36ee82d9cbf31c373f2af1c2acca8c03868efa13e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.15-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:b12057564f3c195ae7c4ca06e66dcfc5c3ad2d46de6b31f17888561a9e2ffc8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14265779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b9b69022f296501d4d9dd9d4f9c0243bf71530c16765c71c76174bae6deb53a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:10:49 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:10:49 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:10:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:18:39 GMT
ENV PG_MAJOR=9.4
# Mon, 13 Nov 2017 16:27:17 GMT
ENV PG_VERSION=9.4.15
# Mon, 13 Nov 2017 16:27:17 GMT
ENV PG_SHA256=12bfb3c7e8e45515ef921ad365e122682a5c4935dcc0032644433af2de31acc4
# Mon, 13 Nov 2017 16:30:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:30:26 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:30:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:30:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:30:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:30:28 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:30:28 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:30:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:30:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:30:29 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:30:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a88a2feda9fd9c11a4e26126bdb3c7b35e03f06fc60232e8146ab66c6e3fbe`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd866a92fb72cb1d8102afcef8d01e8751f657b317d150bfaa34a8fe61b2f11`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e286ff3aabeb4d025d56cbbc8c801abbd9bec2080f6591abba4b037ab2e19af`  
		Last Modified: Mon, 13 Nov 2017 16:38:59 GMT  
		Size: 12.3 MB (12286378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e5afea45d303d8bbd6f728b6231ba7b602bd03ed5c085458ad0f01da321990`  
		Last Modified: Mon, 13 Nov 2017 16:38:55 GMT  
		Size: 6.7 KB (6656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab10c1839e606a962df26b0eddafb413d5da9d5dc196f0235094f4e8f5e28c84`  
		Last Modified: Mon, 13 Nov 2017 16:38:55 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cc36d682a09640262ebc533946ce74111f8814e0b804a6f47f2bba7c49a006`  
		Last Modified: Mon, 13 Nov 2017 16:38:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaf52ecea22b079d386a969aad3838cc2fce98821cfccba4f54280a3137f587`  
		Last Modified: Mon, 13 Nov 2017 16:38:57 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2331402bebeab1cf05a36fbc5519f4c6b6b0ebe7fb3760f2c7066902fd7e87`  
		Last Modified: Mon, 13 Nov 2017 16:38:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:7b05ad500b88a2e56297ec36ee82d9cbf31c373f2af1c2acca8c03868efa13e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:b12057564f3c195ae7c4ca06e66dcfc5c3ad2d46de6b31f17888561a9e2ffc8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14265779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b9b69022f296501d4d9dd9d4f9c0243bf71530c16765c71c76174bae6deb53a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:10:49 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:10:49 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:10:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:18:39 GMT
ENV PG_MAJOR=9.4
# Mon, 13 Nov 2017 16:27:17 GMT
ENV PG_VERSION=9.4.15
# Mon, 13 Nov 2017 16:27:17 GMT
ENV PG_SHA256=12bfb3c7e8e45515ef921ad365e122682a5c4935dcc0032644433af2de31acc4
# Mon, 13 Nov 2017 16:30:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:30:26 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:30:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:30:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:30:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:30:28 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:30:28 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:30:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:30:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:30:29 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:30:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a88a2feda9fd9c11a4e26126bdb3c7b35e03f06fc60232e8146ab66c6e3fbe`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd866a92fb72cb1d8102afcef8d01e8751f657b317d150bfaa34a8fe61b2f11`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e286ff3aabeb4d025d56cbbc8c801abbd9bec2080f6591abba4b037ab2e19af`  
		Last Modified: Mon, 13 Nov 2017 16:38:59 GMT  
		Size: 12.3 MB (12286378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e5afea45d303d8bbd6f728b6231ba7b602bd03ed5c085458ad0f01da321990`  
		Last Modified: Mon, 13 Nov 2017 16:38:55 GMT  
		Size: 6.7 KB (6656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab10c1839e606a962df26b0eddafb413d5da9d5dc196f0235094f4e8f5e28c84`  
		Last Modified: Mon, 13 Nov 2017 16:38:55 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cc36d682a09640262ebc533946ce74111f8814e0b804a6f47f2bba7c49a006`  
		Last Modified: Mon, 13 Nov 2017 16:38:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaf52ecea22b079d386a969aad3838cc2fce98821cfccba4f54280a3137f587`  
		Last Modified: Mon, 13 Nov 2017 16:38:57 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2331402bebeab1cf05a36fbc5519f4c6b6b0ebe7fb3760f2c7066902fd7e87`  
		Last Modified: Mon, 13 Nov 2017 16:38:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:f8b6f1a7aa737d3884cd0df885229b0ad08c4e716d7f8f6d55ff69993a119ff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `postgres:9.5` - linux; amd64

```console
$ docker pull postgres@sha256:ac27f224443d1c649f7ae9b733fca33272a158a86af5c4a4ce1e041b26137c0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103579201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988f714a7307b0a874fb86ac1cbdfa0b8ccd43cdc25d8c860ff23690500efa93`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:09:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:09:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:09:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:09:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:09:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:09:43 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:09:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:09:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:13:42 GMT
ENV PG_MAJOR=9.5
# Mon, 13 Nov 2017 16:21:49 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Mon, 13 Nov 2017 16:22:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:22:38 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:22:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:22:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Mon, 13 Nov 2017 16:22:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:22:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:22:40 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:22:41 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:22:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:22:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:22:42 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:22:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4904bea61e3df3c6da7d464cb7aa7d2bbf1b52a4c5d819b1052918dc46f01b`  
		Last Modified: Sat, 04 Nov 2017 09:26:07 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fb981a71b75575051a35b50311109bb5a2510ff5b89f211c6cc1a01094794d`  
		Last Modified: Sat, 04 Nov 2017 09:26:06 GMT  
		Size: 985.1 KB (985130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dda1edd3e9b0a2e41141cc729ffb54fac25325137e351d8d1b217ff6e107bef`  
		Last Modified: Sat, 04 Nov 2017 09:26:08 GMT  
		Size: 7.1 MB (7112854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea002fc82805cce446210b8a1849887cbc92eb44a7f97d89d118b65423cd2e7`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feade6b1bbebb127f07f168f08f0f9b5ac006a436ae4fa34287d28cb099a9a1d`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5daa2f372ae182bd289d7a20211019b3840e09cbbfea32d8622e73f745138f8`  
		Last Modified: Mon, 13 Nov 2017 16:37:40 GMT  
		Size: 42.9 MB (42870330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5eb10d4ba0cd71b7448076aac42548e53f07dceb8ec872a652f5bfb5d208d1d`  
		Last Modified: Mon, 13 Nov 2017 16:37:28 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c68a4aed687ab33116a19004b5d8b17654e460f43698192aa4cb55786d80a1`  
		Last Modified: Mon, 13 Nov 2017 16:37:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33272beb0b809035cbc2d570370a0d1adad40381c0c2af8ed1f1ecda0c075e29`  
		Last Modified: Mon, 13 Nov 2017 16:37:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843aaf953c2aac2d76b4bc22d43f40a5b3a73c1afd57fdfbfd09716dfc6da8bf`  
		Last Modified: Mon, 13 Nov 2017 16:37:28 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24bad7a3ff939cdb96ba2fa6993289cc45ce8f3e1036883407ea978fe7b744a`  
		Last Modified: Mon, 13 Nov 2017 16:37:28 GMT  
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

## `postgres:9.5.10`

```console
$ docker pull postgres@sha256:f8b6f1a7aa737d3884cd0df885229b0ad08c4e716d7f8f6d55ff69993a119ff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `postgres:9.5.10` - linux; amd64

```console
$ docker pull postgres@sha256:ac27f224443d1c649f7ae9b733fca33272a158a86af5c4a4ce1e041b26137c0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103579201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988f714a7307b0a874fb86ac1cbdfa0b8ccd43cdc25d8c860ff23690500efa93`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:09:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:09:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:09:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:09:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:09:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:09:43 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:09:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:09:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:13:42 GMT
ENV PG_MAJOR=9.5
# Mon, 13 Nov 2017 16:21:49 GMT
ENV PG_VERSION=9.5.10-1.pgdg80+1
# Mon, 13 Nov 2017 16:22:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:22:38 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:22:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:22:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Mon, 13 Nov 2017 16:22:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:22:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:22:40 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:22:41 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:22:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:22:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:22:42 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:22:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4904bea61e3df3c6da7d464cb7aa7d2bbf1b52a4c5d819b1052918dc46f01b`  
		Last Modified: Sat, 04 Nov 2017 09:26:07 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fb981a71b75575051a35b50311109bb5a2510ff5b89f211c6cc1a01094794d`  
		Last Modified: Sat, 04 Nov 2017 09:26:06 GMT  
		Size: 985.1 KB (985130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dda1edd3e9b0a2e41141cc729ffb54fac25325137e351d8d1b217ff6e107bef`  
		Last Modified: Sat, 04 Nov 2017 09:26:08 GMT  
		Size: 7.1 MB (7112854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea002fc82805cce446210b8a1849887cbc92eb44a7f97d89d118b65423cd2e7`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feade6b1bbebb127f07f168f08f0f9b5ac006a436ae4fa34287d28cb099a9a1d`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5daa2f372ae182bd289d7a20211019b3840e09cbbfea32d8622e73f745138f8`  
		Last Modified: Mon, 13 Nov 2017 16:37:40 GMT  
		Size: 42.9 MB (42870330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5eb10d4ba0cd71b7448076aac42548e53f07dceb8ec872a652f5bfb5d208d1d`  
		Last Modified: Mon, 13 Nov 2017 16:37:28 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c68a4aed687ab33116a19004b5d8b17654e460f43698192aa4cb55786d80a1`  
		Last Modified: Mon, 13 Nov 2017 16:37:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33272beb0b809035cbc2d570370a0d1adad40381c0c2af8ed1f1ecda0c075e29`  
		Last Modified: Mon, 13 Nov 2017 16:37:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843aaf953c2aac2d76b4bc22d43f40a5b3a73c1afd57fdfbfd09716dfc6da8bf`  
		Last Modified: Mon, 13 Nov 2017 16:37:28 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24bad7a3ff939cdb96ba2fa6993289cc45ce8f3e1036883407ea978fe7b744a`  
		Last Modified: Mon, 13 Nov 2017 16:37:28 GMT  
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

## `postgres:9.5.10-alpine`

```console
$ docker pull postgres@sha256:012822d9733f99285f1bfd97b0631d6397d4acedf190df85c246f0c99e97ac01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:35c5edd1204e060a04bf10227005d0d9d018bd84b1af60100d1ca69089da4a56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14404967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d098c7be3310cb1a24d9cace7cec3fbb4b4f87133b6e7ca172f75f4ddbfb7d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:10:49 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:10:49 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:10:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:14:42 GMT
ENV PG_MAJOR=9.5
# Mon, 13 Nov 2017 16:22:50 GMT
ENV PG_VERSION=9.5.10
# Mon, 13 Nov 2017 16:22:50 GMT
ENV PG_SHA256=945d7ade094dded6b95495d8f1561a12ac9608276858ed30adf3c3658275f281
# Mon, 13 Nov 2017 16:26:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:26:05 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:26:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:26:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:26:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:26:07 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:26:07 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:26:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:26:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:26:08 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:26:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a88a2feda9fd9c11a4e26126bdb3c7b35e03f06fc60232e8146ab66c6e3fbe`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd866a92fb72cb1d8102afcef8d01e8751f657b317d150bfaa34a8fe61b2f11`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ce4fb92d4fd8d2f42cf3638bc8df4fb0076b173aef1a26f50a28d46c92d22a`  
		Last Modified: Mon, 13 Nov 2017 16:38:03 GMT  
		Size: 12.4 MB (12425420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ad8e73af564dc7b934f19d7314bf066a884b6ce341f36ca43312188f0d2476`  
		Last Modified: Mon, 13 Nov 2017 16:37:58 GMT  
		Size: 6.8 KB (6800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4716d5bbb7d7133c0a5b83c8c6ef611b08c1d547f87244355c5235b0d172e6e4`  
		Last Modified: Mon, 13 Nov 2017 16:37:57 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693705b76a7850d58c67a743d495ec97c1e5bb52c4bf59b91f3e2d182affe478`  
		Last Modified: Mon, 13 Nov 2017 16:37:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dd349735b120053e7cb5bd274d4c57aa5a1ef30e7f25266ae84cf5e14af53b`  
		Last Modified: Mon, 13 Nov 2017 16:37:58 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8f724ad5944d7f2efb161edecc39e94ac4de43ba1e84f95941324a1e2bedbb`  
		Last Modified: Mon, 13 Nov 2017 16:37:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:012822d9733f99285f1bfd97b0631d6397d4acedf190df85c246f0c99e97ac01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:35c5edd1204e060a04bf10227005d0d9d018bd84b1af60100d1ca69089da4a56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14404967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d098c7be3310cb1a24d9cace7cec3fbb4b4f87133b6e7ca172f75f4ddbfb7d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:10:49 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:10:49 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:10:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:14:42 GMT
ENV PG_MAJOR=9.5
# Mon, 13 Nov 2017 16:22:50 GMT
ENV PG_VERSION=9.5.10
# Mon, 13 Nov 2017 16:22:50 GMT
ENV PG_SHA256=945d7ade094dded6b95495d8f1561a12ac9608276858ed30adf3c3658275f281
# Mon, 13 Nov 2017 16:26:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:26:05 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:26:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:26:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:26:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:26:07 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:26:07 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:26:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:26:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:26:08 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:26:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a88a2feda9fd9c11a4e26126bdb3c7b35e03f06fc60232e8146ab66c6e3fbe`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd866a92fb72cb1d8102afcef8d01e8751f657b317d150bfaa34a8fe61b2f11`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ce4fb92d4fd8d2f42cf3638bc8df4fb0076b173aef1a26f50a28d46c92d22a`  
		Last Modified: Mon, 13 Nov 2017 16:38:03 GMT  
		Size: 12.4 MB (12425420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ad8e73af564dc7b934f19d7314bf066a884b6ce341f36ca43312188f0d2476`  
		Last Modified: Mon, 13 Nov 2017 16:37:58 GMT  
		Size: 6.8 KB (6800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4716d5bbb7d7133c0a5b83c8c6ef611b08c1d547f87244355c5235b0d172e6e4`  
		Last Modified: Mon, 13 Nov 2017 16:37:57 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693705b76a7850d58c67a743d495ec97c1e5bb52c4bf59b91f3e2d182affe478`  
		Last Modified: Mon, 13 Nov 2017 16:37:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dd349735b120053e7cb5bd274d4c57aa5a1ef30e7f25266ae84cf5e14af53b`  
		Last Modified: Mon, 13 Nov 2017 16:37:58 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8f724ad5944d7f2efb161edecc39e94ac4de43ba1e84f95941324a1e2bedbb`  
		Last Modified: Mon, 13 Nov 2017 16:37:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:e90da5e8a31c9a32ffac861181aea4eab645a3ed2ec14bac118244ed067a7fe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `postgres:9.6` - linux; amd64

```console
$ docker pull postgres@sha256:f0cf3de75710c665f79a74ab58e148603e7bc602852ab69735e776791db1d163
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104121735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ac03f9698da9c2f9ec42633d7bfab610f4878f1e44f3d22a286272b2dddb61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:09:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:09:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:09:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:09:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:09:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:09:43 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:09:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:09:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:09:46 GMT
ENV PG_MAJOR=9.6
# Mon, 13 Nov 2017 16:16:37 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Mon, 13 Nov 2017 16:17:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:17:23 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:17:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:17:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Mon, 13 Nov 2017 16:17:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:17:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:17:25 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:17:26 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:17:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:17:27 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:17:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4904bea61e3df3c6da7d464cb7aa7d2bbf1b52a4c5d819b1052918dc46f01b`  
		Last Modified: Sat, 04 Nov 2017 09:26:07 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fb981a71b75575051a35b50311109bb5a2510ff5b89f211c6cc1a01094794d`  
		Last Modified: Sat, 04 Nov 2017 09:26:06 GMT  
		Size: 985.1 KB (985130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dda1edd3e9b0a2e41141cc729ffb54fac25325137e351d8d1b217ff6e107bef`  
		Last Modified: Sat, 04 Nov 2017 09:26:08 GMT  
		Size: 7.1 MB (7112854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea002fc82805cce446210b8a1849887cbc92eb44a7f97d89d118b65423cd2e7`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feade6b1bbebb127f07f168f08f0f9b5ac006a436ae4fa34287d28cb099a9a1d`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d09e38e8d75b108131223968cd70535c236153a818200a5a924bbc0495e54e8`  
		Last Modified: Mon, 13 Nov 2017 16:36:26 GMT  
		Size: 43.4 MB (43412591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4315c4ea2dab17f67ce27ea1da98f346cd64ee1bae8091833518e5f73dcb915`  
		Last Modified: Mon, 13 Nov 2017 16:36:18 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83300d46c9a2ba627c8cd9390a643daac3e164d0d8f15f6c448c3a749b7fb176`  
		Last Modified: Mon, 13 Nov 2017 16:36:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5e0ecd572052cc3d45a3b1c8653c2bd3d9a7eda385a33017c31a4ff7df6cc`  
		Last Modified: Mon, 13 Nov 2017 16:36:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f110ffb0f56184af0e3c26eef424c9fed224a1137e55601b80c8dd9e550213`  
		Last Modified: Mon, 13 Nov 2017 16:36:16 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528f73e31b5de74fc0516a996416e5aab4c7600c9e952cb79167edff8ea0313b`  
		Last Modified: Mon, 13 Nov 2017 16:36:17 GMT  
		Size: 120.0 B  
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

## `postgres:9.6.6`

```console
$ docker pull postgres@sha256:e90da5e8a31c9a32ffac861181aea4eab645a3ed2ec14bac118244ed067a7fe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `postgres:9.6.6` - linux; amd64

```console
$ docker pull postgres@sha256:f0cf3de75710c665f79a74ab58e148603e7bc602852ab69735e776791db1d163
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104121735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ac03f9698da9c2f9ec42633d7bfab610f4878f1e44f3d22a286272b2dddb61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:09:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:09:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:09:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:09:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:09:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:09:43 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:09:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:09:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:09:46 GMT
ENV PG_MAJOR=9.6
# Mon, 13 Nov 2017 16:16:37 GMT
ENV PG_VERSION=9.6.6-1.pgdg80+1
# Mon, 13 Nov 2017 16:17:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:17:23 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:17:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:17:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Mon, 13 Nov 2017 16:17:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:17:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:17:25 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:17:26 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:17:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:17:27 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:17:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4904bea61e3df3c6da7d464cb7aa7d2bbf1b52a4c5d819b1052918dc46f01b`  
		Last Modified: Sat, 04 Nov 2017 09:26:07 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fb981a71b75575051a35b50311109bb5a2510ff5b89f211c6cc1a01094794d`  
		Last Modified: Sat, 04 Nov 2017 09:26:06 GMT  
		Size: 985.1 KB (985130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dda1edd3e9b0a2e41141cc729ffb54fac25325137e351d8d1b217ff6e107bef`  
		Last Modified: Sat, 04 Nov 2017 09:26:08 GMT  
		Size: 7.1 MB (7112854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea002fc82805cce446210b8a1849887cbc92eb44a7f97d89d118b65423cd2e7`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feade6b1bbebb127f07f168f08f0f9b5ac006a436ae4fa34287d28cb099a9a1d`  
		Last Modified: Sat, 04 Nov 2017 09:26:05 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d09e38e8d75b108131223968cd70535c236153a818200a5a924bbc0495e54e8`  
		Last Modified: Mon, 13 Nov 2017 16:36:26 GMT  
		Size: 43.4 MB (43412591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4315c4ea2dab17f67ce27ea1da98f346cd64ee1bae8091833518e5f73dcb915`  
		Last Modified: Mon, 13 Nov 2017 16:36:18 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83300d46c9a2ba627c8cd9390a643daac3e164d0d8f15f6c448c3a749b7fb176`  
		Last Modified: Mon, 13 Nov 2017 16:36:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5e0ecd572052cc3d45a3b1c8653c2bd3d9a7eda385a33017c31a4ff7df6cc`  
		Last Modified: Mon, 13 Nov 2017 16:36:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f110ffb0f56184af0e3c26eef424c9fed224a1137e55601b80c8dd9e550213`  
		Last Modified: Mon, 13 Nov 2017 16:36:16 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528f73e31b5de74fc0516a996416e5aab4c7600c9e952cb79167edff8ea0313b`  
		Last Modified: Mon, 13 Nov 2017 16:36:17 GMT  
		Size: 120.0 B  
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

## `postgres:9.6.6-alpine`

```console
$ docker pull postgres@sha256:f90f0beba0b453dae3940a96cf8a433510c5b2109888bb62f7b2d8b1a3c9324b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:73a7c25415b615d0b4fe7058ef2c99841c49a26b0dba626fe242b1308c0cffe2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14691657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20de79981614d597a4df2667494d6f982d1a8f0e3b80c451247c1c4ce39f2de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:10:49 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:10:49 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:10:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:10:50 GMT
ENV PG_MAJOR=9.6
# Mon, 13 Nov 2017 16:17:38 GMT
ENV PG_VERSION=9.6.6
# Mon, 13 Nov 2017 16:17:38 GMT
ENV PG_SHA256=399cdffcb872f785ba67e25d275463d74521566318cfef8fe219050d063c8154
# Mon, 13 Nov 2017 16:21:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:21:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:21:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:21:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:21:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:21:29 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:21:30 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:21:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:21:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:21:31 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:21:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a88a2feda9fd9c11a4e26126bdb3c7b35e03f06fc60232e8146ab66c6e3fbe`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd866a92fb72cb1d8102afcef8d01e8751f657b317d150bfaa34a8fe61b2f11`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f51117524406c3d0ca878fe3e9a9f182ac753667c3f937ba6837de0b06fc677`  
		Last Modified: Mon, 13 Nov 2017 16:36:57 GMT  
		Size: 12.7 MB (12711840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebed1cae086687c98e7d4dc50d520c3165cbe288fbe30ac18d71940b97927e8`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba8057a35498955429fedafc435b2aeb4a857f57fb64f3636b40d00e28f371`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0eb338c9df5e8e254cb3940df153dd9b35db473c831d063c99ae6f4446c3de0`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa7632b4dad4c1e8e42eed2bd63419d0eaee646fa35c7492732d7c8ec03337a`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20560a78883f99bcc12444af1b08f2573ab591cc3971eb4e9afdfff971c52aed`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:f90f0beba0b453dae3940a96cf8a433510c5b2109888bb62f7b2d8b1a3c9324b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:73a7c25415b615d0b4fe7058ef2c99841c49a26b0dba626fe242b1308c0cffe2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14691657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20de79981614d597a4df2667494d6f982d1a8f0e3b80c451247c1c4ce39f2de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:10:49 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:10:49 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:10:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:10:50 GMT
ENV PG_MAJOR=9.6
# Mon, 13 Nov 2017 16:17:38 GMT
ENV PG_VERSION=9.6.6
# Mon, 13 Nov 2017 16:17:38 GMT
ENV PG_SHA256=399cdffcb872f785ba67e25d275463d74521566318cfef8fe219050d063c8154
# Mon, 13 Nov 2017 16:21:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:21:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:21:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:21:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:21:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:21:29 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:21:30 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:21:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:21:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:21:31 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:21:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a88a2feda9fd9c11a4e26126bdb3c7b35e03f06fc60232e8146ab66c6e3fbe`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd866a92fb72cb1d8102afcef8d01e8751f657b317d150bfaa34a8fe61b2f11`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f51117524406c3d0ca878fe3e9a9f182ac753667c3f937ba6837de0b06fc677`  
		Last Modified: Mon, 13 Nov 2017 16:36:57 GMT  
		Size: 12.7 MB (12711840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebed1cae086687c98e7d4dc50d520c3165cbe288fbe30ac18d71940b97927e8`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba8057a35498955429fedafc435b2aeb4a857f57fb64f3636b40d00e28f371`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0eb338c9df5e8e254cb3940df153dd9b35db473c831d063c99ae6f4446c3de0`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa7632b4dad4c1e8e42eed2bd63419d0eaee646fa35c7492732d7c8ec03337a`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20560a78883f99bcc12444af1b08f2573ab591cc3971eb4e9afdfff971c52aed`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:f90f0beba0b453dae3940a96cf8a433510c5b2109888bb62f7b2d8b1a3c9324b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:73a7c25415b615d0b4fe7058ef2c99841c49a26b0dba626fe242b1308c0cffe2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14691657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20de79981614d597a4df2667494d6f982d1a8f0e3b80c451247c1c4ce39f2de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:10:49 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:10:49 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:10:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:10:50 GMT
ENV PG_MAJOR=9.6
# Mon, 13 Nov 2017 16:17:38 GMT
ENV PG_VERSION=9.6.6
# Mon, 13 Nov 2017 16:17:38 GMT
ENV PG_SHA256=399cdffcb872f785ba67e25d275463d74521566318cfef8fe219050d063c8154
# Mon, 13 Nov 2017 16:21:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:21:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:21:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:21:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:21:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:21:29 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:21:30 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:21:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:21:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:21:31 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:21:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a88a2feda9fd9c11a4e26126bdb3c7b35e03f06fc60232e8146ab66c6e3fbe`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd866a92fb72cb1d8102afcef8d01e8751f657b317d150bfaa34a8fe61b2f11`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f51117524406c3d0ca878fe3e9a9f182ac753667c3f937ba6837de0b06fc677`  
		Last Modified: Mon, 13 Nov 2017 16:36:57 GMT  
		Size: 12.7 MB (12711840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebed1cae086687c98e7d4dc50d520c3165cbe288fbe30ac18d71940b97927e8`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba8057a35498955429fedafc435b2aeb4a857f57fb64f3636b40d00e28f371`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0eb338c9df5e8e254cb3940df153dd9b35db473c831d063c99ae6f4446c3de0`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa7632b4dad4c1e8e42eed2bd63419d0eaee646fa35c7492732d7c8ec03337a`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20560a78883f99bcc12444af1b08f2573ab591cc3971eb4e9afdfff971c52aed`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:7f1d3dd0346720c0787aeadeb6f3d9214465f72874ee5d5afbfeec58034f3c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:9c14f0c5d686d00fc28c8264c98016ef7076119340d09ad270876eb746fb3a4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14359979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3cbcca46ba457ed816c28c8631e681105e7a26c9b12ee47bab5239b08b3e5d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:06:02 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:06:02 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:06:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:06:03 GMT
ENV PG_MAJOR=10
# Mon, 13 Nov 2017 16:12:55 GMT
ENV PG_VERSION=10.1
# Mon, 13 Nov 2017 16:12:55 GMT
ENV PG_SHA256=3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
# Mon, 13 Nov 2017 16:16:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:16:20 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:16:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:16:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:16:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:16:22 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:16:22 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:16:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:16:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:16:24 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:16:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa78197d3423d8feaa8568548d72a7d3d37ffd4d462d1d662aeab098fcf4a697`  
		Last Modified: Sat, 04 Nov 2017 09:25:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908e39998270936a8ee6025396468a0b8dc2920669cc7a727d22c688026992bb`  
		Last Modified: Sat, 04 Nov 2017 09:25:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d840019f7f1528ffc3410455492bb503d412659605a133b77da304ca8bf9530`  
		Last Modified: Mon, 13 Nov 2017 16:35:54 GMT  
		Size: 12.4 MB (12358768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5e5a62d59e6d5c37c8d27bdc89676e56b73e55ff52eacac94386c3eb1169be`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f35a35a53be982a7ee5825f1c5c55060fb122d7cb6be7726e58b4fb27e7fe50`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd490dee6dfe3c58fa1be19e53c1e9a7a549cb6b1a4307eb145b286303a7b7e`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021c734743f3c3261a792ecca958c8d24485cecd6c78bb644060b79118e93228`  
		Last Modified: Mon, 13 Nov 2017 16:35:47 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707f5fec529f148d691bbc356742c0567a1a7904c50edaf09053ac1d902d9a80`  
		Last Modified: Mon, 13 Nov 2017 16:35:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:cfaa38cbbe300ef535d12871d48f75b6da1a70f25089da1f6f20914d57d5fd12
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14081737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dbc6bc01151db59a9aafb611c8ed4d768f1e53f3434cf452072d1493c5eb9f4`
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
# Tue, 14 Nov 2017 00:38:02 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 14 Nov 2017 00:38:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 14 Nov 2017 00:38:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 00:38:03 GMT
EXPOSE 5432/tcp
# Tue, 14 Nov 2017 00:38:03 GMT
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
	-	`sha256:bb13a0bf35927f764003e65e8f2a0458dfcd149ebc430bfea8401c2454a833ce`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6074640474a098be6203584d57933766400f0d8b25c3326e3947f310a02841`  
		Last Modified: Tue, 14 Nov 2017 00:38:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:d840ed1ed691cbe020323596e62201e045c49c4ecf21344f2926fd05f1d1d961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

```console
$ docker pull postgres@sha256:bfdb5cecec046e2dafa9a8ef4b669e6802f8abe59c7575451f0d5e60e033dfb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116700618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a2d73f5ce34a9d247f21b9f0006cf6c7bbcfdc38aaa266db7475cebf9f41e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:05:00 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:05:00 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:05:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:05:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:05:19 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:05:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:05:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:05:24 GMT
ENV PG_MAJOR=10
# Mon, 13 Nov 2017 16:12:18 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Mon, 13 Nov 2017 16:12:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:12:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:12:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:12:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Mon, 13 Nov 2017 16:12:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:12:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:12:46 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:12:47 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:12:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:12:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:12:48 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:12:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb9dc1cfcb8dafd437c65277f42e0af7f8502719bb16da96fe1e13996bd8b97`  
		Last Modified: Sat, 04 Nov 2017 09:25:14 GMT  
		Size: 6.9 MB (6920873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a344e5b3663cf66a215586c9fdbd5970238c770e6465d08fdf94e1260424f90`  
		Last Modified: Sat, 04 Nov 2017 09:25:12 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d619f9c5def65be41397e463680af16265e32e772803735003762d31aa9fddbe`  
		Last Modified: Sat, 04 Nov 2017 09:25:10 GMT  
		Size: 956.6 KB (956618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225b82de1e67b15d2c2f7466adc913671fbf250b71eb2c1ba42fe4eb38b355f2`  
		Last Modified: Sat, 04 Nov 2017 09:25:12 GMT  
		Size: 6.6 MB (6577399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10daa23c1d9a637911b241e4e6843df129ced1120596e90af0726ae319f72d5b`  
		Last Modified: Sat, 04 Nov 2017 09:25:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba4a4b2d69b010325ff1e86b9dd839dcfc2f7772405d47e79ea86817abfb2d0`  
		Last Modified: Sat, 04 Nov 2017 09:25:09 GMT  
		Size: 4.5 KB (4479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7138e38f64336fee4993b5937ae7b1fbaf4caaddda6f3ab9898d47cbf3355a69`  
		Last Modified: Mon, 13 Nov 2017 16:35:19 GMT  
		Size: 57.1 MB (57100775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d473ec94c4ae89dc06f31f1fdfeb439a3ae6112541873a72141ce8d3efc36b0`  
		Last Modified: Mon, 13 Nov 2017 16:35:04 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f370795820a4e739545e5a586f8165366c9558c21aff4cb9b507aae535aa4a2`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9d4bbd031377870060bc265e3286b881e36e9d86873a18b5cf3c4ff6c8ae91`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d38c1cd82817cd160d53e30389d141759d8cbce6ae7848bb51f62dbd317ef6`  
		Last Modified: Mon, 13 Nov 2017 16:35:03 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884c0b44a64a801c1c55e40b959e3cb0fc49a437c00c00c3573138c672afaeaa`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
