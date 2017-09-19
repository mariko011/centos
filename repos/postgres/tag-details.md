<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10`](#postgres10)
-	[`postgres:10-alpine`](#postgres10-alpine)
-	[`postgres:10-beta4`](#postgres10-beta4)
-	[`postgres:10-beta4-alpine`](#postgres10-beta4-alpine)
-	[`postgres:9`](#postgres9)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.2.23`](#postgres9223)
-	[`postgres:9.2.23-alpine`](#postgres9223-alpine)
-	[`postgres:9.2-alpine`](#postgres92-alpine)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.19`](#postgres9319)
-	[`postgres:9.3.19-alpine`](#postgres9319-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.14`](#postgres9414)
-	[`postgres:9.4.14-alpine`](#postgres9414-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.9`](#postgres959)
-	[`postgres:9.5.9-alpine`](#postgres959-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9.6.5`](#postgres965)
-	[`postgres:9.6.5-alpine`](#postgres965-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:latest`](#postgreslatest)

## `postgres:10`

```console
$ docker pull postgres@sha256:6f077f2c9950462808fddc4d01f58b096a41774af6d8b52ad2e7255c41d5f244
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
$ docker pull postgres@sha256:99280b954a5216c9e629a21da555429fde0f14caaab6425b36785a06c95182f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117495077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad54720c23de4f9837a38809531714c6170b67aaad9e60dba6604a4e12bdd3f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 06:57:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 06:57:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 06:57:53 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 06:58:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 06:58:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 06:58:12 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 06:58:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 06:58:16 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 06:58:17 GMT
ENV PG_MAJOR=10
# Tue, 19 Sep 2017 06:58:17 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Tue, 19 Sep 2017 06:58:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 06:58:38 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 06:58:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 06:58:39 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 06:58:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 06:58:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 06:58:40 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 06:58:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 06:58:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 06:58:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 06:58:41 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 06:58:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b4d6274d7716c4dbf67b92c421750ef3a6513e385dd48a47146219c7a3d77e`  
		Last Modified: Tue, 19 Sep 2017 07:19:53 GMT  
		Size: 7.2 MB (7218378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2569a32ee6dd4d651bd02f3ea71f60d9bc6969c70c26d6306a7b72cbb1870393`  
		Last Modified: Tue, 19 Sep 2017 07:19:51 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4d0fc31922c229cb33c7c7e01ca0f16ece5822121f709f3a2b61149c07e68`  
		Last Modified: Tue, 19 Sep 2017 07:19:51 GMT  
		Size: 956.6 KB (956564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8275aae461c7d8db771c1c9b3bcbf3a2956555e62e552f4f5d725c56593aac7f`  
		Last Modified: Tue, 19 Sep 2017 07:19:52 GMT  
		Size: 6.6 MB (6577611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45087ee6fc31c023b9208ea548b0490c254cf452728d877cbb1b1cc9906858f0`  
		Last Modified: Tue, 19 Sep 2017 07:19:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2265f720a6572f001f677339179495c0cd3c90403e22bdfdeed22d8b81f5d9`  
		Last Modified: Tue, 19 Sep 2017 07:19:49 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68027e9903da895161837a1e968e290179c32ffe2bf79b2e0ee3b34bbdfbc5a3`  
		Last Modified: Tue, 19 Sep 2017 07:20:04 GMT  
		Size: 57.6 MB (57601151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb45d4664c3f6d65b5bdd779216e67887765cb02ea7c35cd63266916cee4798`  
		Last Modified: Tue, 19 Sep 2017 07:19:47 GMT  
		Size: 7.3 KB (7304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70f0973e05cadb9f94740d3706cedb3f37361f5e504e0e8c2539b8bb5168a3f`  
		Last Modified: Tue, 19 Sep 2017 07:19:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9185121770413eaed4867995f75ea0a5f5e9364e77426099d2618e4c78096667`  
		Last Modified: Tue, 19 Sep 2017 07:19:47 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8e37ab8ad2e40600191993e7c55d6c46603d2b1aaf1bf06b6741398cba2688`  
		Last Modified: Tue, 19 Sep 2017 07:19:47 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c796af3850a779794ab440f23b9868d9afd2c36069d6855251610c05bc372b8`  
		Last Modified: Tue, 19 Sep 2017 07:19:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v5

```console
$ docker pull postgres@sha256:feccb939777d6665273a26f7de4d473837d7f3dc40ffbb4f2f78ddcb7a8fe7fb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116823031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901d78bdafc60212b4ba8a5c3f13c422226481de99f6c4c6cac003261980a31a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 20:03:39 GMT
ADD file:111ccf88fc474ec03491c012baa75d4f4b3b6d08391bb86364b9fabdf3b57d3e in / 
# Fri, 08 Sep 2017 20:03:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:49:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:49:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:49:52 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 00:10:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 00:14:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 00:14:44 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 00:14:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 00:14:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 00:14:52 GMT
ENV PG_MAJOR=10
# Sat, 09 Sep 2017 00:14:53 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Sat, 09 Sep 2017 00:58:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 00:58:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 00:58:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 00:58:14 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 00:58:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 00:58:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 00:58:19 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 00:58:20 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 00:58:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 00:58:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 00:58:24 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 00:58:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dfcb038706ea089b8e701c5bfce59c00a98c88092993630571599baa72487c2b`  
		Last Modified: Fri, 08 Sep 2017 20:20:29 GMT  
		Size: 43.8 MB (43813379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f80428f4942933b3aea2e5467cd5a87a0ee53433ce430bf66151746057ce74f`  
		Last Modified: Tue, 12 Sep 2017 10:16:29 GMT  
		Size: 7.0 MB (6950702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea55255f8ed5d10195eb6b5fdc3cf43048ed4e224a4648090055f012d40bc733`  
		Last Modified: Tue, 12 Sep 2017 10:16:09 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5119d32d5306be9b95a37b6b786febb7ee14bfdb6e3494a5804ba11316b7a30b`  
		Last Modified: Tue, 12 Sep 2017 10:16:08 GMT  
		Size: 947.0 KB (946967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46ce7189e2aefad5a3c9b1bdb5a1a8ede18dc56137a6729676985d437b1a0da`  
		Last Modified: Tue, 12 Sep 2017 10:16:22 GMT  
		Size: 6.6 MB (6577864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df64714cfdf41c863e30f7688d98b3c46c5a3f991820c925661ba42e9564067`  
		Last Modified: Tue, 12 Sep 2017 10:16:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5788419d98516292ef45fdba9feb1a6909c0fbe74bd8cdba5746a9dc74d6cfcb`  
		Last Modified: Tue, 12 Sep 2017 10:16:01 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136da8e1a43e4998a98a7824b2243a9660fd28048b61a7ffd6bf415695677339`  
		Last Modified: Tue, 12 Sep 2017 10:16:59 GMT  
		Size: 58.5 MB (58518247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1f628955f2389ca2c739df046a3c5c389a174b0bea1535e34c2808e4d9a155`  
		Last Modified: Tue, 12 Sep 2017 10:15:59 GMT  
		Size: 7.3 KB (7302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d132e57924f6c64f726fafedce596a4c085f369772ada6e4516fe5e4313ef554`  
		Last Modified: Tue, 12 Sep 2017 10:15:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ae4da69abe671f892c5fbff19b5da69c2ec47db41863bca8ea509d50d333ef`  
		Last Modified: Tue, 12 Sep 2017 10:15:58 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1727e2d308ec70c21c823b5a6129ba582a6138ff6e3b80016cddea0b698020ae`  
		Last Modified: Tue, 12 Sep 2017 10:15:59 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe058181e06db7413f86eae5256fda589da89b03c657e193c02ad46f584c103e`  
		Last Modified: Tue, 12 Sep 2017 10:15:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v7

```console
$ docker pull postgres@sha256:886560fcd1dfb8889127d7b5da1de1302199c2f5ac63f02f4c40f49ccc4cd9d4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112769991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00610ab2882ab43781ea0cb203cc7dac91d3392ea47db3f50a98a2ec5f9b7b9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 20:35:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 20:35:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 20:35:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 20:36:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 20:36:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 20:36:51 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 20:36:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 20:37:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 Aug 2017 20:37:46 GMT
ENV PG_MAJOR=10
# Thu, 31 Aug 2017 20:37:47 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Thu, 31 Aug 2017 21:19:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 Aug 2017 21:19:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 Aug 2017 21:19:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 Aug 2017 21:19:38 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Aug 2017 21:19:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 Aug 2017 21:19:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 Aug 2017 21:19:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 Aug 2017 21:19:42 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 31 Aug 2017 21:19:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 21:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 21:19:46 GMT
EXPOSE 5432/tcp
# Thu, 31 Aug 2017 21:19:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39e08712623c47f180d180ae36578eebdca88554201649bd5de9aaea5064788`  
		Last Modified: Fri, 01 Sep 2017 21:00:33 GMT  
		Size: 6.6 MB (6588997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4783598ea377b1bbe34d736f0514427d03a9ce40706fc579923585fe58f0aa50`  
		Last Modified: Fri, 01 Sep 2017 21:00:21 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6f2af760b001bace17c29527368683d3bee8037455956d74da815c0d0fa6b8`  
		Last Modified: Fri, 01 Sep 2017 21:00:17 GMT  
		Size: 931.4 KB (931361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd44efc2656ebee54719a33d6b6a48110d8e57dd7af3fff7d358230d36e8a035`  
		Last Modified: Fri, 01 Sep 2017 21:00:36 GMT  
		Size: 6.6 MB (6577799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2524a818376287fbadd27724e1eb045c4f3a376fef9a7abed3bf67b82f82a35`  
		Last Modified: Fri, 01 Sep 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827cdff65fa31d73e1642f138a9dde775b0080555b74e1de239564c521378c3f`  
		Last Modified: Fri, 01 Sep 2017 21:00:13 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9226cebd4ddb3c219ccea5ba6330409c3d3f7d8aaa4b91c5de5d2c53ae52a86`  
		Last Modified: Fri, 01 Sep 2017 21:01:05 GMT  
		Size: 56.8 MB (56808508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7074a02c561f8d59d53072e72abbb9ea2cfcc18f8c9010b3bcebb921792678`  
		Last Modified: Fri, 01 Sep 2017 21:00:10 GMT  
		Size: 7.3 KB (7306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22bf0b2f538265b15a2c2182bfa81ab56d1d9b7ed2ce5ac6857ae5deafed9c1`  
		Last Modified: Fri, 01 Sep 2017 21:00:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f796b821ca1e0b0231bfe651189a91589dc7b0f40c96eeaff6888fc0559b0040`  
		Last Modified: Fri, 01 Sep 2017 21:00:10 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d16f42faded7deaca196c4c5db0c1dc3c8d474919920fe8b1451fb6d7fe2029`  
		Last Modified: Fri, 01 Sep 2017 21:00:10 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21804ac2607abc8fd75e2a046620db6afc4d3c187d98ad30edca2e619c5a284b`  
		Last Modified: Fri, 01 Sep 2017 21:00:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:86090dcfa2b6f57e9db2277446f54d3965cc4188daf8ff73e9f788239e39adf8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114791894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a512b48c620e7a7dd91cef574e583d4c45aff78e6449f993518c72a6731ea6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:01:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:01:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:01:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:01:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:02:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:02:14 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:02:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:02:27 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 23:02:28 GMT
ENV PG_MAJOR=10
# Fri, 08 Sep 2017 23:02:29 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Fri, 08 Sep 2017 23:42:27 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 23:42:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 23:42:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 23:42:34 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 23:42:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 23:42:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 23:42:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 23:42:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 23:42:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 23:42:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 23:42:46 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 23:42:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae6dd2209912dda6ea265f36c70a03927a208e3e494a0cb3c2daf30959993e`  
		Last Modified: Sat, 09 Sep 2017 02:42:57 GMT  
		Size: 6.8 MB (6793640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1a71cf0444eecf839aa5ecd88be6b1466c0e3aee42c50752f88fe9f01b59f3`  
		Last Modified: Sat, 09 Sep 2017 02:42:54 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1be48186ad4c9ed0570acd0120ffd59e68e88665d84ac30617885946577e16c`  
		Last Modified: Sat, 09 Sep 2017 02:42:52 GMT  
		Size: 924.3 KB (924281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcbf3422485c0875f736bfbed4d85e3c625640bf7885315ebe6b2c6dd70d0e2`  
		Last Modified: Sat, 09 Sep 2017 02:42:54 GMT  
		Size: 6.6 MB (6577515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9f04cfeb59d5ff3d63f107d7f3e3598f98c79de96260986c5a9e5a70dbc94d`  
		Last Modified: Sat, 09 Sep 2017 02:42:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebebe3df239885ae2fa0df0b7fa9fe90f68e1fdd6e48141bce4c72305190e789`  
		Last Modified: Sat, 09 Sep 2017 02:42:52 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f9957749532ce4949d89dc8299ca183ca1a2a72d91bbef87b7b3957f8eea84`  
		Last Modified: Sat, 09 Sep 2017 02:43:12 GMT  
		Size: 57.6 MB (57576501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1cfa90b6615c71f6147a5d534ba5e46e9eaece411185b23f5032a114f2e4b8`  
		Last Modified: Sat, 09 Sep 2017 02:42:48 GMT  
		Size: 7.3 KB (7303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f160dbd02b5dcc74ddbf02618daf2870fd64a9efc737008877323ead4ba65a`  
		Last Modified: Sat, 09 Sep 2017 02:42:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dae3e64dde3f9391b144be89ee9b93c2d07f85f06d85cebee13301a3e93b8b`  
		Last Modified: Sat, 09 Sep 2017 02:42:48 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74bc70602bfd7f4fdd2eae9f800e078668565dd4d776923d6636e27f2f1a8cc`  
		Last Modified: Sat, 09 Sep 2017 02:42:48 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a58dcc46d8de78a966da35d8b7f1c423868c1443413bfd576556483c406563`  
		Last Modified: Sat, 09 Sep 2017 02:42:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; 386

```console
$ docker pull postgres@sha256:0bc19ae4e3990206ed17098d9de01762f801e654a8d7945edd8caa7fea854299
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119593766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e62803ffef653fa3932bbcda66f535913a89ecc7f36ad6469af9826c11a151d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:42:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:42:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:42:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:42:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:42:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:42:54 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:42:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:42:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:42:59 GMT
ENV PG_MAJOR=10
# Fri, 08 Sep 2017 15:42:59 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Fri, 08 Sep 2017 15:43:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:43:40 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:43:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:43:41 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:43:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:43:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:43:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:43:43 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:43:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:43:45 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:43:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4275b8f27e501632391eca23495f8029836141eb0ce7534d32c2dcf4192d99d4`  
		Last Modified: Fri, 08 Sep 2017 16:00:34 GMT  
		Size: 7.5 MB (7521941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e5c68ac664cf108a6678ffc8adf49343dd32ab47ca6688122fc9e1d3da5312`  
		Last Modified: Fri, 08 Sep 2017 16:00:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d36e26c3e382835d5f5aa7a01bf48d2665c699f4dcb2f4c903d83b59e12fc9`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 936.4 KB (936414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f98d276db4d972d49b1b6978a475d2c578e60d1cd91555513443104efcdad11`  
		Last Modified: Fri, 08 Sep 2017 16:00:34 GMT  
		Size: 6.6 MB (6577568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c297fa48ec2fb595b2a9a94a3aa97c8f1bdd3d9278f498be6e9b763d48212988`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8631ee268047408af7496be739183a1a98f5e67bd6d599b00361d372d812dc`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a6a71335a68c165f5cd9f1990c1b8a3c5b3ea2c6b344982bb16b116737853e`  
		Last Modified: Fri, 08 Sep 2017 16:00:48 GMT  
		Size: 58.7 MB (58710170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca82b0e2a5981f069fe6257ecef705ef1b92de0fd103217a620acb2384d3312`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 7.3 KB (7302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f68bcf0a6894794baf71f8501bef4698400de5852e15914988ebb7537be2135`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b6e1442d5ea377ed94562bb277410a18f35b1f674d0441b6c68f3c31faa2e7`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2244518451219184d2e9dfec636c11926baf50c5cee6bcb9c83e76520ec6d68`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b914ffda511cfb61ad1e115321227dedb7bfc579b126ab8b8cabbac57532e8`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; ppc64le

```console
$ docker pull postgres@sha256:4ecf9cf06d331447221f64b6305ea146c27ecce77410e66ce6cfa6b27094dc20
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117451260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8d38044e925e581a7ae78b0fca45aea762d192603adc28f546ac1fd79b7d3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:35:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:35:57 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:35:57 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:36:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:36:45 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:36:45 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:36:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:36:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:36:49 GMT
ENV PG_MAJOR=10
# Fri, 08 Sep 2017 01:36:49 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Fri, 08 Sep 2017 01:37:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:37:24 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:37:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:37:25 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:37:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:37:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:37:26 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:37:26 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:37:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:37:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:37:27 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:37:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434a4a007450c537e63dad6313f1edbe51eeebdf126c57ef747c2e23633d0d11`  
		Last Modified: Fri, 08 Sep 2017 01:43:47 GMT  
		Size: 7.1 MB (7079145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2e1d5217f48050b34179ec406c8ff448d48ac3676921a85e626cbbf1cbd7dd`  
		Last Modified: Fri, 08 Sep 2017 01:43:45 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e891740016624996ab19eddb6232c0be782dccc528f229383f2cac0246ab5f`  
		Last Modified: Fri, 08 Sep 2017 01:43:43 GMT  
		Size: 925.1 KB (925140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f2debf94571cba7888c23d9911bd1d7f7743bbb26af334099055adcd8ddae7`  
		Last Modified: Fri, 08 Sep 2017 01:43:44 GMT  
		Size: 6.6 MB (6577471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c62a4a9689424fd7a8dce8fb5c567c9a8a7b6a14c64d5db52ea61896bc4c613`  
		Last Modified: Fri, 08 Sep 2017 01:43:43 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a570988b508e0b1d9dd8b4c966d330699cffa977b1bb1e94dc4c965b2711ae`  
		Last Modified: Fri, 08 Sep 2017 01:43:42 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c106f0b44b7ab853c037ef279f0bb88dd83f244dc1fe310e31e3d75c995b1e`  
		Last Modified: Fri, 08 Sep 2017 01:43:57 GMT  
		Size: 57.5 MB (57476856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b8505067b6f8ad23ae0ff1d0dc67c71a229ec17817c0d9086b45589b09edb3`  
		Last Modified: Fri, 08 Sep 2017 01:43:39 GMT  
		Size: 7.3 KB (7301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0d686bbf7fa1d5207fbc003182c7f7a7b5a11d8a53cd126954aaae1e6ecc1c`  
		Last Modified: Fri, 08 Sep 2017 01:43:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65c41f4b1b9d84b602572036790e009697c32a0b381d065de737b618d3e6831`  
		Last Modified: Fri, 08 Sep 2017 01:43:39 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea643adef95084f73faa48cbac986af083403ee2cabb8e4cec53a87b975b52cc`  
		Last Modified: Fri, 08 Sep 2017 01:43:39 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2b4e00c25a3534d8758da7aea064cfef8419a73c1a7065557c636bc0e8619b`  
		Last Modified: Fri, 08 Sep 2017 01:43:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; s390x

```console
$ docker pull postgres@sha256:026b9547b914d400937c83082e87dfd60afa5caa4dcd066df703a5b5ad58ea50
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119707124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e2b1ae6c5aafc212e433b54ec29b231cd5ed4ea6ea06149d7d614be6b82e8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:16:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:16:26 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:16:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:16:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:16:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:16:42 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:16:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:16:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:16:46 GMT
ENV PG_MAJOR=10
# Fri, 08 Sep 2017 06:16:47 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Fri, 08 Sep 2017 06:25:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 06:25:46 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 06:25:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 06:25:46 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:25:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 06:25:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 06:25:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 06:25:47 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 06:25:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 06:25:48 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 06:25:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c23052571a712217d5adc7b7d1f63b266bdc4888508a16cf49662873eab06`  
		Last Modified: Fri, 08 Sep 2017 07:09:15 GMT  
		Size: 7.2 MB (7248706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e811a1ff29709eb65ea2d5dd15fecb37331b63c1758c1e0b6333575971c996b`  
		Last Modified: Fri, 08 Sep 2017 07:09:14 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea681979065c1d16e92895c9e519342835b5a712757a74bc38259751d371cb9b`  
		Last Modified: Fri, 08 Sep 2017 07:09:13 GMT  
		Size: 942.2 KB (942229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912fe13ca5882af97c89434c5975b598e06eb3a8606829726dc0fc799c2aa9e8`  
		Last Modified: Fri, 08 Sep 2017 07:09:14 GMT  
		Size: 6.6 MB (6598768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5146aace68c151e3f39b7a512357671fa62600770e45617087a7366d9fc6f5`  
		Last Modified: Fri, 08 Sep 2017 07:09:12 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06684a6cc3df35879757d49b0fe4fc4b1b1c1f8acf3cba4eb626920280c0f67c`  
		Last Modified: Fri, 08 Sep 2017 07:09:12 GMT  
		Size: 4.5 KB (4480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976b111c0df1599101089b74ca085d8adf645c88c8748400fdd271698ecd10e3`  
		Last Modified: Fri, 08 Sep 2017 07:10:31 GMT  
		Size: 59.9 MB (59932999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2784f26546291256fca89a0a731498dd567ef2daeeb24d60b1653acb0654af90`  
		Last Modified: Fri, 08 Sep 2017 07:09:11 GMT  
		Size: 7.3 KB (7301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2761b579332d73406f83a0cbeb08b8b8e720e59e48076a71ce480616b139eb7`  
		Last Modified: Fri, 08 Sep 2017 07:09:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e228c8a7bf06c8baebd4cd4ed07f5c51ea1cb29a03e52c6f62ffc8db0b59a95d`  
		Last Modified: Fri, 08 Sep 2017 07:09:11 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a294713b1311f1d4554c30d83053d1de134fda794113c6bda517ccf3bb97de0a`  
		Last Modified: Fri, 08 Sep 2017 07:09:11 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d42435330d3ed9237cf88086d7a14bc4da8c0305b65ab1b5f9edf00793aa95d`  
		Last Modified: Fri, 08 Sep 2017 07:09:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:9ab99815d86e834a96975680af69a9d44833a1bfbcfda6e549ad1db0aca99856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:ded7efd756e171d27b4b2e23fc82564e895b885baf79cf6713281737984d1d34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14714827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8192d2f57c03942f6a0a527ba251d8f168ecbc3149777e99d5b3424cf02417d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 06:58:46 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 06:58:46 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 06:58:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 06:58:47 GMT
ENV PG_MAJOR=10
# Tue, 19 Sep 2017 06:58:47 GMT
ENV PG_VERSION=10beta4
# Tue, 19 Sep 2017 06:58:47 GMT
ENV PG_SHA256=e70ffa84d439033533279ccb3ae7beaa0278585b2b176a767bcd0cbddb1252d2
# Tue, 19 Sep 2017 07:01:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:01:12 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:01:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:01:13 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:01:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:01:14 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:01:14 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:01:14 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:01:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:01:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:01:15 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:01:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0663cc3571cd215c0ad68c5d378c230336fba3c7f5a2391ce5790bde7a0a3d`  
		Last Modified: Tue, 19 Sep 2017 07:20:25 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722e8fb4277b34359e26676fb6b5acb3eb1b8c8382f162b831ec8e3e89cf6be9`  
		Last Modified: Tue, 19 Sep 2017 07:20:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a72d2c12c8dc86387fb9509839350a65ca2569dd0d38778e52e3482b3ef0fa`  
		Last Modified: Tue, 19 Sep 2017 07:20:31 GMT  
		Size: 12.7 MB (12714647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccd9e312fa3e48bd44f5129271597b33ddd98a0fc3919f9065b406b2c751e9c`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a25465ff809b779efba5e1b66abdb078a6f50f90cb13a9ae4f487ace14abc5`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d772747c1026966c9475d757302d6859cb58084494d20c37f3b9308dcc419bcd`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5791eb3e66c55a512eb3d43672ae998f9a131e1a166514500b8133c1c7531`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358da2c5e2d679c381e20fbf6d61a79c4206f777fce0aeb80b388dcc36fb59f1`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-beta4`

```console
$ docker pull postgres@sha256:6f077f2c9950462808fddc4d01f58b096a41774af6d8b52ad2e7255c41d5f244
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

### `postgres:10-beta4` - linux; amd64

```console
$ docker pull postgres@sha256:99280b954a5216c9e629a21da555429fde0f14caaab6425b36785a06c95182f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117495077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad54720c23de4f9837a38809531714c6170b67aaad9e60dba6604a4e12bdd3f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 06:57:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 06:57:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 06:57:53 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 06:58:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 06:58:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 06:58:12 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 06:58:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 06:58:16 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 06:58:17 GMT
ENV PG_MAJOR=10
# Tue, 19 Sep 2017 06:58:17 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Tue, 19 Sep 2017 06:58:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 06:58:38 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 06:58:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 06:58:39 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 06:58:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 06:58:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 06:58:40 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 06:58:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 06:58:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 06:58:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 06:58:41 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 06:58:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b4d6274d7716c4dbf67b92c421750ef3a6513e385dd48a47146219c7a3d77e`  
		Last Modified: Tue, 19 Sep 2017 07:19:53 GMT  
		Size: 7.2 MB (7218378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2569a32ee6dd4d651bd02f3ea71f60d9bc6969c70c26d6306a7b72cbb1870393`  
		Last Modified: Tue, 19 Sep 2017 07:19:51 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4d0fc31922c229cb33c7c7e01ca0f16ece5822121f709f3a2b61149c07e68`  
		Last Modified: Tue, 19 Sep 2017 07:19:51 GMT  
		Size: 956.6 KB (956564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8275aae461c7d8db771c1c9b3bcbf3a2956555e62e552f4f5d725c56593aac7f`  
		Last Modified: Tue, 19 Sep 2017 07:19:52 GMT  
		Size: 6.6 MB (6577611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45087ee6fc31c023b9208ea548b0490c254cf452728d877cbb1b1cc9906858f0`  
		Last Modified: Tue, 19 Sep 2017 07:19:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2265f720a6572f001f677339179495c0cd3c90403e22bdfdeed22d8b81f5d9`  
		Last Modified: Tue, 19 Sep 2017 07:19:49 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68027e9903da895161837a1e968e290179c32ffe2bf79b2e0ee3b34bbdfbc5a3`  
		Last Modified: Tue, 19 Sep 2017 07:20:04 GMT  
		Size: 57.6 MB (57601151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb45d4664c3f6d65b5bdd779216e67887765cb02ea7c35cd63266916cee4798`  
		Last Modified: Tue, 19 Sep 2017 07:19:47 GMT  
		Size: 7.3 KB (7304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70f0973e05cadb9f94740d3706cedb3f37361f5e504e0e8c2539b8bb5168a3f`  
		Last Modified: Tue, 19 Sep 2017 07:19:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9185121770413eaed4867995f75ea0a5f5e9364e77426099d2618e4c78096667`  
		Last Modified: Tue, 19 Sep 2017 07:19:47 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8e37ab8ad2e40600191993e7c55d6c46603d2b1aaf1bf06b6741398cba2688`  
		Last Modified: Tue, 19 Sep 2017 07:19:47 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c796af3850a779794ab440f23b9868d9afd2c36069d6855251610c05bc372b8`  
		Last Modified: Tue, 19 Sep 2017 07:19:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-beta4` - linux; arm variant v5

```console
$ docker pull postgres@sha256:feccb939777d6665273a26f7de4d473837d7f3dc40ffbb4f2f78ddcb7a8fe7fb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116823031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901d78bdafc60212b4ba8a5c3f13c422226481de99f6c4c6cac003261980a31a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 20:03:39 GMT
ADD file:111ccf88fc474ec03491c012baa75d4f4b3b6d08391bb86364b9fabdf3b57d3e in / 
# Fri, 08 Sep 2017 20:03:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:49:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:49:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:49:52 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 00:10:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 00:14:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 00:14:44 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 00:14:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 00:14:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 00:14:52 GMT
ENV PG_MAJOR=10
# Sat, 09 Sep 2017 00:14:53 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Sat, 09 Sep 2017 00:58:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 00:58:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 00:58:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 00:58:14 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 00:58:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 00:58:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 00:58:19 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 00:58:20 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 00:58:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 00:58:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 00:58:24 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 00:58:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dfcb038706ea089b8e701c5bfce59c00a98c88092993630571599baa72487c2b`  
		Last Modified: Fri, 08 Sep 2017 20:20:29 GMT  
		Size: 43.8 MB (43813379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f80428f4942933b3aea2e5467cd5a87a0ee53433ce430bf66151746057ce74f`  
		Last Modified: Tue, 12 Sep 2017 10:16:29 GMT  
		Size: 7.0 MB (6950702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea55255f8ed5d10195eb6b5fdc3cf43048ed4e224a4648090055f012d40bc733`  
		Last Modified: Tue, 12 Sep 2017 10:16:09 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5119d32d5306be9b95a37b6b786febb7ee14bfdb6e3494a5804ba11316b7a30b`  
		Last Modified: Tue, 12 Sep 2017 10:16:08 GMT  
		Size: 947.0 KB (946967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46ce7189e2aefad5a3c9b1bdb5a1a8ede18dc56137a6729676985d437b1a0da`  
		Last Modified: Tue, 12 Sep 2017 10:16:22 GMT  
		Size: 6.6 MB (6577864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df64714cfdf41c863e30f7688d98b3c46c5a3f991820c925661ba42e9564067`  
		Last Modified: Tue, 12 Sep 2017 10:16:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5788419d98516292ef45fdba9feb1a6909c0fbe74bd8cdba5746a9dc74d6cfcb`  
		Last Modified: Tue, 12 Sep 2017 10:16:01 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136da8e1a43e4998a98a7824b2243a9660fd28048b61a7ffd6bf415695677339`  
		Last Modified: Tue, 12 Sep 2017 10:16:59 GMT  
		Size: 58.5 MB (58518247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1f628955f2389ca2c739df046a3c5c389a174b0bea1535e34c2808e4d9a155`  
		Last Modified: Tue, 12 Sep 2017 10:15:59 GMT  
		Size: 7.3 KB (7302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d132e57924f6c64f726fafedce596a4c085f369772ada6e4516fe5e4313ef554`  
		Last Modified: Tue, 12 Sep 2017 10:15:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ae4da69abe671f892c5fbff19b5da69c2ec47db41863bca8ea509d50d333ef`  
		Last Modified: Tue, 12 Sep 2017 10:15:58 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1727e2d308ec70c21c823b5a6129ba582a6138ff6e3b80016cddea0b698020ae`  
		Last Modified: Tue, 12 Sep 2017 10:15:59 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe058181e06db7413f86eae5256fda589da89b03c657e193c02ad46f584c103e`  
		Last Modified: Tue, 12 Sep 2017 10:15:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-beta4` - linux; arm variant v7

```console
$ docker pull postgres@sha256:886560fcd1dfb8889127d7b5da1de1302199c2f5ac63f02f4c40f49ccc4cd9d4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112769991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00610ab2882ab43781ea0cb203cc7dac91d3392ea47db3f50a98a2ec5f9b7b9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 20:35:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 20:35:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 20:35:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 20:36:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 20:36:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 20:36:51 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 20:36:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 20:37:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 Aug 2017 20:37:46 GMT
ENV PG_MAJOR=10
# Thu, 31 Aug 2017 20:37:47 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Thu, 31 Aug 2017 21:19:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 Aug 2017 21:19:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 Aug 2017 21:19:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 Aug 2017 21:19:38 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Aug 2017 21:19:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 Aug 2017 21:19:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 Aug 2017 21:19:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 Aug 2017 21:19:42 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 31 Aug 2017 21:19:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 21:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 21:19:46 GMT
EXPOSE 5432/tcp
# Thu, 31 Aug 2017 21:19:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39e08712623c47f180d180ae36578eebdca88554201649bd5de9aaea5064788`  
		Last Modified: Fri, 01 Sep 2017 21:00:33 GMT  
		Size: 6.6 MB (6588997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4783598ea377b1bbe34d736f0514427d03a9ce40706fc579923585fe58f0aa50`  
		Last Modified: Fri, 01 Sep 2017 21:00:21 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6f2af760b001bace17c29527368683d3bee8037455956d74da815c0d0fa6b8`  
		Last Modified: Fri, 01 Sep 2017 21:00:17 GMT  
		Size: 931.4 KB (931361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd44efc2656ebee54719a33d6b6a48110d8e57dd7af3fff7d358230d36e8a035`  
		Last Modified: Fri, 01 Sep 2017 21:00:36 GMT  
		Size: 6.6 MB (6577799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2524a818376287fbadd27724e1eb045c4f3a376fef9a7abed3bf67b82f82a35`  
		Last Modified: Fri, 01 Sep 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827cdff65fa31d73e1642f138a9dde775b0080555b74e1de239564c521378c3f`  
		Last Modified: Fri, 01 Sep 2017 21:00:13 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9226cebd4ddb3c219ccea5ba6330409c3d3f7d8aaa4b91c5de5d2c53ae52a86`  
		Last Modified: Fri, 01 Sep 2017 21:01:05 GMT  
		Size: 56.8 MB (56808508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7074a02c561f8d59d53072e72abbb9ea2cfcc18f8c9010b3bcebb921792678`  
		Last Modified: Fri, 01 Sep 2017 21:00:10 GMT  
		Size: 7.3 KB (7306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22bf0b2f538265b15a2c2182bfa81ab56d1d9b7ed2ce5ac6857ae5deafed9c1`  
		Last Modified: Fri, 01 Sep 2017 21:00:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f796b821ca1e0b0231bfe651189a91589dc7b0f40c96eeaff6888fc0559b0040`  
		Last Modified: Fri, 01 Sep 2017 21:00:10 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d16f42faded7deaca196c4c5db0c1dc3c8d474919920fe8b1451fb6d7fe2029`  
		Last Modified: Fri, 01 Sep 2017 21:00:10 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21804ac2607abc8fd75e2a046620db6afc4d3c187d98ad30edca2e619c5a284b`  
		Last Modified: Fri, 01 Sep 2017 21:00:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-beta4` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:86090dcfa2b6f57e9db2277446f54d3965cc4188daf8ff73e9f788239e39adf8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114791894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a512b48c620e7a7dd91cef574e583d4c45aff78e6449f993518c72a6731ea6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:01:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:01:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:01:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:01:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:02:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:02:14 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:02:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:02:27 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 23:02:28 GMT
ENV PG_MAJOR=10
# Fri, 08 Sep 2017 23:02:29 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Fri, 08 Sep 2017 23:42:27 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 23:42:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 23:42:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 23:42:34 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 23:42:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 23:42:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 23:42:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 23:42:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 23:42:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 23:42:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 23:42:46 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 23:42:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae6dd2209912dda6ea265f36c70a03927a208e3e494a0cb3c2daf30959993e`  
		Last Modified: Sat, 09 Sep 2017 02:42:57 GMT  
		Size: 6.8 MB (6793640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1a71cf0444eecf839aa5ecd88be6b1466c0e3aee42c50752f88fe9f01b59f3`  
		Last Modified: Sat, 09 Sep 2017 02:42:54 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1be48186ad4c9ed0570acd0120ffd59e68e88665d84ac30617885946577e16c`  
		Last Modified: Sat, 09 Sep 2017 02:42:52 GMT  
		Size: 924.3 KB (924281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcbf3422485c0875f736bfbed4d85e3c625640bf7885315ebe6b2c6dd70d0e2`  
		Last Modified: Sat, 09 Sep 2017 02:42:54 GMT  
		Size: 6.6 MB (6577515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9f04cfeb59d5ff3d63f107d7f3e3598f98c79de96260986c5a9e5a70dbc94d`  
		Last Modified: Sat, 09 Sep 2017 02:42:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebebe3df239885ae2fa0df0b7fa9fe90f68e1fdd6e48141bce4c72305190e789`  
		Last Modified: Sat, 09 Sep 2017 02:42:52 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f9957749532ce4949d89dc8299ca183ca1a2a72d91bbef87b7b3957f8eea84`  
		Last Modified: Sat, 09 Sep 2017 02:43:12 GMT  
		Size: 57.6 MB (57576501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1cfa90b6615c71f6147a5d534ba5e46e9eaece411185b23f5032a114f2e4b8`  
		Last Modified: Sat, 09 Sep 2017 02:42:48 GMT  
		Size: 7.3 KB (7303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f160dbd02b5dcc74ddbf02618daf2870fd64a9efc737008877323ead4ba65a`  
		Last Modified: Sat, 09 Sep 2017 02:42:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dae3e64dde3f9391b144be89ee9b93c2d07f85f06d85cebee13301a3e93b8b`  
		Last Modified: Sat, 09 Sep 2017 02:42:48 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74bc70602bfd7f4fdd2eae9f800e078668565dd4d776923d6636e27f2f1a8cc`  
		Last Modified: Sat, 09 Sep 2017 02:42:48 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a58dcc46d8de78a966da35d8b7f1c423868c1443413bfd576556483c406563`  
		Last Modified: Sat, 09 Sep 2017 02:42:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-beta4` - linux; 386

```console
$ docker pull postgres@sha256:0bc19ae4e3990206ed17098d9de01762f801e654a8d7945edd8caa7fea854299
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119593766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e62803ffef653fa3932bbcda66f535913a89ecc7f36ad6469af9826c11a151d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:42:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:42:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:42:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:42:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:42:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:42:54 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:42:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:42:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:42:59 GMT
ENV PG_MAJOR=10
# Fri, 08 Sep 2017 15:42:59 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Fri, 08 Sep 2017 15:43:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:43:40 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:43:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:43:41 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:43:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:43:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:43:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:43:43 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:43:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:43:45 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:43:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4275b8f27e501632391eca23495f8029836141eb0ce7534d32c2dcf4192d99d4`  
		Last Modified: Fri, 08 Sep 2017 16:00:34 GMT  
		Size: 7.5 MB (7521941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e5c68ac664cf108a6678ffc8adf49343dd32ab47ca6688122fc9e1d3da5312`  
		Last Modified: Fri, 08 Sep 2017 16:00:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d36e26c3e382835d5f5aa7a01bf48d2665c699f4dcb2f4c903d83b59e12fc9`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 936.4 KB (936414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f98d276db4d972d49b1b6978a475d2c578e60d1cd91555513443104efcdad11`  
		Last Modified: Fri, 08 Sep 2017 16:00:34 GMT  
		Size: 6.6 MB (6577568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c297fa48ec2fb595b2a9a94a3aa97c8f1bdd3d9278f498be6e9b763d48212988`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8631ee268047408af7496be739183a1a98f5e67bd6d599b00361d372d812dc`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a6a71335a68c165f5cd9f1990c1b8a3c5b3ea2c6b344982bb16b116737853e`  
		Last Modified: Fri, 08 Sep 2017 16:00:48 GMT  
		Size: 58.7 MB (58710170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca82b0e2a5981f069fe6257ecef705ef1b92de0fd103217a620acb2384d3312`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 7.3 KB (7302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f68bcf0a6894794baf71f8501bef4698400de5852e15914988ebb7537be2135`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b6e1442d5ea377ed94562bb277410a18f35b1f674d0441b6c68f3c31faa2e7`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2244518451219184d2e9dfec636c11926baf50c5cee6bcb9c83e76520ec6d68`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b914ffda511cfb61ad1e115321227dedb7bfc579b126ab8b8cabbac57532e8`  
		Last Modified: Fri, 08 Sep 2017 16:00:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-beta4` - linux; ppc64le

```console
$ docker pull postgres@sha256:4ecf9cf06d331447221f64b6305ea146c27ecce77410e66ce6cfa6b27094dc20
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117451260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8d38044e925e581a7ae78b0fca45aea762d192603adc28f546ac1fd79b7d3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:35:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:35:57 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:35:57 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:36:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:36:45 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:36:45 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:36:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:36:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:36:49 GMT
ENV PG_MAJOR=10
# Fri, 08 Sep 2017 01:36:49 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Fri, 08 Sep 2017 01:37:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:37:24 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:37:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:37:25 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:37:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:37:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:37:26 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:37:26 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:37:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:37:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:37:27 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:37:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434a4a007450c537e63dad6313f1edbe51eeebdf126c57ef747c2e23633d0d11`  
		Last Modified: Fri, 08 Sep 2017 01:43:47 GMT  
		Size: 7.1 MB (7079145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2e1d5217f48050b34179ec406c8ff448d48ac3676921a85e626cbbf1cbd7dd`  
		Last Modified: Fri, 08 Sep 2017 01:43:45 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e891740016624996ab19eddb6232c0be782dccc528f229383f2cac0246ab5f`  
		Last Modified: Fri, 08 Sep 2017 01:43:43 GMT  
		Size: 925.1 KB (925140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f2debf94571cba7888c23d9911bd1d7f7743bbb26af334099055adcd8ddae7`  
		Last Modified: Fri, 08 Sep 2017 01:43:44 GMT  
		Size: 6.6 MB (6577471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c62a4a9689424fd7a8dce8fb5c567c9a8a7b6a14c64d5db52ea61896bc4c613`  
		Last Modified: Fri, 08 Sep 2017 01:43:43 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a570988b508e0b1d9dd8b4c966d330699cffa977b1bb1e94dc4c965b2711ae`  
		Last Modified: Fri, 08 Sep 2017 01:43:42 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c106f0b44b7ab853c037ef279f0bb88dd83f244dc1fe310e31e3d75c995b1e`  
		Last Modified: Fri, 08 Sep 2017 01:43:57 GMT  
		Size: 57.5 MB (57476856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b8505067b6f8ad23ae0ff1d0dc67c71a229ec17817c0d9086b45589b09edb3`  
		Last Modified: Fri, 08 Sep 2017 01:43:39 GMT  
		Size: 7.3 KB (7301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0d686bbf7fa1d5207fbc003182c7f7a7b5a11d8a53cd126954aaae1e6ecc1c`  
		Last Modified: Fri, 08 Sep 2017 01:43:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65c41f4b1b9d84b602572036790e009697c32a0b381d065de737b618d3e6831`  
		Last Modified: Fri, 08 Sep 2017 01:43:39 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea643adef95084f73faa48cbac986af083403ee2cabb8e4cec53a87b975b52cc`  
		Last Modified: Fri, 08 Sep 2017 01:43:39 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2b4e00c25a3534d8758da7aea064cfef8419a73c1a7065557c636bc0e8619b`  
		Last Modified: Fri, 08 Sep 2017 01:43:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-beta4` - linux; s390x

```console
$ docker pull postgres@sha256:026b9547b914d400937c83082e87dfd60afa5caa4dcd066df703a5b5ad58ea50
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119707124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e2b1ae6c5aafc212e433b54ec29b231cd5ed4ea6ea06149d7d614be6b82e8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:16:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:16:26 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:16:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:16:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:16:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:16:42 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:16:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:16:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:16:46 GMT
ENV PG_MAJOR=10
# Fri, 08 Sep 2017 06:16:47 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Fri, 08 Sep 2017 06:25:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 06:25:46 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 06:25:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 06:25:46 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:25:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 06:25:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 06:25:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 06:25:47 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 06:25:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 06:25:48 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 06:25:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c23052571a712217d5adc7b7d1f63b266bdc4888508a16cf49662873eab06`  
		Last Modified: Fri, 08 Sep 2017 07:09:15 GMT  
		Size: 7.2 MB (7248706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e811a1ff29709eb65ea2d5dd15fecb37331b63c1758c1e0b6333575971c996b`  
		Last Modified: Fri, 08 Sep 2017 07:09:14 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea681979065c1d16e92895c9e519342835b5a712757a74bc38259751d371cb9b`  
		Last Modified: Fri, 08 Sep 2017 07:09:13 GMT  
		Size: 942.2 KB (942229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912fe13ca5882af97c89434c5975b598e06eb3a8606829726dc0fc799c2aa9e8`  
		Last Modified: Fri, 08 Sep 2017 07:09:14 GMT  
		Size: 6.6 MB (6598768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5146aace68c151e3f39b7a512357671fa62600770e45617087a7366d9fc6f5`  
		Last Modified: Fri, 08 Sep 2017 07:09:12 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06684a6cc3df35879757d49b0fe4fc4b1b1c1f8acf3cba4eb626920280c0f67c`  
		Last Modified: Fri, 08 Sep 2017 07:09:12 GMT  
		Size: 4.5 KB (4480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976b111c0df1599101089b74ca085d8adf645c88c8748400fdd271698ecd10e3`  
		Last Modified: Fri, 08 Sep 2017 07:10:31 GMT  
		Size: 59.9 MB (59932999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2784f26546291256fca89a0a731498dd567ef2daeeb24d60b1653acb0654af90`  
		Last Modified: Fri, 08 Sep 2017 07:09:11 GMT  
		Size: 7.3 KB (7301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2761b579332d73406f83a0cbeb08b8b8e720e59e48076a71ce480616b139eb7`  
		Last Modified: Fri, 08 Sep 2017 07:09:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e228c8a7bf06c8baebd4cd4ed07f5c51ea1cb29a03e52c6f62ffc8db0b59a95d`  
		Last Modified: Fri, 08 Sep 2017 07:09:11 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a294713b1311f1d4554c30d83053d1de134fda794113c6bda517ccf3bb97de0a`  
		Last Modified: Fri, 08 Sep 2017 07:09:11 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d42435330d3ed9237cf88086d7a14bc4da8c0305b65ab1b5f9edf00793aa95d`  
		Last Modified: Fri, 08 Sep 2017 07:09:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-beta4-alpine`

```console
$ docker pull postgres@sha256:9ab99815d86e834a96975680af69a9d44833a1bfbcfda6e549ad1db0aca99856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10-beta4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:ded7efd756e171d27b4b2e23fc82564e895b885baf79cf6713281737984d1d34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14714827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8192d2f57c03942f6a0a527ba251d8f168ecbc3149777e99d5b3424cf02417d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 06:58:46 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 06:58:46 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 06:58:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 06:58:47 GMT
ENV PG_MAJOR=10
# Tue, 19 Sep 2017 06:58:47 GMT
ENV PG_VERSION=10beta4
# Tue, 19 Sep 2017 06:58:47 GMT
ENV PG_SHA256=e70ffa84d439033533279ccb3ae7beaa0278585b2b176a767bcd0cbddb1252d2
# Tue, 19 Sep 2017 07:01:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:01:12 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:01:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:01:13 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:01:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:01:14 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:01:14 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:01:14 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:01:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:01:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:01:15 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:01:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0663cc3571cd215c0ad68c5d378c230336fba3c7f5a2391ce5790bde7a0a3d`  
		Last Modified: Tue, 19 Sep 2017 07:20:25 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722e8fb4277b34359e26676fb6b5acb3eb1b8c8382f162b831ec8e3e89cf6be9`  
		Last Modified: Tue, 19 Sep 2017 07:20:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a72d2c12c8dc86387fb9509839350a65ca2569dd0d38778e52e3482b3ef0fa`  
		Last Modified: Tue, 19 Sep 2017 07:20:31 GMT  
		Size: 12.7 MB (12714647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccd9e312fa3e48bd44f5129271597b33ddd98a0fc3919f9065b406b2c751e9c`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a25465ff809b779efba5e1b66abdb078a6f50f90cb13a9ae4f487ace14abc5`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d772747c1026966c9475d757302d6859cb58084494d20c37f3b9308dcc419bcd`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5791eb3e66c55a512eb3d43672ae998f9a131e1a166514500b8133c1c7531`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358da2c5e2d679c381e20fbf6d61a79c4206f777fce0aeb80b388dcc36fb59f1`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:144221a1e46af653bdda2bbb8e46ad3dd0c3f61ec0430030581031937f1d589d
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
$ docker pull postgres@sha256:4fdb7c462038d7e67f85eee9d95794dbd83f32b3143d93c711f544e8793ea5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104065639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1227c4263c8c59af10d93968ad47e154eedbae2c173633cb4a8ccf49ba28fb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:02:15 GMT
ENV PG_MAJOR=9.6
# Tue, 19 Sep 2017 07:02:16 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Tue, 19 Sep 2017 07:03:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:03:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:03:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:03:10 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:03:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:03:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:03:11 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:03:12 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:03:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:03:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:03:13 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:03:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5111d03bdfcebcffc0aac0f2940adb087850166369ef69dbfcb2fb07499a28`  
		Last Modified: Tue, 19 Sep 2017 07:21:01 GMT  
		Size: 43.4 MB (43355982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca8a9c099f89419baee9ac402e862ba517ea2b81983a31bb26ffff49950d20a`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2b99fdddf9ee883955cc6338e5d8bba7d085e7e6c4f8e50c6be296714a7638`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4ad1ab8ef2e937e00a5e69226bcc07cceeb0bfa5397d1728376e635b40ff5b`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:677839861264e2e4ffe1f2b1b0bc4fd429fc7eae8a08bab4d014e6cd5337bd84`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d98194bfad952c49a9b8013fcadbbfc436371924c18a60e28ada6d2eec3f74`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v5

```console
$ docker pull postgres@sha256:d1a131aeda1204ca9616fa39c837434b40fe009021dfe30703a76ee4957b0e01
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96579507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e60fce83a4482e113405f7b23df7947c4bf023e12370b3d7e85fa7aa906a685`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 01:11:35 GMT
ENV PG_MAJOR=9.6
# Sat, 09 Sep 2017 01:11:36 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Tue, 12 Sep 2017 06:51:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 06:51:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 06:51:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 06:51:36 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 06:51:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 06:51:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 06:51:39 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 06:51:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 06:51:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 06:51:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 06:51:44 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 06:51:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fa2f6245765995a90abbe93193ba1639dfb4e7fc087c11345b1e3519d543e5`  
		Last Modified: Tue, 12 Sep 2017 10:18:03 GMT  
		Size: 37.6 MB (37598198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608085701aebcc62f2d219edcd20b4f07b0e75d3f5b23e9870a12a5745158672`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2f28a16c9a0092f60eff440dbda01f07de38674e865fea65ea17e14f34c5b3`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6925025d7db958a515c46e2fadf6d13eb126380b3a54d643cf480fc71b143b3f`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7e5c887cfaaf0f7a6b1662c59ea96269cec90278a01ac8b95a04cfc218b4f8`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce32cbdf65fc09a9d9b0850be683498e9280a3bf8852fb383f7d33aafc39bd7`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v7

```console
$ docker pull postgres@sha256:8facf2298de82094e3597fe0a7f9fdc2cf931fe1aee505c4853091f6c8a00d8a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93178558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8700fbd1782a42613ee76a85778026d810f33451b821616333461a4493a556`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 Aug 2017 21:28:39 GMT
ENV PG_MAJOR=9.6
# Thu, 31 Aug 2017 21:28:39 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Thu, 31 Aug 2017 22:18:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 Aug 2017 22:18:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 Aug 2017 22:18:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 Aug 2017 22:18:53 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Aug 2017 22:18:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 Aug 2017 22:18:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 Aug 2017 22:18:57 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 Aug 2017 22:18:58 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 31 Aug 2017 22:19:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 22:19:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 22:19:03 GMT
EXPOSE 5432/tcp
# Thu, 31 Aug 2017 22:19:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d041a82ccd92ed1728803a1894ed0defdbd7d6e9d653bcf64d1d36fc5654`  
		Last Modified: Fri, 01 Sep 2017 21:02:11 GMT  
		Size: 36.4 MB (36397930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5d6628c4417ab1c45465003ab0df7bceefc78cbb6f88936a83f0a9a7f916e8`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c067b42d18cab8bb389679324b7793c2b58945aef3176a17bac35e4d67a1ef`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158e30ec009bea8ace73be54db7ea45a6d47a7880af8f385aec250ae8ce752c3`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d2a237e2bfbbe35b42e015f56a5f0f050cbe53acb8d220b745785aa9a4cf1`  
		Last Modified: Fri, 01 Sep 2017 21:01:31 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e51cf292fed8e286b872b80b10df2d1392f1d801041874fe0dbd13326226c4e`  
		Last Modified: Fri, 01 Sep 2017 21:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f80dc2795e9d8fe7999e4255c73812b131404b27cc8373dafd785e44fdab45df
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95155573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721c6c56ceb2129a8b6805463ad1b7d9e8593f3e0a2aa5b87db1a635c83e2d20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 23:45:10 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 23:45:11 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Sat, 09 Sep 2017 00:25:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 00:25:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 00:25:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 00:25:17 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 00:25:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 00:25:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 00:25:20 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 00:25:21 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 00:25:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 00:25:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 00:25:25 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 00:25:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ed3a41cc652aa346acbb0f65c6f9945f80da65406cf3aae26cf569fd130b37`  
		Last Modified: Sat, 09 Sep 2017 02:43:52 GMT  
		Size: 37.1 MB (37145050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47ba00d97c6783154c89f143092848a5030e3e0bad27e8578f96b9779f40b7e`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c984a74d41bc82cb9fe00dadf875cd424fa97ba307148b915d9429824da2678`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beb2e73e2f4ae30c23d03669b883f10ee8923e1b54daedcceb5f10d0b942f52`  
		Last Modified: Sat, 09 Sep 2017 02:43:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a301a920e52e601d9104389f6ba9e292b61ffbc109554df8b09bdf4fe18fbc7`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2961f7f2d32fcfac0d5fd16324aa97191ddf34319428bf3bc5f825154e15092`  
		Last Modified: Sat, 09 Sep 2017 02:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; 386

```console
$ docker pull postgres@sha256:4c88a52e6fe16220ee7bfcb7fb99f10191aa2fa3e5feb3a47b19677e59ebfe25
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106024583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337e6527c76be5530dda9bd2d4e8f4f53ecd2f711df1e6c54556b12f9b35548e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:45:24 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 15:45:24 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 15:47:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:47:30 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:47:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:47:32 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:47:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:47:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:47:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:47:33 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:47:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:47:35 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:47:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1ad3897ad4ddd7dff5e4a1527f0cc0618e13ed5999dbf08a7ad6d96d46eb6b`  
		Last Modified: Fri, 08 Sep 2017 16:01:25 GMT  
		Size: 45.2 MB (45158524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebc9895c79bff683ea10c61dcdd8258dedf35ca664009ddd46b883dce690f26`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e407853a56a4788b634efa2d602d02e8d5e09298bc90c4e8a58b3fc573942cba`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8116cb6b6e6011cc3a7e037fb6c019f3add378d85952910bbedc4f05ad01c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898c7320c7b1c9b85586fa7cf78d86a560c3cee31a72c81e603ab77fccd44418`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bf3aef489a78f3885362c2ee9d4749e155baa9ea3e209f0ec5f915960b4371`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; ppc64le

```console
$ docker pull postgres@sha256:99f2583d5be605c436afe4bb22a77e7f2df55eb38ca6893c5340f7eca231a1e1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102264543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ff48cc6bedb39f528123984f1c0aeb82dc1abb222e548eee6ac2e513967d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:38:21 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 01:38:22 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 01:39:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:39:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:39:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:39:16 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:39:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:39:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:39:17 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:39:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:39:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:39:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:39:19 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:39:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58efb6adbd28c83040fdb59fe204c4e526a9e51e3e26ec3582d23031dd2b2ee`  
		Last Modified: Fri, 08 Sep 2017 01:44:27 GMT  
		Size: 42.4 MB (42372182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6b270c9cafbfaf1ada8665bd2d7ca3128e4dfa876f93c317f1e924269e36d3`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2f0724273e20255f50b26fbde0481215c4326f53f225b0eae1400458818fa0`  
		Last Modified: Fri, 08 Sep 2017 01:44:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5c722701cf85da119c31c7487026ad706432b02e42a2d919b492111eb1ddba`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f66128af7e88bace7ee239f67c769f2348218d333b7c5a49d354977f7e4661c`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c09e22b084cbba3bc9d01d8ff0ab5e13e49d9bd67fbb2d8483d09a0e0de2d2`  
		Last Modified: Fri, 08 Sep 2017 01:44:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; s390x

```console
$ docker pull postgres@sha256:b28aaaa4365594a567179c5b67548cda5df81f755756965291c960aa81ca56ef
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100566753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d132cabf41895dd1685d0ad77a02d6b1a090784b772f01803ec7379ff1b536`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:26:26 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 06:26:26 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 06:35:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 06:35:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 06:35:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 06:35:51 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:35:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 06:35:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 06:35:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 06:35:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:35:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 06:35:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 06:35:52 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 06:35:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634bcfae229d3e353c380a34be6ca3b31c4f3c05cc085d320e538aa643a1ee3a`  
		Last Modified: Fri, 08 Sep 2017 07:10:48 GMT  
		Size: 39.7 MB (39660501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0caa17d671ee7963b28bb5f93d6de481e5aa62612ec0731e9ea35118220af9`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 7.1 KB (7103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af83523678e63c2acf314edae41aaa11743a7251dc0622e1e16f34311650ab1`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84f8bf0d2bbcc8eb0304a2d082fb9271fa4befa055359632e1694f8ee27a4e6`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994fead2becab397901820861ce4ad9bb8b2bc8d4a61476cb23dbcf39465774`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850608b76a01570b0b66c0f20383a1830addaf980edcf2b1769352875dc36056`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:b8307c06f5646e6a9cc092dc442d0f92025168c9f5822167778bf956ff4cd27a
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

### `postgres:9.2` - linux; amd64

```console
$ docker pull postgres@sha256:af5938a226b76a261dca124bab83e95896baa8c7adfb60ebd48544ac29db552d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.6 MB (102648109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18cdbca56093c841d28e629eb8acd4224afe0aa4c57c839351fc181888b8a470`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:16:28 GMT
ENV PG_MAJOR=9.2
# Tue, 19 Sep 2017 07:16:29 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Tue, 19 Sep 2017 07:17:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:17:16 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:17:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:17:17 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:17:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:17:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:17:18 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:17:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:17:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:17:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:17:19 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:17:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95a6c122c250391ec6d2025e1dd40e3510e5af58d4dc7ec3b6eae54aeaf9d87`  
		Last Modified: Tue, 19 Sep 2017 07:24:41 GMT  
		Size: 41.9 MB (41939109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbea52142c18351cbd230b9444e0fbab60662dcb38553ad84da1f6c1b648bfe`  
		Last Modified: Tue, 19 Sep 2017 07:24:31 GMT  
		Size: 6.4 KB (6449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e40e1e1cf400a0333b4428b63ae744e06f78120a0829465050163989ca4f244`  
		Last Modified: Tue, 19 Sep 2017 07:24:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245f745df1bdaf46a3d9e015cacc6b63dce3cd2e4859d8631ea085a017533476`  
		Last Modified: Tue, 19 Sep 2017 07:24:32 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdf14fed084f80b588d71b96cdc07eba4c87850dc156b3471e432cf59e868ba`  
		Last Modified: Tue, 19 Sep 2017 07:24:32 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f346ef00de4f62200ec92852567cd471354d79e647f52a22e95238dfe4f67a0`  
		Last Modified: Tue, 19 Sep 2017 07:24:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2` - linux; arm variant v5

```console
$ docker pull postgres@sha256:850d8dbd83f03f1efa12e791e3174ca2571e3333282c8fd459804e3416b4c388
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95235600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58edff138c7f61d93cbfcebd0f85d59b8949166cff5f0927962910b2cdb809d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 09:27:46 GMT
ENV PG_MAJOR=9.2
# Tue, 12 Sep 2017 09:27:47 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Tue, 12 Sep 2017 10:15:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 10:15:10 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 10:15:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 10:15:12 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 10:15:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 10:15:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 10:15:16 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 10:15:17 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 10:15:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 10:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 10:15:21 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 10:15:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8114152b9e8b31010463099733602425759256632c65ca4abe158787b740066f`  
		Last Modified: Tue, 12 Sep 2017 10:21:53 GMT  
		Size: 36.3 MB (36254951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88c78eaed09051a7082c8b591dff34d88a2312baeb21eb9c95511bb7de776c`  
		Last Modified: Tue, 12 Sep 2017 10:21:22 GMT  
		Size: 6.4 KB (6445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bee79e033214b7cebc8bf08dea3dbfd47c4a41355b50cafc93b70ffd88e834`  
		Last Modified: Tue, 12 Sep 2017 10:21:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e62b80c79fd8a590ec2ff1fbf671756107c6d6b9f12f564b1613c39abb5148`  
		Last Modified: Tue, 12 Sep 2017 10:21:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e8d55196b0e3033720baf412d73ba7b5efd472812d658bb7169a527e947cd2`  
		Last Modified: Tue, 12 Sep 2017 10:21:22 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b42fce4c5585f0c12c89c13a14ee72ec9d5d91ecc8be5fd4a46f277b0fdcb04`  
		Last Modified: Tue, 12 Sep 2017 10:21:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2` - linux; arm variant v7

```console
$ docker pull postgres@sha256:5bad9ca61d6cbdbe983d8449baf8c8e13a29961a95acaa77720f94658b075ece
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91910578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c9461877bf8b0694aedf5e2bc71fd5838ad3659512b25ff81ef37eaf0401f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 01 Sep 2017 20:15:58 GMT
ENV PG_MAJOR=9.2
# Fri, 01 Sep 2017 20:15:59 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Fri, 01 Sep 2017 20:59:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 01 Sep 2017 20:59:15 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 01 Sep 2017 20:59:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 01 Sep 2017 20:59:18 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Sep 2017 20:59:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 01 Sep 2017 20:59:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 01 Sep 2017 20:59:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 01 Sep 2017 20:59:22 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:59:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 01 Sep 2017 20:59:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Sep 2017 20:59:26 GMT
EXPOSE 5432/tcp
# Fri, 01 Sep 2017 20:59:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f25631c8a54232f22e0aa16b8749e0f74fc681a2b72bf0a16b9fe3eed03d94b`  
		Last Modified: Fri, 01 Sep 2017 21:06:00 GMT  
		Size: 35.1 MB (35130604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3a4382ef816b51e3ef1e2e8abbea0b9f1e1a5990d9391a61574f0b47c636c9`  
		Last Modified: Fri, 01 Sep 2017 21:05:31 GMT  
		Size: 6.5 KB (6451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f890ae5d9f114e8051482c28897f28fc817e1389f80f2b13f49f56429bfda7f`  
		Last Modified: Fri, 01 Sep 2017 21:05:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b5e60588d5c49d981eab815966d819ad8f9f9593274beb3347ee7137cbf295`  
		Last Modified: Fri, 01 Sep 2017 21:05:31 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6f9d5a5225a0ac8b9d928f0a5f0c786c7fc388f38a700e98041a2d31c1eed7`  
		Last Modified: Fri, 01 Sep 2017 21:05:31 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71011053ccc36b1970681fb368970ac734de66c2c86c042dd882e1eaa75c1840`  
		Last Modified: Fri, 01 Sep 2017 21:05:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:7107ccc70fb129876082ecb2d3b3f4bc31d3d894afc79e4429dcebc39bf21912
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93828453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f394c4c5d15939c33fe0f078a092ab007b43a1430cba5b9147e94fe39cd75f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 02:11:27 GMT
ENV PG_MAJOR=9.2
# Sat, 09 Sep 2017 02:11:28 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Sat, 09 Sep 2017 02:42:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 02:42:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 02:42:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 02:42:20 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 02:42:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 02:42:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 02:42:24 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 02:42:25 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:42:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 02:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:42:30 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 02:42:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77b03cfbafbafb0731a85e4cf473aec7494bdc19df032d9a569d4428f1dc2fb`  
		Last Modified: Sat, 09 Sep 2017 02:46:38 GMT  
		Size: 35.8 MB (35818592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71abf5df07ea439acacb12dc03c5659480acb5f267a67a6dac0516c2245e287a`  
		Last Modified: Sat, 09 Sep 2017 02:46:21 GMT  
		Size: 6.4 KB (6445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40eba7a5b83483cdde76c2d3d17b66b1f016270be1bcfc7fbe923e13af886f7`  
		Last Modified: Sat, 09 Sep 2017 02:46:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e897090403dd2ffbc5655c7782edaa70a4acbf49b45a0f46b805cea36a1b137`  
		Last Modified: Sat, 09 Sep 2017 02:46:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9043f436eb7b5a25ae48b76a980f30176aeb18dcc08e268de321725e9cddb42`  
		Last Modified: Sat, 09 Sep 2017 02:46:21 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49aee6f4806571db43eaccab8e751cda70c3288cf6183449f015923b249b5966`  
		Last Modified: Sat, 09 Sep 2017 02:46:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2` - linux; 386

```console
$ docker pull postgres@sha256:7e512df42d93b87e37c51b359c2cb66bf4122ec7f4c1a782509342312e97e4f0
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104580244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3829b8fc980eeb6dce150b32a9d9cca92b95c46dfb3a859ce625428542f48500`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:58:51 GMT
ENV PG_MAJOR=9.2
# Fri, 08 Sep 2017 15:58:51 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Fri, 08 Sep 2017 16:00:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 16:00:11 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 16:00:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 16:00:11 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 16:00:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 16:00:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 16:00:12 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 16:00:13 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 16:00:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 16:00:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 16:00:14 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 16:00:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dad50e96c5ae538b40b187098da72621ac09fd0bd8caecceebd10e206fbcb9`  
		Last Modified: Fri, 08 Sep 2017 16:06:33 GMT  
		Size: 43.7 MB (43714845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16e1cb60006a201e975c6b0b5f3f751261219ffb0902d615500e468d8bcecd8`  
		Last Modified: Fri, 08 Sep 2017 16:06:17 GMT  
		Size: 6.4 KB (6448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ee0d351b9f886be6c4630bb030173cf239bbb8ebaa494bdb7093898e839954`  
		Last Modified: Fri, 08 Sep 2017 16:06:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9820a0dd1f9e76e5ae08492cdfeff6c5c250883ab6b755307be48a9dd4e3233a`  
		Last Modified: Fri, 08 Sep 2017 16:06:17 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579aba33967f2e3349e8605bf7480e6e277fd0fd7a3940bad96629805ea5b34c`  
		Last Modified: Fri, 08 Sep 2017 16:06:17 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ed326332a91178ba86613c2c7402ac76139bd9b82eaef4b18137c0421e66e1`  
		Last Modified: Fri, 08 Sep 2017 16:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2` - linux; ppc64le

```console
$ docker pull postgres@sha256:66d3698c47c4d5daddb5659f55486522a19182308e01f2e5c12bc147337e7092
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100899469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375d3212dd6da1f112bc04954f4b88745a8fb688da30495467ebe2e73bdf99b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:42:34 GMT
ENV PG_MAJOR=9.2
# Fri, 08 Sep 2017 01:42:34 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Fri, 08 Sep 2017 01:43:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:43:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:43:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:43:28 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:43:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:43:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:43:29 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:43:30 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:43:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:43:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:43:31 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:43:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e081548d172f571aa0990648e7115ef6a454c7dd86bc8a2ef404a4b5cee59b`  
		Last Modified: Fri, 08 Sep 2017 01:46:43 GMT  
		Size: 41.0 MB (41007772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf7ef0c856d652ae9a8f3d4598c74b96ce82acd28171cfd13452b71031a8cf0`  
		Last Modified: Fri, 08 Sep 2017 01:46:29 GMT  
		Size: 6.4 KB (6446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c676de7736a2e5aa3b5de536ede15aea3684d1a8e14c15189b7301c008872fa9`  
		Last Modified: Fri, 08 Sep 2017 01:46:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2008d2a0667b98e8f2c3c2255e17effbe14b93cd628e51b337bc671f8ba27d5d`  
		Last Modified: Fri, 08 Sep 2017 01:46:29 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed30715d37810584dc12645fdadc3e3594dcb6a1730a025e0e3dd9de301e62d1`  
		Last Modified: Fri, 08 Sep 2017 01:46:29 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56db17254b2ba902a08cd4e6e82bd757fe202e33327561a8b75f8e2e9b2198d6`  
		Last Modified: Fri, 08 Sep 2017 01:46:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2` - linux; s390x

```console
$ docker pull postgres@sha256:e4b8b49664c7dfdf69482f4f6b7093737c3e80ff532d485aeeccd313a7024641
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99103863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116841674236d8d903e8a66f902d313ac7e2823992766b6c672575b9023fbec3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:01:03 GMT
ENV PG_MAJOR=9.2
# Fri, 08 Sep 2017 07:01:03 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Fri, 08 Sep 2017 07:08:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 07:08:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 07:08:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 07:08:52 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:08:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 07:08:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 07:08:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 07:08:53 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:08:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:08:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:08:54 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 07:08:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52eb89cb32d5211011be324700ec3ef2e0dfd472c51cc72d021460a21d01912a`  
		Last Modified: Fri, 08 Sep 2017 07:12:08 GMT  
		Size: 38.2 MB (38198275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2e7ce9a87db36eba7be8584f9d2afad6879e01a0382ff329e2ea84a90bb22c`  
		Last Modified: Fri, 08 Sep 2017 07:11:59 GMT  
		Size: 6.4 KB (6443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b95f29179eaf2abb5091c2f8d91ce5955e799b5aaeac9d5fa3461dc645ff11`  
		Last Modified: Fri, 08 Sep 2017 07:11:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5504f9d1a6be4322f6f719bda956accbd8294b60ab044396bac45c3fa82fd1d0`  
		Last Modified: Fri, 08 Sep 2017 07:11:59 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e9966b5a4525762247aa4231011c5eca27e21a707dd7b211ea9a67f1ae82e4`  
		Last Modified: Fri, 08 Sep 2017 07:11:59 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03966440eca68a4e5899680e52be5ec1fd2b8afa2c869a0fd4fbb239f2bbd080`  
		Last Modified: Fri, 08 Sep 2017 07:11:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.23`

```console
$ docker pull postgres@sha256:b8307c06f5646e6a9cc092dc442d0f92025168c9f5822167778bf956ff4cd27a
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

### `postgres:9.2.23` - linux; amd64

```console
$ docker pull postgres@sha256:af5938a226b76a261dca124bab83e95896baa8c7adfb60ebd48544ac29db552d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.6 MB (102648109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18cdbca56093c841d28e629eb8acd4224afe0aa4c57c839351fc181888b8a470`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:16:28 GMT
ENV PG_MAJOR=9.2
# Tue, 19 Sep 2017 07:16:29 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Tue, 19 Sep 2017 07:17:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:17:16 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:17:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:17:17 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:17:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:17:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:17:18 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:17:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:17:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:17:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:17:19 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:17:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95a6c122c250391ec6d2025e1dd40e3510e5af58d4dc7ec3b6eae54aeaf9d87`  
		Last Modified: Tue, 19 Sep 2017 07:24:41 GMT  
		Size: 41.9 MB (41939109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbea52142c18351cbd230b9444e0fbab60662dcb38553ad84da1f6c1b648bfe`  
		Last Modified: Tue, 19 Sep 2017 07:24:31 GMT  
		Size: 6.4 KB (6449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e40e1e1cf400a0333b4428b63ae744e06f78120a0829465050163989ca4f244`  
		Last Modified: Tue, 19 Sep 2017 07:24:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245f745df1bdaf46a3d9e015cacc6b63dce3cd2e4859d8631ea085a017533476`  
		Last Modified: Tue, 19 Sep 2017 07:24:32 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdf14fed084f80b588d71b96cdc07eba4c87850dc156b3471e432cf59e868ba`  
		Last Modified: Tue, 19 Sep 2017 07:24:32 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f346ef00de4f62200ec92852567cd471354d79e647f52a22e95238dfe4f67a0`  
		Last Modified: Tue, 19 Sep 2017 07:24:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2.23` - linux; arm variant v5

```console
$ docker pull postgres@sha256:850d8dbd83f03f1efa12e791e3174ca2571e3333282c8fd459804e3416b4c388
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95235600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58edff138c7f61d93cbfcebd0f85d59b8949166cff5f0927962910b2cdb809d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 09:27:46 GMT
ENV PG_MAJOR=9.2
# Tue, 12 Sep 2017 09:27:47 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Tue, 12 Sep 2017 10:15:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 10:15:10 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 10:15:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 10:15:12 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 10:15:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 10:15:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 10:15:16 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 10:15:17 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 10:15:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 10:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 10:15:21 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 10:15:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8114152b9e8b31010463099733602425759256632c65ca4abe158787b740066f`  
		Last Modified: Tue, 12 Sep 2017 10:21:53 GMT  
		Size: 36.3 MB (36254951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88c78eaed09051a7082c8b591dff34d88a2312baeb21eb9c95511bb7de776c`  
		Last Modified: Tue, 12 Sep 2017 10:21:22 GMT  
		Size: 6.4 KB (6445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bee79e033214b7cebc8bf08dea3dbfd47c4a41355b50cafc93b70ffd88e834`  
		Last Modified: Tue, 12 Sep 2017 10:21:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e62b80c79fd8a590ec2ff1fbf671756107c6d6b9f12f564b1613c39abb5148`  
		Last Modified: Tue, 12 Sep 2017 10:21:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e8d55196b0e3033720baf412d73ba7b5efd472812d658bb7169a527e947cd2`  
		Last Modified: Tue, 12 Sep 2017 10:21:22 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b42fce4c5585f0c12c89c13a14ee72ec9d5d91ecc8be5fd4a46f277b0fdcb04`  
		Last Modified: Tue, 12 Sep 2017 10:21:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:5bad9ca61d6cbdbe983d8449baf8c8e13a29961a95acaa77720f94658b075ece
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91910578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c9461877bf8b0694aedf5e2bc71fd5838ad3659512b25ff81ef37eaf0401f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 01 Sep 2017 20:15:58 GMT
ENV PG_MAJOR=9.2
# Fri, 01 Sep 2017 20:15:59 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Fri, 01 Sep 2017 20:59:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 01 Sep 2017 20:59:15 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 01 Sep 2017 20:59:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 01 Sep 2017 20:59:18 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Sep 2017 20:59:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 01 Sep 2017 20:59:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 01 Sep 2017 20:59:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 01 Sep 2017 20:59:22 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:59:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 01 Sep 2017 20:59:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Sep 2017 20:59:26 GMT
EXPOSE 5432/tcp
# Fri, 01 Sep 2017 20:59:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f25631c8a54232f22e0aa16b8749e0f74fc681a2b72bf0a16b9fe3eed03d94b`  
		Last Modified: Fri, 01 Sep 2017 21:06:00 GMT  
		Size: 35.1 MB (35130604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3a4382ef816b51e3ef1e2e8abbea0b9f1e1a5990d9391a61574f0b47c636c9`  
		Last Modified: Fri, 01 Sep 2017 21:05:31 GMT  
		Size: 6.5 KB (6451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f890ae5d9f114e8051482c28897f28fc817e1389f80f2b13f49f56429bfda7f`  
		Last Modified: Fri, 01 Sep 2017 21:05:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b5e60588d5c49d981eab815966d819ad8f9f9593274beb3347ee7137cbf295`  
		Last Modified: Fri, 01 Sep 2017 21:05:31 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6f9d5a5225a0ac8b9d928f0a5f0c786c7fc388f38a700e98041a2d31c1eed7`  
		Last Modified: Fri, 01 Sep 2017 21:05:31 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71011053ccc36b1970681fb368970ac734de66c2c86c042dd882e1eaa75c1840`  
		Last Modified: Fri, 01 Sep 2017 21:05:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:7107ccc70fb129876082ecb2d3b3f4bc31d3d894afc79e4429dcebc39bf21912
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93828453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f394c4c5d15939c33fe0f078a092ab007b43a1430cba5b9147e94fe39cd75f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 02:11:27 GMT
ENV PG_MAJOR=9.2
# Sat, 09 Sep 2017 02:11:28 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Sat, 09 Sep 2017 02:42:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 02:42:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 02:42:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 02:42:20 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 02:42:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 02:42:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 02:42:24 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 02:42:25 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:42:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 02:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:42:30 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 02:42:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77b03cfbafbafb0731a85e4cf473aec7494bdc19df032d9a569d4428f1dc2fb`  
		Last Modified: Sat, 09 Sep 2017 02:46:38 GMT  
		Size: 35.8 MB (35818592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71abf5df07ea439acacb12dc03c5659480acb5f267a67a6dac0516c2245e287a`  
		Last Modified: Sat, 09 Sep 2017 02:46:21 GMT  
		Size: 6.4 KB (6445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40eba7a5b83483cdde76c2d3d17b66b1f016270be1bcfc7fbe923e13af886f7`  
		Last Modified: Sat, 09 Sep 2017 02:46:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e897090403dd2ffbc5655c7782edaa70a4acbf49b45a0f46b805cea36a1b137`  
		Last Modified: Sat, 09 Sep 2017 02:46:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9043f436eb7b5a25ae48b76a980f30176aeb18dcc08e268de321725e9cddb42`  
		Last Modified: Sat, 09 Sep 2017 02:46:21 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49aee6f4806571db43eaccab8e751cda70c3288cf6183449f015923b249b5966`  
		Last Modified: Sat, 09 Sep 2017 02:46:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2.23` - linux; 386

```console
$ docker pull postgres@sha256:7e512df42d93b87e37c51b359c2cb66bf4122ec7f4c1a782509342312e97e4f0
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104580244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3829b8fc980eeb6dce150b32a9d9cca92b95c46dfb3a859ce625428542f48500`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:58:51 GMT
ENV PG_MAJOR=9.2
# Fri, 08 Sep 2017 15:58:51 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Fri, 08 Sep 2017 16:00:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 16:00:11 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 16:00:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 16:00:11 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 16:00:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 16:00:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 16:00:12 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 16:00:13 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 16:00:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 16:00:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 16:00:14 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 16:00:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dad50e96c5ae538b40b187098da72621ac09fd0bd8caecceebd10e206fbcb9`  
		Last Modified: Fri, 08 Sep 2017 16:06:33 GMT  
		Size: 43.7 MB (43714845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16e1cb60006a201e975c6b0b5f3f751261219ffb0902d615500e468d8bcecd8`  
		Last Modified: Fri, 08 Sep 2017 16:06:17 GMT  
		Size: 6.4 KB (6448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ee0d351b9f886be6c4630bb030173cf239bbb8ebaa494bdb7093898e839954`  
		Last Modified: Fri, 08 Sep 2017 16:06:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9820a0dd1f9e76e5ae08492cdfeff6c5c250883ab6b755307be48a9dd4e3233a`  
		Last Modified: Fri, 08 Sep 2017 16:06:17 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579aba33967f2e3349e8605bf7480e6e277fd0fd7a3940bad96629805ea5b34c`  
		Last Modified: Fri, 08 Sep 2017 16:06:17 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ed326332a91178ba86613c2c7402ac76139bd9b82eaef4b18137c0421e66e1`  
		Last Modified: Fri, 08 Sep 2017 16:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:66d3698c47c4d5daddb5659f55486522a19182308e01f2e5c12bc147337e7092
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100899469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375d3212dd6da1f112bc04954f4b88745a8fb688da30495467ebe2e73bdf99b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:42:34 GMT
ENV PG_MAJOR=9.2
# Fri, 08 Sep 2017 01:42:34 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Fri, 08 Sep 2017 01:43:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:43:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:43:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:43:28 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:43:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:43:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:43:29 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:43:30 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:43:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:43:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:43:31 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:43:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e081548d172f571aa0990648e7115ef6a454c7dd86bc8a2ef404a4b5cee59b`  
		Last Modified: Fri, 08 Sep 2017 01:46:43 GMT  
		Size: 41.0 MB (41007772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf7ef0c856d652ae9a8f3d4598c74b96ce82acd28171cfd13452b71031a8cf0`  
		Last Modified: Fri, 08 Sep 2017 01:46:29 GMT  
		Size: 6.4 KB (6446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c676de7736a2e5aa3b5de536ede15aea3684d1a8e14c15189b7301c008872fa9`  
		Last Modified: Fri, 08 Sep 2017 01:46:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2008d2a0667b98e8f2c3c2255e17effbe14b93cd628e51b337bc671f8ba27d5d`  
		Last Modified: Fri, 08 Sep 2017 01:46:29 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed30715d37810584dc12645fdadc3e3594dcb6a1730a025e0e3dd9de301e62d1`  
		Last Modified: Fri, 08 Sep 2017 01:46:29 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56db17254b2ba902a08cd4e6e82bd757fe202e33327561a8b75f8e2e9b2198d6`  
		Last Modified: Fri, 08 Sep 2017 01:46:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.2.23` - linux; s390x

```console
$ docker pull postgres@sha256:e4b8b49664c7dfdf69482f4f6b7093737c3e80ff532d485aeeccd313a7024641
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99103863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116841674236d8d903e8a66f902d313ac7e2823992766b6c672575b9023fbec3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:01:03 GMT
ENV PG_MAJOR=9.2
# Fri, 08 Sep 2017 07:01:03 GMT
ENV PG_VERSION=9.2.23-1.pgdg80+1
# Fri, 08 Sep 2017 07:08:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 07:08:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 07:08:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 07:08:52 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:08:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 07:08:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 07:08:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 07:08:53 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:08:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:08:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:08:54 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 07:08:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52eb89cb32d5211011be324700ec3ef2e0dfd472c51cc72d021460a21d01912a`  
		Last Modified: Fri, 08 Sep 2017 07:12:08 GMT  
		Size: 38.2 MB (38198275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2e7ce9a87db36eba7be8584f9d2afad6879e01a0382ff329e2ea84a90bb22c`  
		Last Modified: Fri, 08 Sep 2017 07:11:59 GMT  
		Size: 6.4 KB (6443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b95f29179eaf2abb5091c2f8d91ce5955e799b5aaeac9d5fa3461dc645ff11`  
		Last Modified: Fri, 08 Sep 2017 07:11:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5504f9d1a6be4322f6f719bda956accbd8294b60ab044396bac45c3fa82fd1d0`  
		Last Modified: Fri, 08 Sep 2017 07:11:59 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e9966b5a4525762247aa4231011c5eca27e21a707dd7b211ea9a67f1ae82e4`  
		Last Modified: Fri, 08 Sep 2017 07:11:59 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03966440eca68a4e5899680e52be5ec1fd2b8afa2c869a0fd4fbb239f2bbd080`  
		Last Modified: Fri, 08 Sep 2017 07:11:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.23-alpine`

```console
$ docker pull postgres@sha256:95e267bf68664c45f7d747246ac892858fc3363f7d754120e8cf38e249612211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.2.23-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:e4ac639c3b110407d9042af8f0948d704fd7fef12f2d6ea15d14bb5305b46072
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13784289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be903f0d7f8cc0424d932d1a0b47044a96509bfac23d46d31fc856465272b86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:17:28 GMT
ENV PG_MAJOR=9.2
# Tue, 19 Sep 2017 07:17:29 GMT
ENV PG_VERSION=9.2.23
# Tue, 19 Sep 2017 07:17:29 GMT
ENV PG_SHA256=0e6ecdfeed69030dac8d219ecd4c350ce45e9f2caa9d73e166e407e87afec450
# Tue, 19 Sep 2017 07:17:29 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 19 Sep 2017 07:17:29 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 19 Sep 2017 07:19:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:19:25 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:19:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:19:26 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:19:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:19:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:19:27 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:19:27 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:19:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:19:28 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:19:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c1fcaf28c2403bc1389bed6cdbd1f169a027840916a4b487edeeea1fc3526d`  
		Last Modified: Tue, 19 Sep 2017 07:25:02 GMT  
		Size: 11.8 MB (11805101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c04ac2a6324b178667b40ce7092856ca122247a19df6f2dd4a8d04318b051`  
		Last Modified: Tue, 19 Sep 2017 07:24:57 GMT  
		Size: 6.4 KB (6412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ff93668780b9a01af6f6d114edda3cf594344bc196fd8ed07c8ebb3736726f`  
		Last Modified: Tue, 19 Sep 2017 07:24:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3a3c4d5ecdb72690bdfac7cc96f518c3da3b84c2c040c8cfedc73938cdb251`  
		Last Modified: Tue, 19 Sep 2017 07:24:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2c22c8630344c5b636d4f78ddda2ba08914c2e52620267ef9d82162fd1df37`  
		Last Modified: Tue, 19 Sep 2017 07:24:57 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fa3e98894155516299dba8138e58e2368d9d43288c4f923730e90b97586e61`  
		Last Modified: Tue, 19 Sep 2017 07:24:57 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:95e267bf68664c45f7d747246ac892858fc3363f7d754120e8cf38e249612211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:e4ac639c3b110407d9042af8f0948d704fd7fef12f2d6ea15d14bb5305b46072
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13784289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be903f0d7f8cc0424d932d1a0b47044a96509bfac23d46d31fc856465272b86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:17:28 GMT
ENV PG_MAJOR=9.2
# Tue, 19 Sep 2017 07:17:29 GMT
ENV PG_VERSION=9.2.23
# Tue, 19 Sep 2017 07:17:29 GMT
ENV PG_SHA256=0e6ecdfeed69030dac8d219ecd4c350ce45e9f2caa9d73e166e407e87afec450
# Tue, 19 Sep 2017 07:17:29 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 19 Sep 2017 07:17:29 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 19 Sep 2017 07:19:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:19:25 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:19:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:19:26 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:19:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:19:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:19:27 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:19:27 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:19:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:19:28 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:19:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c1fcaf28c2403bc1389bed6cdbd1f169a027840916a4b487edeeea1fc3526d`  
		Last Modified: Tue, 19 Sep 2017 07:25:02 GMT  
		Size: 11.8 MB (11805101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c04ac2a6324b178667b40ce7092856ca122247a19df6f2dd4a8d04318b051`  
		Last Modified: Tue, 19 Sep 2017 07:24:57 GMT  
		Size: 6.4 KB (6412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ff93668780b9a01af6f6d114edda3cf594344bc196fd8ed07c8ebb3736726f`  
		Last Modified: Tue, 19 Sep 2017 07:24:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3a3c4d5ecdb72690bdfac7cc96f518c3da3b84c2c040c8cfedc73938cdb251`  
		Last Modified: Tue, 19 Sep 2017 07:24:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2c22c8630344c5b636d4f78ddda2ba08914c2e52620267ef9d82162fd1df37`  
		Last Modified: Tue, 19 Sep 2017 07:24:57 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fa3e98894155516299dba8138e58e2368d9d43288c4f923730e90b97586e61`  
		Last Modified: Tue, 19 Sep 2017 07:24:57 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:99f6713749f47f8b13884b39ebf112ab2b8a866da292208adf0ca11a93308afc
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
$ docker pull postgres@sha256:b4de1e13b6c89301a097a0303ce8669ef63104677a9a5a30879f0e05af0acd51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.8 MB (102817134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817c286a6a5053f00b2d533ac4e6d1c4791e9bb33ad806da659d78a181a47e06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:13:03 GMT
ENV PG_MAJOR=9.3
# Tue, 19 Sep 2017 07:13:03 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 19 Sep 2017 07:13:54 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:13:55 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:13:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:13:56 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:13:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:13:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:13:57 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:13:57 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:13:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:13:58 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:13:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2e2bc4a23aba21034daece73c3914367b401295fd782533598cf0fbb737b53`  
		Last Modified: Tue, 19 Sep 2017 07:23:54 GMT  
		Size: 42.1 MB (42108071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e079e17cad6781e1378a523dae47849900c10a9973abaa98faeea0e1f6dcee69`  
		Last Modified: Tue, 19 Sep 2017 07:23:43 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e7d6a2d398c82060adcff71d464c8aadc656266b712c507b972475a26e244f`  
		Last Modified: Tue, 19 Sep 2017 07:23:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37889447886746dc6e3b4366724aea3720b940f4ef75343318718fbce799193f`  
		Last Modified: Tue, 19 Sep 2017 07:23:42 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6379acd4bb5cb4a2f1b673ca447cf55c47dddd6bc08862380c4d9695a477f6d1`  
		Last Modified: Tue, 19 Sep 2017 07:23:42 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6233b86be2704398ab124f4e64ac9909ed0527953db08fe4dd31fb2a2cfbf56`  
		Last Modified: Tue, 19 Sep 2017 07:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm variant v5

```console
$ docker pull postgres@sha256:1b55cecc098ff7e0bc81e644fd275c5840536028dffd8f5573cea06cff76a575
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95392154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049b941771bb63fec6872922ce2a5d31b4e1560f91afcb360e05e0cd84daa091`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 08:37:28 GMT
ENV PG_MAJOR=9.3
# Tue, 12 Sep 2017 08:37:29 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 12 Sep 2017 09:27:05 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 09:27:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 09:27:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 09:27:11 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 09:27:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 09:27:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 09:27:14 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 09:27:15 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 09:27:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 09:27:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 09:27:19 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 09:27:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4337d5028d9b507be9917d3ec01c72e91ba3894172dfc4d1799769739421e874`  
		Last Modified: Tue, 12 Sep 2017 10:21:00 GMT  
		Size: 36.4 MB (36411445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080571ce42d0d13aebb1672e5e9033e7c7c512e83018a78ee8d355ac240f8295`  
		Last Modified: Tue, 12 Sep 2017 10:20:29 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb481da4ad3269a01cc18ac33758e7de55d00ae6361b97ea81688189ea89f4f`  
		Last Modified: Tue, 12 Sep 2017 10:20:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5615c6e49ef49c4932db88bb465a1e2283b1b74f39c4590919c8fd7603a36c18`  
		Last Modified: Tue, 12 Sep 2017 10:20:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556ad4236fce91687f9bca1da31e7708039bd00ae13f248da1bef2eb63d93f88`  
		Last Modified: Tue, 12 Sep 2017 10:20:29 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fe6b58a48e2d53111ff9a1eedb984281c586136ec7fa53e22edf7624b2864e`  
		Last Modified: Tue, 12 Sep 2017 10:20:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm variant v7

```console
$ docker pull postgres@sha256:fce65b8e98da7c49797bf1cc7c940a461f677cbcf234c5581ea8c4afd2b5233c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92053925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e8887fb2f9f65994c76df0bd53f2cfffe1958d6c4e0ee07fc7bdbc23bb15fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 01 Sep 2017 19:30:19 GMT
ENV PG_MAJOR=9.3
# Fri, 01 Sep 2017 19:30:20 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Fri, 01 Sep 2017 20:15:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 01 Sep 2017 20:15:16 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 01 Sep 2017 20:15:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 01 Sep 2017 20:15:20 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Sep 2017 20:15:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 01 Sep 2017 20:15:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 01 Sep 2017 20:15:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 01 Sep 2017 20:15:25 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:15:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 01 Sep 2017 20:15:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Sep 2017 20:15:28 GMT
EXPOSE 5432/tcp
# Fri, 01 Sep 2017 20:15:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe57d490cdc723cf4acf0908fb2ab04672d37f0638bc5a5c3a95074bd1ed886`  
		Last Modified: Fri, 01 Sep 2017 21:05:08 GMT  
		Size: 35.3 MB (35273894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7384c9b4bd3dc44d8dc2206ceebc47eaff9795425905d84695614046ff3e351b`  
		Last Modified: Fri, 01 Sep 2017 21:04:38 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2009f49af90fc5b38b47062894d62706fc45cfc34113ac80ff95fb62d55994bd`  
		Last Modified: Fri, 01 Sep 2017 21:04:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efb1b6f072897e90745865da35e4a4d6fad71e82a8b4daae5f6b8ec5a125c89`  
		Last Modified: Fri, 01 Sep 2017 21:04:38 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b098a8a60ba596bb46182362a86eb91c74b9af2364033193cbf3b734690bdf8c`  
		Last Modified: Fri, 01 Sep 2017 21:04:39 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038af5e70c8016d9f877cbd7aff6b089b4cf32521253a7666aab4b0bd87bcf47`  
		Last Modified: Fri, 01 Sep 2017 21:04:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:2a41691a33e53cf281b8350e843108dfe6da1a338dbb7168fa15becb83257cff
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93976737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a01b1fb5f89a4f5ab6b8adbde5ae1a3903c6eca7ff7d4fbedbdb14df24b9515`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 01:38:31 GMT
ENV PG_MAJOR=9.3
# Sat, 09 Sep 2017 01:38:31 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Sat, 09 Sep 2017 02:11:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 02:11:04 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 02:11:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 02:11:06 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 02:11:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 02:11:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 02:11:13 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 02:11:14 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:11:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 02:11:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:11:20 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 02:11:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4568136233c3cee3f67653c9fcf6a1e9717e58daf2f3e221929d503d3d795155`  
		Last Modified: Sat, 09 Sep 2017 02:46:00 GMT  
		Size: 36.0 MB (35966815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4b4ac8fe626f01e72cce559bf6597bf521378d60fa0126539c60b12952fc30`  
		Last Modified: Sat, 09 Sep 2017 02:45:44 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f1199f58ea773597b2a64d796f63b80dae7526f715f9891a51408cb8dd4062`  
		Last Modified: Sat, 09 Sep 2017 02:45:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c652f4310e814b5072b4380ad0d1f816e58eecd5aa1bd9365e392d5fa14dfb5c`  
		Last Modified: Sat, 09 Sep 2017 02:45:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca144d7b1d10a571da42196b77180d9bb56e5e7789447b25c4b5457d40f6aea9`  
		Last Modified: Sat, 09 Sep 2017 02:45:44 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c92f0d80ced6337c53bb51a68c000ab70ceab77d1a5c725e454078129237785`  
		Last Modified: Sat, 09 Sep 2017 02:45:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; 386

```console
$ docker pull postgres@sha256:8b43a5ac536350f6cb7ad17dfc55cae6239f2f25e92a507c1f6e82a82c0fb31f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104767482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:574af4170d6f1aa9fa9d7453f56de7d787dda220621cda9b6cbc333b60547981`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:55:47 GMT
ENV PG_MAJOR=9.3
# Fri, 08 Sep 2017 15:55:47 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Fri, 08 Sep 2017 15:57:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:57:46 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:57:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:57:47 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:57:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:57:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:57:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:57:49 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:57:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:57:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:57:50 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:57:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d500999bb4b372ba256d83b8ca6b18fe17390c1368b04b8673ba5808829274e4`  
		Last Modified: Fri, 08 Sep 2017 16:06:01 GMT  
		Size: 43.9 MB (43902020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3438009a2ac724f61218fd050c5d84c1ffc4f2d5909c958c09d34b8f81bfc2c4`  
		Last Modified: Fri, 08 Sep 2017 16:05:50 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ecf2df51dc5e6b6ef7a6494603ef3281b0a24bde55efdce5647818840e9a98`  
		Last Modified: Fri, 08 Sep 2017 16:05:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9646abd35abd345b7aa7cde571f6ec421e6ed9ebf57779ec37e905ce0057d1`  
		Last Modified: Fri, 08 Sep 2017 16:05:50 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe687bd9367497e7e607a480dc6f581a503b6f39fdc3f9080844262eab0b06be`  
		Last Modified: Fri, 08 Sep 2017 16:05:50 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903709180f076306a7836d3dbeaf1d9f25bfc8eb304a7425ccc0c0d82de0d256`  
		Last Modified: Fri, 08 Sep 2017 16:05:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; ppc64le

```console
$ docker pull postgres@sha256:cb098e2875a3a66f375cacb2bfc05950d99fc937c2e003a7eb3586de1d3fae27
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101058200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9a0a17ba0261a0b821ffa450a2cf0fa53172c9b34e64fa65a4c8b1de7d4ab2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:41:27 GMT
ENV PG_MAJOR=9.3
# Fri, 08 Sep 2017 01:41:27 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Fri, 08 Sep 2017 01:42:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:42:24 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:42:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:42:25 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:42:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:42:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:42:27 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:42:27 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:42:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:42:29 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:42:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd312f50052ba15f8d4f1da3851ec7cbeca070fe4e06cbc3c80914718ab6b73`  
		Last Modified: Fri, 08 Sep 2017 01:46:13 GMT  
		Size: 41.2 MB (41166436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fdf45e55e3e00c34b3578cbaa24c3802603f30e4eaafe1b066194f4669cf53`  
		Last Modified: Fri, 08 Sep 2017 01:45:59 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fa77fb6c44487b6e473da5a3927ed05702837df496eb9521bfd45f7c7784e6`  
		Last Modified: Fri, 08 Sep 2017 01:45:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2679777fe34b470143b83369769422d0f37873a5df6f33a4333e0d57e1250f6`  
		Last Modified: Fri, 08 Sep 2017 01:45:59 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817388472c345e05f949ad11ac085130cacc46c53d448909331e079ccb57ac1a`  
		Last Modified: Fri, 08 Sep 2017 01:45:59 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a89af2037b798a79f71de0cbe5910fbe2d64dc31287025071ef36c1e0199d9`  
		Last Modified: Fri, 08 Sep 2017 01:45:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; s390x

```console
$ docker pull postgres@sha256:ae440d2660375c66003297669eab0ad97a2a0883d47abac7ed152491f14d8a34
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99289468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281d4c529e9e57a1ece5d2dccd63b8373d2fd9fab98c953ab2b2c838a6a75ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:53:12 GMT
ENV PG_MAJOR=9.3
# Fri, 08 Sep 2017 06:53:12 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Fri, 08 Sep 2017 07:00:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 07:00:58 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 07:00:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 07:00:59 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:00:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 07:01:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 07:01:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 07:01:00 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:01:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:01:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:01:01 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 07:01:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209256718a90bd4e843ae4da6d8df911e0a160da850cdf98cce72f5f26feffab`  
		Last Modified: Fri, 08 Sep 2017 07:11:51 GMT  
		Size: 38.4 MB (38383813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a11b38a1de88cac82400e6625d49346a240e8410070805e7c46ffd3052a10b`  
		Last Modified: Fri, 08 Sep 2017 07:11:39 GMT  
		Size: 6.5 KB (6506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6e43f5f1fff3511e63436d145ad4718164eefb6ca6402e27fc99d9d4b97ee6`  
		Last Modified: Fri, 08 Sep 2017 07:11:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f08d6eb7433eca141980b0b5c5b427b5c1bbab5a8008a1ca514daf5c32374eb`  
		Last Modified: Fri, 08 Sep 2017 07:11:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ac980a9b9da1a09955cb4f1d0c411f7b2330b50cb877588af9f50ecae1953`  
		Last Modified: Fri, 08 Sep 2017 07:11:39 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57e5d904119cdf9e56a0b22810badf853ea5d8991ca1819b779779be044d73a`  
		Last Modified: Fri, 08 Sep 2017 07:11:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.19`

```console
$ docker pull postgres@sha256:99f6713749f47f8b13884b39ebf112ab2b8a866da292208adf0ca11a93308afc
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

### `postgres:9.3.19` - linux; amd64

```console
$ docker pull postgres@sha256:b4de1e13b6c89301a097a0303ce8669ef63104677a9a5a30879f0e05af0acd51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.8 MB (102817134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817c286a6a5053f00b2d533ac4e6d1c4791e9bb33ad806da659d78a181a47e06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:13:03 GMT
ENV PG_MAJOR=9.3
# Tue, 19 Sep 2017 07:13:03 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 19 Sep 2017 07:13:54 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:13:55 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:13:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:13:56 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:13:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:13:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:13:57 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:13:57 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:13:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:13:58 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:13:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2e2bc4a23aba21034daece73c3914367b401295fd782533598cf0fbb737b53`  
		Last Modified: Tue, 19 Sep 2017 07:23:54 GMT  
		Size: 42.1 MB (42108071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e079e17cad6781e1378a523dae47849900c10a9973abaa98faeea0e1f6dcee69`  
		Last Modified: Tue, 19 Sep 2017 07:23:43 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e7d6a2d398c82060adcff71d464c8aadc656266b712c507b972475a26e244f`  
		Last Modified: Tue, 19 Sep 2017 07:23:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37889447886746dc6e3b4366724aea3720b940f4ef75343318718fbce799193f`  
		Last Modified: Tue, 19 Sep 2017 07:23:42 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6379acd4bb5cb4a2f1b673ca447cf55c47dddd6bc08862380c4d9695a477f6d1`  
		Last Modified: Tue, 19 Sep 2017 07:23:42 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6233b86be2704398ab124f4e64ac9909ed0527953db08fe4dd31fb2a2cfbf56`  
		Last Modified: Tue, 19 Sep 2017 07:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; arm variant v5

```console
$ docker pull postgres@sha256:1b55cecc098ff7e0bc81e644fd275c5840536028dffd8f5573cea06cff76a575
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95392154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049b941771bb63fec6872922ce2a5d31b4e1560f91afcb360e05e0cd84daa091`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 08:37:28 GMT
ENV PG_MAJOR=9.3
# Tue, 12 Sep 2017 08:37:29 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 12 Sep 2017 09:27:05 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 09:27:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 09:27:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 09:27:11 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 09:27:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 09:27:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 09:27:14 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 09:27:15 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 09:27:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 09:27:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 09:27:19 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 09:27:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4337d5028d9b507be9917d3ec01c72e91ba3894172dfc4d1799769739421e874`  
		Last Modified: Tue, 12 Sep 2017 10:21:00 GMT  
		Size: 36.4 MB (36411445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080571ce42d0d13aebb1672e5e9033e7c7c512e83018a78ee8d355ac240f8295`  
		Last Modified: Tue, 12 Sep 2017 10:20:29 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb481da4ad3269a01cc18ac33758e7de55d00ae6361b97ea81688189ea89f4f`  
		Last Modified: Tue, 12 Sep 2017 10:20:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5615c6e49ef49c4932db88bb465a1e2283b1b74f39c4590919c8fd7603a36c18`  
		Last Modified: Tue, 12 Sep 2017 10:20:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556ad4236fce91687f9bca1da31e7708039bd00ae13f248da1bef2eb63d93f88`  
		Last Modified: Tue, 12 Sep 2017 10:20:29 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fe6b58a48e2d53111ff9a1eedb984281c586136ec7fa53e22edf7624b2864e`  
		Last Modified: Tue, 12 Sep 2017 10:20:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; arm variant v7

```console
$ docker pull postgres@sha256:fce65b8e98da7c49797bf1cc7c940a461f677cbcf234c5581ea8c4afd2b5233c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92053925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e8887fb2f9f65994c76df0bd53f2cfffe1958d6c4e0ee07fc7bdbc23bb15fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 01 Sep 2017 19:30:19 GMT
ENV PG_MAJOR=9.3
# Fri, 01 Sep 2017 19:30:20 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Fri, 01 Sep 2017 20:15:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 01 Sep 2017 20:15:16 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 01 Sep 2017 20:15:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 01 Sep 2017 20:15:20 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Sep 2017 20:15:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 01 Sep 2017 20:15:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 01 Sep 2017 20:15:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 01 Sep 2017 20:15:25 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:15:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 01 Sep 2017 20:15:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Sep 2017 20:15:28 GMT
EXPOSE 5432/tcp
# Fri, 01 Sep 2017 20:15:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe57d490cdc723cf4acf0908fb2ab04672d37f0638bc5a5c3a95074bd1ed886`  
		Last Modified: Fri, 01 Sep 2017 21:05:08 GMT  
		Size: 35.3 MB (35273894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7384c9b4bd3dc44d8dc2206ceebc47eaff9795425905d84695614046ff3e351b`  
		Last Modified: Fri, 01 Sep 2017 21:04:38 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2009f49af90fc5b38b47062894d62706fc45cfc34113ac80ff95fb62d55994bd`  
		Last Modified: Fri, 01 Sep 2017 21:04:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efb1b6f072897e90745865da35e4a4d6fad71e82a8b4daae5f6b8ec5a125c89`  
		Last Modified: Fri, 01 Sep 2017 21:04:38 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b098a8a60ba596bb46182362a86eb91c74b9af2364033193cbf3b734690bdf8c`  
		Last Modified: Fri, 01 Sep 2017 21:04:39 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038af5e70c8016d9f877cbd7aff6b089b4cf32521253a7666aab4b0bd87bcf47`  
		Last Modified: Fri, 01 Sep 2017 21:04:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:2a41691a33e53cf281b8350e843108dfe6da1a338dbb7168fa15becb83257cff
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93976737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a01b1fb5f89a4f5ab6b8adbde5ae1a3903c6eca7ff7d4fbedbdb14df24b9515`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 01:38:31 GMT
ENV PG_MAJOR=9.3
# Sat, 09 Sep 2017 01:38:31 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Sat, 09 Sep 2017 02:11:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 02:11:04 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 02:11:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 02:11:06 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 02:11:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 02:11:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 02:11:13 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 02:11:14 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:11:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 02:11:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:11:20 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 02:11:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4568136233c3cee3f67653c9fcf6a1e9717e58daf2f3e221929d503d3d795155`  
		Last Modified: Sat, 09 Sep 2017 02:46:00 GMT  
		Size: 36.0 MB (35966815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4b4ac8fe626f01e72cce559bf6597bf521378d60fa0126539c60b12952fc30`  
		Last Modified: Sat, 09 Sep 2017 02:45:44 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f1199f58ea773597b2a64d796f63b80dae7526f715f9891a51408cb8dd4062`  
		Last Modified: Sat, 09 Sep 2017 02:45:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c652f4310e814b5072b4380ad0d1f816e58eecd5aa1bd9365e392d5fa14dfb5c`  
		Last Modified: Sat, 09 Sep 2017 02:45:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca144d7b1d10a571da42196b77180d9bb56e5e7789447b25c4b5457d40f6aea9`  
		Last Modified: Sat, 09 Sep 2017 02:45:44 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c92f0d80ced6337c53bb51a68c000ab70ceab77d1a5c725e454078129237785`  
		Last Modified: Sat, 09 Sep 2017 02:45:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; 386

```console
$ docker pull postgres@sha256:8b43a5ac536350f6cb7ad17dfc55cae6239f2f25e92a507c1f6e82a82c0fb31f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104767482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:574af4170d6f1aa9fa9d7453f56de7d787dda220621cda9b6cbc333b60547981`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:55:47 GMT
ENV PG_MAJOR=9.3
# Fri, 08 Sep 2017 15:55:47 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Fri, 08 Sep 2017 15:57:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:57:46 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:57:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:57:47 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:57:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:57:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:57:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:57:49 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:57:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:57:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:57:50 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:57:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d500999bb4b372ba256d83b8ca6b18fe17390c1368b04b8673ba5808829274e4`  
		Last Modified: Fri, 08 Sep 2017 16:06:01 GMT  
		Size: 43.9 MB (43902020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3438009a2ac724f61218fd050c5d84c1ffc4f2d5909c958c09d34b8f81bfc2c4`  
		Last Modified: Fri, 08 Sep 2017 16:05:50 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ecf2df51dc5e6b6ef7a6494603ef3281b0a24bde55efdce5647818840e9a98`  
		Last Modified: Fri, 08 Sep 2017 16:05:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9646abd35abd345b7aa7cde571f6ec421e6ed9ebf57779ec37e905ce0057d1`  
		Last Modified: Fri, 08 Sep 2017 16:05:50 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe687bd9367497e7e607a480dc6f581a503b6f39fdc3f9080844262eab0b06be`  
		Last Modified: Fri, 08 Sep 2017 16:05:50 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903709180f076306a7836d3dbeaf1d9f25bfc8eb304a7425ccc0c0d82de0d256`  
		Last Modified: Fri, 08 Sep 2017 16:05:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; ppc64le

```console
$ docker pull postgres@sha256:cb098e2875a3a66f375cacb2bfc05950d99fc937c2e003a7eb3586de1d3fae27
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101058200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9a0a17ba0261a0b821ffa450a2cf0fa53172c9b34e64fa65a4c8b1de7d4ab2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:41:27 GMT
ENV PG_MAJOR=9.3
# Fri, 08 Sep 2017 01:41:27 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Fri, 08 Sep 2017 01:42:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:42:24 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:42:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:42:25 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:42:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:42:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:42:27 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:42:27 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:42:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:42:29 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:42:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd312f50052ba15f8d4f1da3851ec7cbeca070fe4e06cbc3c80914718ab6b73`  
		Last Modified: Fri, 08 Sep 2017 01:46:13 GMT  
		Size: 41.2 MB (41166436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fdf45e55e3e00c34b3578cbaa24c3802603f30e4eaafe1b066194f4669cf53`  
		Last Modified: Fri, 08 Sep 2017 01:45:59 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fa77fb6c44487b6e473da5a3927ed05702837df496eb9521bfd45f7c7784e6`  
		Last Modified: Fri, 08 Sep 2017 01:45:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2679777fe34b470143b83369769422d0f37873a5df6f33a4333e0d57e1250f6`  
		Last Modified: Fri, 08 Sep 2017 01:45:59 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817388472c345e05f949ad11ac085130cacc46c53d448909331e079ccb57ac1a`  
		Last Modified: Fri, 08 Sep 2017 01:45:59 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a89af2037b798a79f71de0cbe5910fbe2d64dc31287025071ef36c1e0199d9`  
		Last Modified: Fri, 08 Sep 2017 01:45:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; s390x

```console
$ docker pull postgres@sha256:ae440d2660375c66003297669eab0ad97a2a0883d47abac7ed152491f14d8a34
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99289468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281d4c529e9e57a1ece5d2dccd63b8373d2fd9fab98c953ab2b2c838a6a75ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:53:12 GMT
ENV PG_MAJOR=9.3
# Fri, 08 Sep 2017 06:53:12 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Fri, 08 Sep 2017 07:00:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 07:00:58 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 07:00:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 07:00:59 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:00:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 07:01:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 07:01:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 07:01:00 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:01:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:01:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:01:01 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 07:01:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209256718a90bd4e843ae4da6d8df911e0a160da850cdf98cce72f5f26feffab`  
		Last Modified: Fri, 08 Sep 2017 07:11:51 GMT  
		Size: 38.4 MB (38383813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a11b38a1de88cac82400e6625d49346a240e8410070805e7c46ffd3052a10b`  
		Last Modified: Fri, 08 Sep 2017 07:11:39 GMT  
		Size: 6.5 KB (6506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6e43f5f1fff3511e63436d145ad4718164eefb6ca6402e27fc99d9d4b97ee6`  
		Last Modified: Fri, 08 Sep 2017 07:11:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f08d6eb7433eca141980b0b5c5b427b5c1bbab5a8008a1ca514daf5c32374eb`  
		Last Modified: Fri, 08 Sep 2017 07:11:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ac980a9b9da1a09955cb4f1d0c411f7b2330b50cb877588af9f50ecae1953`  
		Last Modified: Fri, 08 Sep 2017 07:11:39 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57e5d904119cdf9e56a0b22810badf853ea5d8991ca1819b779779be044d73a`  
		Last Modified: Fri, 08 Sep 2017 07:11:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.19-alpine`

```console
$ docker pull postgres@sha256:d8bf62ebf1fcde3bde760f379aac0e87ea44c4d58a1076391bc278fbbb4322f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3.19-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:124059d92503ff2a0c2b5680fa81c3a4a1a14ca19741673ed10f567416d3a5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13958344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec542dc0ac818731a212ff1e4214bfd23ca217124d9f7bae82526bf7036b564c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:14:03 GMT
ENV PG_MAJOR=9.3
# Tue, 19 Sep 2017 07:14:03 GMT
ENV PG_VERSION=9.3.19
# Tue, 19 Sep 2017 07:14:03 GMT
ENV PG_SHA256=fb9e872cd9e927ba331690d86bc63dcb5a596acb7a536fa0518a3c7d43ac2fb5
# Tue, 19 Sep 2017 07:14:04 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 19 Sep 2017 07:14:04 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 19 Sep 2017 07:16:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:16:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:16:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:16:10 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:16:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:16:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:16:11 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:16:12 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:16:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:16:13 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:16:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f74128d76e0f42ac4a95a7764e3150bad6bbc8a1e9ae10458adb4cde2dd066`  
		Last Modified: Tue, 19 Sep 2017 07:24:16 GMT  
		Size: 12.0 MB (11979089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632aaa26eacfadf97808bea35b61e07def065d191c40da68e6c973af7a09b92f`  
		Last Modified: Tue, 19 Sep 2017 07:24:10 GMT  
		Size: 6.5 KB (6475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502b39e1083516ab349ae51cf55fe1b6baef75beff7ff04d32e11115fe2ebc81`  
		Last Modified: Tue, 19 Sep 2017 07:24:11 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17edfda35d6e57c9bf6e13f35a2edf6746bd35bfcab42259eb831926ebf6eef`  
		Last Modified: Tue, 19 Sep 2017 07:24:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ec9cddcd2efa25c8dad6346f9a1a4b7fc3d70261ecc9364ad8cf57bbe8e5c5`  
		Last Modified: Tue, 19 Sep 2017 07:24:10 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51d243f756af48cbe8908bc4d0eecd2daba8b161270a117f39079f1822082ac`  
		Last Modified: Tue, 19 Sep 2017 07:24:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:d8bf62ebf1fcde3bde760f379aac0e87ea44c4d58a1076391bc278fbbb4322f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:124059d92503ff2a0c2b5680fa81c3a4a1a14ca19741673ed10f567416d3a5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13958344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec542dc0ac818731a212ff1e4214bfd23ca217124d9f7bae82526bf7036b564c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:14:03 GMT
ENV PG_MAJOR=9.3
# Tue, 19 Sep 2017 07:14:03 GMT
ENV PG_VERSION=9.3.19
# Tue, 19 Sep 2017 07:14:03 GMT
ENV PG_SHA256=fb9e872cd9e927ba331690d86bc63dcb5a596acb7a536fa0518a3c7d43ac2fb5
# Tue, 19 Sep 2017 07:14:04 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 19 Sep 2017 07:14:04 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 19 Sep 2017 07:16:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:16:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:16:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:16:10 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:16:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:16:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:16:11 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:16:12 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:16:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:16:13 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:16:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f74128d76e0f42ac4a95a7764e3150bad6bbc8a1e9ae10458adb4cde2dd066`  
		Last Modified: Tue, 19 Sep 2017 07:24:16 GMT  
		Size: 12.0 MB (11979089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632aaa26eacfadf97808bea35b61e07def065d191c40da68e6c973af7a09b92f`  
		Last Modified: Tue, 19 Sep 2017 07:24:10 GMT  
		Size: 6.5 KB (6475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502b39e1083516ab349ae51cf55fe1b6baef75beff7ff04d32e11115fe2ebc81`  
		Last Modified: Tue, 19 Sep 2017 07:24:11 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17edfda35d6e57c9bf6e13f35a2edf6746bd35bfcab42259eb831926ebf6eef`  
		Last Modified: Tue, 19 Sep 2017 07:24:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ec9cddcd2efa25c8dad6346f9a1a4b7fc3d70261ecc9364ad8cf57bbe8e5c5`  
		Last Modified: Tue, 19 Sep 2017 07:24:10 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51d243f756af48cbe8908bc4d0eecd2daba8b161270a117f39079f1822082ac`  
		Last Modified: Tue, 19 Sep 2017 07:24:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:25d022ca50ebe625ca49e7c3e1b7f6e408b2e57a3ad90d9f25e1341247b0c2fd
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
$ docker pull postgres@sha256:06295342ab0229982c430af080388eead3eb781726d3cbddcef14410e750e98e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103180826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a20044491400a8962d89e4c427ddfe4ea40a582bb2293036dbfcd89f4c710d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:09:41 GMT
ENV PG_MAJOR=9.4
# Tue, 19 Sep 2017 07:09:42 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 19 Sep 2017 07:10:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:10:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:10:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:10:36 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:10:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:10:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:10:37 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:10:37 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:10:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:10:38 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:10:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4cfb17360a3a4e352596ed474e05063582c4fe3cc97fc7e3e77e74e3356eea`  
		Last Modified: Tue, 19 Sep 2017 07:23:06 GMT  
		Size: 42.5 MB (42471577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f92385666748bdf5eca4cc6158e0243c32df9a5722d99cd84454a62ed210cf`  
		Last Modified: Tue, 19 Sep 2017 07:22:49 GMT  
		Size: 6.7 KB (6696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6bbfa9fab85b0c970c5741119db40839d22c8520a227dd77a48be50537d8e3`  
		Last Modified: Tue, 19 Sep 2017 07:22:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83dba6d9b3d32dd0fc725dd72a025c034401901117e7c844eab5e80a939e114a`  
		Last Modified: Tue, 19 Sep 2017 07:22:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef0e97e1d09d5110ca151cf96e325b94d7892ff71e7e258182edd60034795af`  
		Last Modified: Tue, 19 Sep 2017 07:22:50 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f103b8ed563974b16ed952efe0dfcc9ed49db173cffb395c91248afeb3735`  
		Last Modified: Tue, 19 Sep 2017 07:22:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v5

```console
$ docker pull postgres@sha256:a9521b04895470989d49ec03635f9f1eccc4dd7f7142e89b1825f7648d58f27f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95738124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779e9770c52891376fd14a2a71bd328051872e509e9f07ef2a74bc38d3281f66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 07:50:33 GMT
ENV PG_MAJOR=9.4
# Tue, 12 Sep 2017 07:50:35 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 12 Sep 2017 08:36:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 08:36:46 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 08:36:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 08:36:49 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 08:36:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 08:36:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 08:36:53 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 08:36:54 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 08:36:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 08:36:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 08:36:57 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 08:36:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fea9693c305828e984d5aec660901d88bcc72e09cf6fbcc796be30d738f59c`  
		Last Modified: Tue, 12 Sep 2017 10:20:08 GMT  
		Size: 36.8 MB (36757227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369fa69d283129a0c3a9e98e2c710725c70b0066e395c4238ba72ae77bc7dd75`  
		Last Modified: Tue, 12 Sep 2017 10:19:37 GMT  
		Size: 6.7 KB (6695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8dc3d6ae5c2a893dfabcea62492ab9b857d1c77d1a22ee39a132283477be40`  
		Last Modified: Tue, 12 Sep 2017 10:19:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7219cccbfaea0b9727bba76655b725bf0732268acd6bec415369382b6f02841b`  
		Last Modified: Tue, 12 Sep 2017 10:19:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c5dd2e52e75f2c9ef335c2ca578609aa26c20de55aa45556745dc5296dcec3`  
		Last Modified: Tue, 12 Sep 2017 10:19:37 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b2213d9871e9dabe587887f32c89f81b2a06b95bfa26ad442dfbe8f3a743d`  
		Last Modified: Tue, 12 Sep 2017 10:19:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v7

```console
$ docker pull postgres@sha256:9a238790195382f8bfe45198237c84d7c8c8864d28f296d25a1c5c2767bbcce6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92381026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839cb4a08c17b58a07a203bdb6bd2954831bd35f8e68bdf7f131af600c6c79b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 Aug 2017 23:06:58 GMT
ENV PG_MAJOR=9.4
# Thu, 31 Aug 2017 23:07:00 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Fri, 01 Sep 2017 19:29:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 01 Sep 2017 19:29:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 01 Sep 2017 19:29:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 01 Sep 2017 19:29:38 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Sep 2017 19:29:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 01 Sep 2017 19:29:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 01 Sep 2017 19:29:41 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 01 Sep 2017 19:29:42 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 01 Sep 2017 19:29:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 01 Sep 2017 19:29:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Sep 2017 19:29:46 GMT
EXPOSE 5432/tcp
# Fri, 01 Sep 2017 19:29:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c85fbf71bfcd348370c64b605d41eaef7e3e33a1f86eb39bd5812c3310354`  
		Last Modified: Fri, 01 Sep 2017 21:04:15 GMT  
		Size: 35.6 MB (35600808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57262615d592c1af09acb71176932065b9c7c0f54f9e5216e789006154969ed1`  
		Last Modified: Fri, 01 Sep 2017 21:03:45 GMT  
		Size: 6.7 KB (6695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ca24c11d4b6ea70317ecd5ae7b28fb823da0425c9e7499bf2892a55043db4f`  
		Last Modified: Fri, 01 Sep 2017 21:03:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf486416852e0ac7048733dd8c3751c2126a67c4c4627f930992eabe52a01d20`  
		Last Modified: Fri, 01 Sep 2017 21:03:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a453f110463af07f3b2ee091f87f0b374e71b897184d2d582bccfc2ee5486ab9`  
		Last Modified: Fri, 01 Sep 2017 21:03:45 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490f72566bb7dd9b6f93f517223bcf8922824800ee1774aea95d278a078aa3f3`  
		Last Modified: Fri, 01 Sep 2017 21:03:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:dcdb661f604abadf8eb1e2fb8e7c623523856596c35d5cf1e8aa2a4f9eeeb7ad
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94317945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c6177ef1909647828a9ffcc1c0c6c52700c3558a677f39766d623f02cb05ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 01:04:03 GMT
ENV PG_MAJOR=9.4
# Sat, 09 Sep 2017 01:04:04 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Sat, 09 Sep 2017 01:37:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 01:38:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 01:38:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 01:38:08 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 01:38:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 01:38:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 01:38:12 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 01:38:13 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 01:38:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 01:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 01:38:23 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 01:38:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1889e48fb7b372674a4c5efc2b13622a1d75a5a629c94cda1313de6b328a3a`  
		Last Modified: Sat, 09 Sep 2017 02:45:21 GMT  
		Size: 36.3 MB (36307837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d749b0a1356e0f298f8e9d966f5627a1446405329805f7cf1228a04ff076c4`  
		Last Modified: Sat, 09 Sep 2017 02:45:04 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f58c1da42b1519728df6c5b5cac7e1bf05305d073114505ab673bdbe12190c6`  
		Last Modified: Sat, 09 Sep 2017 02:45:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe744a8e410dc77b25dc51f74485972cbd595cec14ea2c1f1ac9bf881926c81`  
		Last Modified: Sat, 09 Sep 2017 02:45:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058a3ca5474ee419382244115c6fe77d5d2bad8878a740bf5c640e63809900a3`  
		Last Modified: Sat, 09 Sep 2017 02:45:04 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21b649bd14a46645c840517cb03cd6fe35b253e10790f51e0fae0c513c262f7`  
		Last Modified: Sat, 09 Sep 2017 02:45:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; 386

```console
$ docker pull postgres@sha256:316fde2f3121c4577db32bad36fa9349b8657a56b5e1626c5797f6999692a5e4
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105141218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8ad4737a24190a341bab2f8c039ba954977294c2874158e693d3b1fa68d47c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:54:14 GMT
ENV PG_MAJOR=9.4
# Fri, 08 Sep 2017 15:54:14 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Fri, 08 Sep 2017 15:55:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:55:37 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:55:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:55:38 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:55:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:55:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:55:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:55:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:55:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:55:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:55:41 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:55:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4cb73cebab3c3c9889ea0a9991f1203acd6dea6e70a91702f0690e0c308f4c`  
		Last Modified: Fri, 08 Sep 2017 16:05:35 GMT  
		Size: 44.3 MB (44275574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313e207c231edb6ca6ff15d1077b7f043a99cb062edd92440d6d7527e0239b65`  
		Last Modified: Fri, 08 Sep 2017 16:05:23 GMT  
		Size: 6.7 KB (6691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15893699e79cd266dcf36014ac294ef8e443af9029d196db20509315d595cf9a`  
		Last Modified: Fri, 08 Sep 2017 16:05:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7e1a13f241b56d01c15c9c30bcbe58cb84848e28e590183494f78f74fd826e`  
		Last Modified: Fri, 08 Sep 2017 16:05:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938ab13ffeef997531e92b266af0fe63e1194062597b2a8f9a60c94162975ddc`  
		Last Modified: Fri, 08 Sep 2017 16:05:23 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9beac216da48df21a516b3cbf494430ac82e25763dba93e018448a5428848a`  
		Last Modified: Fri, 08 Sep 2017 16:05:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; ppc64le

```console
$ docker pull postgres@sha256:cff0e8392bf1bc3c7d85e7c8684887f7c695ae799d3e38e83cf8f310d09b0aac
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101410067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0679ff4c0e70ac82df38680a35cd808f1d843a2fedbf0b2adf407562aa96a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:40:23 GMT
ENV PG_MAJOR=9.4
# Fri, 08 Sep 2017 01:40:23 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Fri, 08 Sep 2017 01:41:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:41:18 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:41:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:41:19 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:41:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:41:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:41:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:41:22 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:41:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:41:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:41:23 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:41:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de43f912b73db0b60f17d27b1e42d390a96326a8430055c989d4460e36bd3b1`  
		Last Modified: Fri, 08 Sep 2017 01:45:42 GMT  
		Size: 41.5 MB (41518122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3590678bc0e124056cd2314d2c5d0b2e5ecf580e514bd4e4f650c9fc577e9a`  
		Last Modified: Fri, 08 Sep 2017 01:45:29 GMT  
		Size: 6.7 KB (6691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf344dbfa464dd320b4a592c84a8f73c2e5e89b1aafaa8ddb62fb32d54bf8fd9`  
		Last Modified: Fri, 08 Sep 2017 01:45:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e6084d387fd86ea2344d007becc0e29c9d5f84aab5bbab5ff6e8f2c66123be`  
		Last Modified: Fri, 08 Sep 2017 01:45:29 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d921e6a1293b1a6988c0ab72520fb1a5337e74cf670adcdd61207f3093c1d808`  
		Last Modified: Fri, 08 Sep 2017 01:45:28 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211e14bbd1a7dd928877a9637d40384f4999bca29e150509b2717d459e2cff97`  
		Last Modified: Fri, 08 Sep 2017 01:45:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; s390x

```console
$ docker pull postgres@sha256:325bc1b9de53238640d12e5bdc93622d9f1150f4dae328fa5eca9d5ec403fbf0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99638877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d331c9edbde8c50bb10037a17dd0f6ea7526cfecb03bb06180ead77faee8d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:44:51 GMT
ENV PG_MAJOR=9.4
# Fri, 08 Sep 2017 06:44:51 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Fri, 08 Sep 2017 06:53:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 06:53:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 06:53:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 06:53:08 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:53:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 06:53:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 06:53:09 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 06:53:09 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:53:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 06:53:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 06:53:10 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 06:53:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6454a6593930a5f52c4a183d54dfde609af9d2c3027b2b41c6e026d77c91b706`  
		Last Modified: Fri, 08 Sep 2017 07:11:30 GMT  
		Size: 38.7 MB (38733033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244cabdbe44ec7cb89295ab9c35abbb355e64b4557f7bdaa94702a75ae07282e`  
		Last Modified: Fri, 08 Sep 2017 07:11:21 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925247408c03dbfcf159fca5059089f569109eab63af134e00741f4df674eeaf`  
		Last Modified: Fri, 08 Sep 2017 07:11:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c538c00cf400d73c26859f5f4dafa184d55aa72cedfccffcc6fc8df7f695b5a`  
		Last Modified: Fri, 08 Sep 2017 07:11:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db3b50cb1293fffb90d2dddcc3c873fc09ddda63fea9aa855ad203f2b4b6d2a`  
		Last Modified: Fri, 08 Sep 2017 07:11:21 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ece209ff14c655b67f90a7880d96f50b2745896527191f7781a02841cc233`  
		Last Modified: Fri, 08 Sep 2017 07:11:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.14`

```console
$ docker pull postgres@sha256:25d022ca50ebe625ca49e7c3e1b7f6e408b2e57a3ad90d9f25e1341247b0c2fd
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

### `postgres:9.4.14` - linux; amd64

```console
$ docker pull postgres@sha256:06295342ab0229982c430af080388eead3eb781726d3cbddcef14410e750e98e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103180826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a20044491400a8962d89e4c427ddfe4ea40a582bb2293036dbfcd89f4c710d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:09:41 GMT
ENV PG_MAJOR=9.4
# Tue, 19 Sep 2017 07:09:42 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 19 Sep 2017 07:10:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:10:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:10:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:10:36 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:10:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:10:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:10:37 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:10:37 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:10:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:10:38 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:10:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4cfb17360a3a4e352596ed474e05063582c4fe3cc97fc7e3e77e74e3356eea`  
		Last Modified: Tue, 19 Sep 2017 07:23:06 GMT  
		Size: 42.5 MB (42471577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f92385666748bdf5eca4cc6158e0243c32df9a5722d99cd84454a62ed210cf`  
		Last Modified: Tue, 19 Sep 2017 07:22:49 GMT  
		Size: 6.7 KB (6696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6bbfa9fab85b0c970c5741119db40839d22c8520a227dd77a48be50537d8e3`  
		Last Modified: Tue, 19 Sep 2017 07:22:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83dba6d9b3d32dd0fc725dd72a025c034401901117e7c844eab5e80a939e114a`  
		Last Modified: Tue, 19 Sep 2017 07:22:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef0e97e1d09d5110ca151cf96e325b94d7892ff71e7e258182edd60034795af`  
		Last Modified: Tue, 19 Sep 2017 07:22:50 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f103b8ed563974b16ed952efe0dfcc9ed49db173cffb395c91248afeb3735`  
		Last Modified: Tue, 19 Sep 2017 07:22:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; arm variant v5

```console
$ docker pull postgres@sha256:a9521b04895470989d49ec03635f9f1eccc4dd7f7142e89b1825f7648d58f27f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95738124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779e9770c52891376fd14a2a71bd328051872e509e9f07ef2a74bc38d3281f66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 07:50:33 GMT
ENV PG_MAJOR=9.4
# Tue, 12 Sep 2017 07:50:35 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 12 Sep 2017 08:36:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 08:36:46 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 08:36:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 08:36:49 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 08:36:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 08:36:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 08:36:53 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 08:36:54 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 08:36:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 08:36:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 08:36:57 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 08:36:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fea9693c305828e984d5aec660901d88bcc72e09cf6fbcc796be30d738f59c`  
		Last Modified: Tue, 12 Sep 2017 10:20:08 GMT  
		Size: 36.8 MB (36757227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369fa69d283129a0c3a9e98e2c710725c70b0066e395c4238ba72ae77bc7dd75`  
		Last Modified: Tue, 12 Sep 2017 10:19:37 GMT  
		Size: 6.7 KB (6695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8dc3d6ae5c2a893dfabcea62492ab9b857d1c77d1a22ee39a132283477be40`  
		Last Modified: Tue, 12 Sep 2017 10:19:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7219cccbfaea0b9727bba76655b725bf0732268acd6bec415369382b6f02841b`  
		Last Modified: Tue, 12 Sep 2017 10:19:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c5dd2e52e75f2c9ef335c2ca578609aa26c20de55aa45556745dc5296dcec3`  
		Last Modified: Tue, 12 Sep 2017 10:19:37 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b2213d9871e9dabe587887f32c89f81b2a06b95bfa26ad442dfbe8f3a743d`  
		Last Modified: Tue, 12 Sep 2017 10:19:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; arm variant v7

```console
$ docker pull postgres@sha256:9a238790195382f8bfe45198237c84d7c8c8864d28f296d25a1c5c2767bbcce6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92381026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839cb4a08c17b58a07a203bdb6bd2954831bd35f8e68bdf7f131af600c6c79b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 Aug 2017 23:06:58 GMT
ENV PG_MAJOR=9.4
# Thu, 31 Aug 2017 23:07:00 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Fri, 01 Sep 2017 19:29:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 01 Sep 2017 19:29:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 01 Sep 2017 19:29:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 01 Sep 2017 19:29:38 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Sep 2017 19:29:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 01 Sep 2017 19:29:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 01 Sep 2017 19:29:41 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 01 Sep 2017 19:29:42 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 01 Sep 2017 19:29:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 01 Sep 2017 19:29:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Sep 2017 19:29:46 GMT
EXPOSE 5432/tcp
# Fri, 01 Sep 2017 19:29:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c85fbf71bfcd348370c64b605d41eaef7e3e33a1f86eb39bd5812c3310354`  
		Last Modified: Fri, 01 Sep 2017 21:04:15 GMT  
		Size: 35.6 MB (35600808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57262615d592c1af09acb71176932065b9c7c0f54f9e5216e789006154969ed1`  
		Last Modified: Fri, 01 Sep 2017 21:03:45 GMT  
		Size: 6.7 KB (6695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ca24c11d4b6ea70317ecd5ae7b28fb823da0425c9e7499bf2892a55043db4f`  
		Last Modified: Fri, 01 Sep 2017 21:03:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf486416852e0ac7048733dd8c3751c2126a67c4c4627f930992eabe52a01d20`  
		Last Modified: Fri, 01 Sep 2017 21:03:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a453f110463af07f3b2ee091f87f0b374e71b897184d2d582bccfc2ee5486ab9`  
		Last Modified: Fri, 01 Sep 2017 21:03:45 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490f72566bb7dd9b6f93f517223bcf8922824800ee1774aea95d278a078aa3f3`  
		Last Modified: Fri, 01 Sep 2017 21:03:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:dcdb661f604abadf8eb1e2fb8e7c623523856596c35d5cf1e8aa2a4f9eeeb7ad
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94317945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c6177ef1909647828a9ffcc1c0c6c52700c3558a677f39766d623f02cb05ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 01:04:03 GMT
ENV PG_MAJOR=9.4
# Sat, 09 Sep 2017 01:04:04 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Sat, 09 Sep 2017 01:37:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 01:38:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 01:38:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 01:38:08 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 01:38:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 01:38:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 01:38:12 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 01:38:13 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 01:38:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 01:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 01:38:23 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 01:38:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1889e48fb7b372674a4c5efc2b13622a1d75a5a629c94cda1313de6b328a3a`  
		Last Modified: Sat, 09 Sep 2017 02:45:21 GMT  
		Size: 36.3 MB (36307837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d749b0a1356e0f298f8e9d966f5627a1446405329805f7cf1228a04ff076c4`  
		Last Modified: Sat, 09 Sep 2017 02:45:04 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f58c1da42b1519728df6c5b5cac7e1bf05305d073114505ab673bdbe12190c6`  
		Last Modified: Sat, 09 Sep 2017 02:45:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe744a8e410dc77b25dc51f74485972cbd595cec14ea2c1f1ac9bf881926c81`  
		Last Modified: Sat, 09 Sep 2017 02:45:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058a3ca5474ee419382244115c6fe77d5d2bad8878a740bf5c640e63809900a3`  
		Last Modified: Sat, 09 Sep 2017 02:45:04 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21b649bd14a46645c840517cb03cd6fe35b253e10790f51e0fae0c513c262f7`  
		Last Modified: Sat, 09 Sep 2017 02:45:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; 386

```console
$ docker pull postgres@sha256:316fde2f3121c4577db32bad36fa9349b8657a56b5e1626c5797f6999692a5e4
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105141218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8ad4737a24190a341bab2f8c039ba954977294c2874158e693d3b1fa68d47c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:54:14 GMT
ENV PG_MAJOR=9.4
# Fri, 08 Sep 2017 15:54:14 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Fri, 08 Sep 2017 15:55:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:55:37 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:55:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:55:38 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:55:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:55:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:55:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:55:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:55:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:55:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:55:41 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:55:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4cb73cebab3c3c9889ea0a9991f1203acd6dea6e70a91702f0690e0c308f4c`  
		Last Modified: Fri, 08 Sep 2017 16:05:35 GMT  
		Size: 44.3 MB (44275574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313e207c231edb6ca6ff15d1077b7f043a99cb062edd92440d6d7527e0239b65`  
		Last Modified: Fri, 08 Sep 2017 16:05:23 GMT  
		Size: 6.7 KB (6691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15893699e79cd266dcf36014ac294ef8e443af9029d196db20509315d595cf9a`  
		Last Modified: Fri, 08 Sep 2017 16:05:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7e1a13f241b56d01c15c9c30bcbe58cb84848e28e590183494f78f74fd826e`  
		Last Modified: Fri, 08 Sep 2017 16:05:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938ab13ffeef997531e92b266af0fe63e1194062597b2a8f9a60c94162975ddc`  
		Last Modified: Fri, 08 Sep 2017 16:05:23 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9beac216da48df21a516b3cbf494430ac82e25763dba93e018448a5428848a`  
		Last Modified: Fri, 08 Sep 2017 16:05:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; ppc64le

```console
$ docker pull postgres@sha256:cff0e8392bf1bc3c7d85e7c8684887f7c695ae799d3e38e83cf8f310d09b0aac
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101410067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0679ff4c0e70ac82df38680a35cd808f1d843a2fedbf0b2adf407562aa96a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:40:23 GMT
ENV PG_MAJOR=9.4
# Fri, 08 Sep 2017 01:40:23 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Fri, 08 Sep 2017 01:41:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:41:18 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:41:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:41:19 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:41:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:41:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:41:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:41:22 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:41:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:41:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:41:23 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:41:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de43f912b73db0b60f17d27b1e42d390a96326a8430055c989d4460e36bd3b1`  
		Last Modified: Fri, 08 Sep 2017 01:45:42 GMT  
		Size: 41.5 MB (41518122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3590678bc0e124056cd2314d2c5d0b2e5ecf580e514bd4e4f650c9fc577e9a`  
		Last Modified: Fri, 08 Sep 2017 01:45:29 GMT  
		Size: 6.7 KB (6691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf344dbfa464dd320b4a592c84a8f73c2e5e89b1aafaa8ddb62fb32d54bf8fd9`  
		Last Modified: Fri, 08 Sep 2017 01:45:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e6084d387fd86ea2344d007becc0e29c9d5f84aab5bbab5ff6e8f2c66123be`  
		Last Modified: Fri, 08 Sep 2017 01:45:29 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d921e6a1293b1a6988c0ab72520fb1a5337e74cf670adcdd61207f3093c1d808`  
		Last Modified: Fri, 08 Sep 2017 01:45:28 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211e14bbd1a7dd928877a9637d40384f4999bca29e150509b2717d459e2cff97`  
		Last Modified: Fri, 08 Sep 2017 01:45:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; s390x

```console
$ docker pull postgres@sha256:325bc1b9de53238640d12e5bdc93622d9f1150f4dae328fa5eca9d5ec403fbf0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99638877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d331c9edbde8c50bb10037a17dd0f6ea7526cfecb03bb06180ead77faee8d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:44:51 GMT
ENV PG_MAJOR=9.4
# Fri, 08 Sep 2017 06:44:51 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Fri, 08 Sep 2017 06:53:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 06:53:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 06:53:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 06:53:08 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:53:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 06:53:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 06:53:09 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 06:53:09 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:53:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 06:53:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 06:53:10 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 06:53:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6454a6593930a5f52c4a183d54dfde609af9d2c3027b2b41c6e026d77c91b706`  
		Last Modified: Fri, 08 Sep 2017 07:11:30 GMT  
		Size: 38.7 MB (38733033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244cabdbe44ec7cb89295ab9c35abbb355e64b4557f7bdaa94702a75ae07282e`  
		Last Modified: Fri, 08 Sep 2017 07:11:21 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925247408c03dbfcf159fca5059089f569109eab63af134e00741f4df674eeaf`  
		Last Modified: Fri, 08 Sep 2017 07:11:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c538c00cf400d73c26859f5f4dafa184d55aa72cedfccffcc6fc8df7f695b5a`  
		Last Modified: Fri, 08 Sep 2017 07:11:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db3b50cb1293fffb90d2dddcc3c873fc09ddda63fea9aa855ad203f2b4b6d2a`  
		Last Modified: Fri, 08 Sep 2017 07:11:21 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ece209ff14c655b67f90a7880d96f50b2745896527191f7781a02841cc233`  
		Last Modified: Fri, 08 Sep 2017 07:11:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.14-alpine`

```console
$ docker pull postgres@sha256:facd9bf3d02a39c9339fb95a2c60bd2a1f6898180e38ffc6fafd8ad325482db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.14-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:4f23316fd5c293e1a9338266f67cf2a409818b08801fb4da39e255b3a2f4c753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14251830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f0530b59df699e0a3dbec7ab364ad143378863db5d17f2e1705ef76d6156f99`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:10:53 GMT
ENV PG_MAJOR=9.4
# Tue, 19 Sep 2017 07:10:53 GMT
ENV PG_VERSION=9.4.14
# Tue, 19 Sep 2017 07:10:53 GMT
ENV PG_SHA256=8e7df23a104b057b360d03180ebcb67f645e198a4a0bee94bf56b2bc9505ec6b
# Tue, 19 Sep 2017 07:12:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:12:50 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:12:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:12:51 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:12:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:12:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:12:52 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:12:52 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:12:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:12:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:12:53 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:12:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd5b49a0af944b8bee847a4fdfb2c504e40e492387f4bfec0edf052d683854a`  
		Last Modified: Tue, 19 Sep 2017 07:23:27 GMT  
		Size: 12.3 MB (12272397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae46913163b46e2b5b37019151f641e1799b1e6888bb055f53d68d55be5b182`  
		Last Modified: Tue, 19 Sep 2017 07:23:22 GMT  
		Size: 6.7 KB (6656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cff2a845d547732af09f67f5a9e0629e786f40f7972b8b81b334432feea901e`  
		Last Modified: Tue, 19 Sep 2017 07:23:22 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b14717851824e2383a6a191a85df5de3cd12977d5846d22633b5c2069b1c34`  
		Last Modified: Tue, 19 Sep 2017 07:23:22 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be20fce08c30c22774f347a11ad43680316b132bc14172bdac0a702b97413b1`  
		Last Modified: Tue, 19 Sep 2017 07:23:22 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6409185e6ecf1402ebbedd29d743f99aa3b0747f79ea5e3ae5207a59d1b4c781`  
		Last Modified: Tue, 19 Sep 2017 07:23:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:facd9bf3d02a39c9339fb95a2c60bd2a1f6898180e38ffc6fafd8ad325482db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:4f23316fd5c293e1a9338266f67cf2a409818b08801fb4da39e255b3a2f4c753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14251830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f0530b59df699e0a3dbec7ab364ad143378863db5d17f2e1705ef76d6156f99`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:10:53 GMT
ENV PG_MAJOR=9.4
# Tue, 19 Sep 2017 07:10:53 GMT
ENV PG_VERSION=9.4.14
# Tue, 19 Sep 2017 07:10:53 GMT
ENV PG_SHA256=8e7df23a104b057b360d03180ebcb67f645e198a4a0bee94bf56b2bc9505ec6b
# Tue, 19 Sep 2017 07:12:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:12:50 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:12:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:12:51 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:12:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:12:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:12:52 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:12:52 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:12:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:12:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:12:53 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:12:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd5b49a0af944b8bee847a4fdfb2c504e40e492387f4bfec0edf052d683854a`  
		Last Modified: Tue, 19 Sep 2017 07:23:27 GMT  
		Size: 12.3 MB (12272397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae46913163b46e2b5b37019151f641e1799b1e6888bb055f53d68d55be5b182`  
		Last Modified: Tue, 19 Sep 2017 07:23:22 GMT  
		Size: 6.7 KB (6656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cff2a845d547732af09f67f5a9e0629e786f40f7972b8b81b334432feea901e`  
		Last Modified: Tue, 19 Sep 2017 07:23:22 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b14717851824e2383a6a191a85df5de3cd12977d5846d22633b5c2069b1c34`  
		Last Modified: Tue, 19 Sep 2017 07:23:22 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be20fce08c30c22774f347a11ad43680316b132bc14172bdac0a702b97413b1`  
		Last Modified: Tue, 19 Sep 2017 07:23:22 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6409185e6ecf1402ebbedd29d743f99aa3b0747f79ea5e3ae5207a59d1b4c781`  
		Last Modified: Tue, 19 Sep 2017 07:23:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:1800899fbf9902a5b841553942d32b9fb0bb761351ee5afa7b7c54c6e40ce417
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
$ docker pull postgres@sha256:f5bfaf97679a00b023f2a71b08da1785f6875c1128886d012c4d74ecd35dc8a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103513283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6635927541e86f8351315dc5fd9b7557de71f5b61b5542c1e031bbbc71a55a76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:05:46 GMT
ENV PG_MAJOR=9.5
# Tue, 19 Sep 2017 07:05:46 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 19 Sep 2017 07:06:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:06:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:06:34 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:06:35 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:06:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:06:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:06:36 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:06:36 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:06:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:06:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:06:37 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:06:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afed3049484276ca1e90a30269ac187733b5d5728bf81f096ff2a1fbb9687b6`  
		Last Modified: Tue, 19 Sep 2017 07:22:12 GMT  
		Size: 42.8 MB (42803894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961a05306ebc34eb03f1ed294de29fbe50a65840baa1ecd669caf84b3b58f346`  
		Last Modified: Tue, 19 Sep 2017 07:21:56 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd2cdfb0d651d4fdbe440c6dabddd00f8ff2a8d66d7170947bef9bb1cc74e8c`  
		Last Modified: Tue, 19 Sep 2017 07:21:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cea55fb40d89feb9ad946b3ec74c6d0ba1d6c43ac5e8aecd1b9f8deaa9c51ae`  
		Last Modified: Tue, 19 Sep 2017 07:21:56 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7f4e843da80ccbfc055e897317947c0d93b12e09ae6a27a6933b14c19776d6`  
		Last Modified: Tue, 19 Sep 2017 07:21:56 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ee945a0af1c1e416d4755900dd63fa018e2e85c92d1895046f8b48b63b109a`  
		Last Modified: Tue, 19 Sep 2017 07:21:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v5

```console
$ docker pull postgres@sha256:8611069085ef9a3b5b64d0fd2ce6ed6702e87ab3f00014603302f6e5352b77ac
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96054297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3604cb505e5059a562dcd2ece9b7787ffe87484658fa0ded5b16ebaf54cf9377`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 06:52:21 GMT
ENV PG_MAJOR=9.5
# Tue, 12 Sep 2017 06:52:24 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 12 Sep 2017 07:49:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 07:49:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 07:49:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 07:49:53 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 07:49:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 07:49:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 07:49:56 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 07:49:57 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 07:49:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 07:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 07:50:01 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 07:50:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe17eb2c380c8762778607ea3e81b6b4c1e4533f9e261f4146cf42546709d39`  
		Last Modified: Tue, 12 Sep 2017 10:19:14 GMT  
		Size: 37.1 MB (37073262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627220eae093cfc933a2e8e9d3b12a8f140e9520dc31c511f5e37b2fb1fdd1`  
		Last Modified: Tue, 12 Sep 2017 10:18:41 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743b4b98951dd98d1896e57fd422f9deaad5bb16dbd7d09ab1fd12695c912b79`  
		Last Modified: Tue, 12 Sep 2017 10:18:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d6fc908852033cbf90593d3e8fe2d8d5119b8bf5304ffe6b3105a8b504345a`  
		Last Modified: Tue, 12 Sep 2017 10:18:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000ea77006852854d1b4fdb5d2990b5c6e6583dd40700a01f9ea3f1a10d267b9`  
		Last Modified: Tue, 12 Sep 2017 10:18:42 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c5cde274bd52a61637381620caf4345c514051b01afe4e7d72743c4d148a09`  
		Last Modified: Tue, 12 Sep 2017 10:18:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v7

```console
$ docker pull postgres@sha256:c824f663319af56c23b34f043ece6433e04f9d3465fc70b9ec96dd1ca1b2c58c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92681677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afab75abb731ab0ef5548190bc18f23a72995e910762f6a2036c6e16cb68f4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 Aug 2017 22:19:32 GMT
ENV PG_MAJOR=9.5
# Thu, 31 Aug 2017 22:19:33 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Thu, 31 Aug 2017 23:05:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 Aug 2017 23:05:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 Aug 2017 23:05:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 Aug 2017 23:06:03 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Aug 2017 23:06:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 Aug 2017 23:06:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 Aug 2017 23:06:21 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 Aug 2017 23:06:24 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 31 Aug 2017 23:06:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 23:06:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 23:06:33 GMT
EXPOSE 5432/tcp
# Thu, 31 Aug 2017 23:06:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8174bfe4ab00855945759fa7d69c19e88d22652a847bf99fe538343c3a64170`  
		Last Modified: Fri, 01 Sep 2017 21:03:23 GMT  
		Size: 35.9 MB (35901318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acfa2b43c29b184361ea8551412747a2185b89423ec09fa5446ae12632af2ec`  
		Last Modified: Fri, 01 Sep 2017 21:02:52 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26ed85c2e31dce641acefc892311d7f4d0492d4d743ee7bbe3e7ecfef1fa6e9`  
		Last Modified: Fri, 01 Sep 2017 21:02:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8439c409bcbab7056160532422239543badc2650fa304d55cccacb81c1f7e57`  
		Last Modified: Fri, 01 Sep 2017 21:02:52 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ffd2da3e22077cf572da60b6d30aea26b8e50a0fac3a71659105019d027cc7`  
		Last Modified: Fri, 01 Sep 2017 21:02:52 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186e0fdf090b40ccd7784f8aec4ef580438e5a9d865ee8fc5d4742c92ad25ec9`  
		Last Modified: Fri, 01 Sep 2017 21:02:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:3a4722187a8f2ffe137fdf99dc55fe851702d218e9499b323f3dc0abfdb61a17
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94636488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f40cfe96e9031012cb4c715d0537ba75369a5ca723333842461b385da43a66b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 00:25:34 GMT
ENV PG_MAJOR=9.5
# Sat, 09 Sep 2017 00:25:36 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Sat, 09 Sep 2017 01:03:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 01:03:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 01:03:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 01:03:39 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 01:03:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 01:03:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 01:03:44 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 01:03:45 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 01:03:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 01:03:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 01:03:52 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 01:03:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520ae4c60db7bddd38f3fbf96a689c25a7a48d554c2d330b7f97ef8d202de3b0`  
		Last Modified: Sat, 09 Sep 2017 02:44:43 GMT  
		Size: 36.6 MB (36626242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc76f7d00d73b6750d8bd1b8deb109c2896d786bcc2bf6ff316702f35855bc9`  
		Last Modified: Sat, 09 Sep 2017 02:44:28 GMT  
		Size: 6.8 KB (6831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac79bce5be1aa57c56ee27bec7fd0b22d40d502d4a55ebd2b6be1ed5c0e90c4`  
		Last Modified: Sat, 09 Sep 2017 02:44:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fe07d1df1d9dad7b23ae0ab883aad8eb02efed11ee29348467f3e3e6ce4554`  
		Last Modified: Sat, 09 Sep 2017 02:44:29 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611715a3ada3922165bc223f1cb63654db19e9edd3421d033ee3941d6aeb69f1`  
		Last Modified: Sat, 09 Sep 2017 02:44:27 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015ea3fc55c1dbcf65e8659d29bd3e17edaf3db1230728490871e0175f679799`  
		Last Modified: Sat, 09 Sep 2017 02:44:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; 386

```console
$ docker pull postgres@sha256:8885111f770d0349c3e5edf990e57b99ba06fc6a2aff23d5bdb92665abb4dee6
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105490963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c64eb64e8fc32df868008095b76e340979cf7bb80024541985cc35dca27153eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:50:36 GMT
ENV PG_MAJOR=9.5
# Fri, 08 Sep 2017 15:50:36 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Fri, 08 Sep 2017 15:51:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:51:57 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:51:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:51:58 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:51:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:51:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:51:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:51:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:52:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:52:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:52:00 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:52:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c48be3a289536348233fda2ca2c1ecb9bbcd1805b0771e3efa8217e23593f4`  
		Last Modified: Fri, 08 Sep 2017 16:05:07 GMT  
		Size: 44.6 MB (44625176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6893bca1934c24f4f02e1d3a07f3c5ca232ed6b1209b9f92084554eb458a114`  
		Last Modified: Fri, 08 Sep 2017 16:04:55 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c7686e328fe4423e320297f4ffb7dd5554654a3be6bf5ad73b8cb6c19c6143`  
		Last Modified: Fri, 08 Sep 2017 16:04:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46724c021897412c62e73e258108ce945ca798367fc8bd22cb84b5ebd34f828`  
		Last Modified: Fri, 08 Sep 2017 16:04:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1aeb1592e2df6a52749077999a20b5a646ece9bb8376b2c926d4d7d7ed22cf`  
		Last Modified: Fri, 08 Sep 2017 16:04:54 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009c289392f891372cbccad0144e06b1dd8850949b3c752d0cb681e51917be49`  
		Last Modified: Fri, 08 Sep 2017 16:04:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; ppc64le

```console
$ docker pull postgres@sha256:501e1309690a63c5a8fc52259393c39f0e1b99c47e31b6c0a93f102487a62f71
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101737683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141380f86c93722d4459750c325c39cd7ad56cac506c3ff1b0fb9999962711a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:39:23 GMT
ENV PG_MAJOR=9.5
# Fri, 08 Sep 2017 01:39:23 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Fri, 08 Sep 2017 01:40:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:40:16 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:40:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:40:17 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:40:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:40:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:40:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:40:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:40:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:40:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:40:19 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:40:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f761a0cf580b9280805af54c5ae44900e9a9b2d26d3031e4b3036d690d10f0`  
		Last Modified: Fri, 08 Sep 2017 01:45:11 GMT  
		Size: 41.8 MB (41845596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ee769916f767fa9d33a37f315c47fb42ece1cee8fb4288a2aca11d1e3fd0d8`  
		Last Modified: Fri, 08 Sep 2017 01:44:58 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5535a6e6369f77adb516a2cb2849af301722352ebfbf7f044e43a5fd27043a`  
		Last Modified: Fri, 08 Sep 2017 01:44:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93d57126739ab4e9883fcd81b8d54906e9daff7f63de7a6369ac97649dc5c60`  
		Last Modified: Fri, 08 Sep 2017 01:44:58 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91038bcb9aa7296460f9c9289bbaed3d5fb4e60c7e4c38bbcd2499ac43609d9e`  
		Last Modified: Fri, 08 Sep 2017 01:44:58 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c933af48288bb9ee3fe266d8177957d7c7a5b2713186f35113fc672a263adcfd`  
		Last Modified: Fri, 08 Sep 2017 01:44:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; s390x

```console
$ docker pull postgres@sha256:a4629d307149f17e15329dd50859b1badba6f9ad8bbefa709d1bf7b2ea64cf3c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100016009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787ab87132cc8c5f5b5a6685034f7d8bf02d7c11e2b76d255e0df142c4d06bf1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:35:54 GMT
ENV PG_MAJOR=9.5
# Fri, 08 Sep 2017 06:35:54 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Fri, 08 Sep 2017 06:44:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 06:44:47 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 06:44:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 06:44:47 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:44:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 06:44:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 06:44:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 06:44:49 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:44:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 06:44:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 06:44:49 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 06:44:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618954bd7c0e58bde166a71ad0e537b96d29492b70ee481f899c9513c0115876`  
		Last Modified: Fri, 08 Sep 2017 07:11:12 GMT  
		Size: 39.1 MB (39110028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b221ef5b422f174c2ba0ab0e3bca431570b70a758ec5757e50be3451bcf34939`  
		Last Modified: Fri, 08 Sep 2017 07:11:00 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe788133be80ce96b46fa191a393221ff9db18f868bfceb48f97d4b8260bff8d`  
		Last Modified: Fri, 08 Sep 2017 07:11:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ad78a49be34e57bcbb9664bab99770694d1c952b768334c7e34c3dfac71ce0`  
		Last Modified: Fri, 08 Sep 2017 07:11:00 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4a98290e9af9d238d8c20e209b03b39f1340aca4f4e61aaa6b0db0307bdf15`  
		Last Modified: Fri, 08 Sep 2017 07:11:00 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80050e9ccac0d2b744412add348bfc2d26e99dfeae1581f1f027412abdbc3d06`  
		Last Modified: Fri, 08 Sep 2017 07:11:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.9`

```console
$ docker pull postgres@sha256:1800899fbf9902a5b841553942d32b9fb0bb761351ee5afa7b7c54c6e40ce417
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

### `postgres:9.5.9` - linux; amd64

```console
$ docker pull postgres@sha256:f5bfaf97679a00b023f2a71b08da1785f6875c1128886d012c4d74ecd35dc8a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103513283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6635927541e86f8351315dc5fd9b7557de71f5b61b5542c1e031bbbc71a55a76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:05:46 GMT
ENV PG_MAJOR=9.5
# Tue, 19 Sep 2017 07:05:46 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 19 Sep 2017 07:06:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:06:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:06:34 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:06:35 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:06:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:06:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:06:36 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:06:36 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:06:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:06:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:06:37 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:06:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afed3049484276ca1e90a30269ac187733b5d5728bf81f096ff2a1fbb9687b6`  
		Last Modified: Tue, 19 Sep 2017 07:22:12 GMT  
		Size: 42.8 MB (42803894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961a05306ebc34eb03f1ed294de29fbe50a65840baa1ecd669caf84b3b58f346`  
		Last Modified: Tue, 19 Sep 2017 07:21:56 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd2cdfb0d651d4fdbe440c6dabddd00f8ff2a8d66d7170947bef9bb1cc74e8c`  
		Last Modified: Tue, 19 Sep 2017 07:21:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cea55fb40d89feb9ad946b3ec74c6d0ba1d6c43ac5e8aecd1b9f8deaa9c51ae`  
		Last Modified: Tue, 19 Sep 2017 07:21:56 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7f4e843da80ccbfc055e897317947c0d93b12e09ae6a27a6933b14c19776d6`  
		Last Modified: Tue, 19 Sep 2017 07:21:56 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ee945a0af1c1e416d4755900dd63fa018e2e85c92d1895046f8b48b63b109a`  
		Last Modified: Tue, 19 Sep 2017 07:21:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; arm variant v5

```console
$ docker pull postgres@sha256:8611069085ef9a3b5b64d0fd2ce6ed6702e87ab3f00014603302f6e5352b77ac
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96054297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3604cb505e5059a562dcd2ece9b7787ffe87484658fa0ded5b16ebaf54cf9377`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 06:52:21 GMT
ENV PG_MAJOR=9.5
# Tue, 12 Sep 2017 06:52:24 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 12 Sep 2017 07:49:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 07:49:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 07:49:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 07:49:53 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 07:49:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 07:49:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 07:49:56 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 07:49:57 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 07:49:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 07:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 07:50:01 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 07:50:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe17eb2c380c8762778607ea3e81b6b4c1e4533f9e261f4146cf42546709d39`  
		Last Modified: Tue, 12 Sep 2017 10:19:14 GMT  
		Size: 37.1 MB (37073262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627220eae093cfc933a2e8e9d3b12a8f140e9520dc31c511f5e37b2fb1fdd1`  
		Last Modified: Tue, 12 Sep 2017 10:18:41 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743b4b98951dd98d1896e57fd422f9deaad5bb16dbd7d09ab1fd12695c912b79`  
		Last Modified: Tue, 12 Sep 2017 10:18:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d6fc908852033cbf90593d3e8fe2d8d5119b8bf5304ffe6b3105a8b504345a`  
		Last Modified: Tue, 12 Sep 2017 10:18:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000ea77006852854d1b4fdb5d2990b5c6e6583dd40700a01f9ea3f1a10d267b9`  
		Last Modified: Tue, 12 Sep 2017 10:18:42 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c5cde274bd52a61637381620caf4345c514051b01afe4e7d72743c4d148a09`  
		Last Modified: Tue, 12 Sep 2017 10:18:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; arm variant v7

```console
$ docker pull postgres@sha256:c824f663319af56c23b34f043ece6433e04f9d3465fc70b9ec96dd1ca1b2c58c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92681677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afab75abb731ab0ef5548190bc18f23a72995e910762f6a2036c6e16cb68f4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 Aug 2017 22:19:32 GMT
ENV PG_MAJOR=9.5
# Thu, 31 Aug 2017 22:19:33 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Thu, 31 Aug 2017 23:05:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 Aug 2017 23:05:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 Aug 2017 23:05:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 Aug 2017 23:06:03 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Aug 2017 23:06:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 Aug 2017 23:06:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 Aug 2017 23:06:21 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 Aug 2017 23:06:24 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 31 Aug 2017 23:06:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 23:06:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 23:06:33 GMT
EXPOSE 5432/tcp
# Thu, 31 Aug 2017 23:06:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8174bfe4ab00855945759fa7d69c19e88d22652a847bf99fe538343c3a64170`  
		Last Modified: Fri, 01 Sep 2017 21:03:23 GMT  
		Size: 35.9 MB (35901318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acfa2b43c29b184361ea8551412747a2185b89423ec09fa5446ae12632af2ec`  
		Last Modified: Fri, 01 Sep 2017 21:02:52 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26ed85c2e31dce641acefc892311d7f4d0492d4d743ee7bbe3e7ecfef1fa6e9`  
		Last Modified: Fri, 01 Sep 2017 21:02:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8439c409bcbab7056160532422239543badc2650fa304d55cccacb81c1f7e57`  
		Last Modified: Fri, 01 Sep 2017 21:02:52 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ffd2da3e22077cf572da60b6d30aea26b8e50a0fac3a71659105019d027cc7`  
		Last Modified: Fri, 01 Sep 2017 21:02:52 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186e0fdf090b40ccd7784f8aec4ef580438e5a9d865ee8fc5d4742c92ad25ec9`  
		Last Modified: Fri, 01 Sep 2017 21:02:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:3a4722187a8f2ffe137fdf99dc55fe851702d218e9499b323f3dc0abfdb61a17
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94636488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f40cfe96e9031012cb4c715d0537ba75369a5ca723333842461b385da43a66b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 00:25:34 GMT
ENV PG_MAJOR=9.5
# Sat, 09 Sep 2017 00:25:36 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Sat, 09 Sep 2017 01:03:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 01:03:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 01:03:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 01:03:39 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 01:03:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 01:03:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 01:03:44 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 01:03:45 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 01:03:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 01:03:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 01:03:52 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 01:03:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520ae4c60db7bddd38f3fbf96a689c25a7a48d554c2d330b7f97ef8d202de3b0`  
		Last Modified: Sat, 09 Sep 2017 02:44:43 GMT  
		Size: 36.6 MB (36626242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc76f7d00d73b6750d8bd1b8deb109c2896d786bcc2bf6ff316702f35855bc9`  
		Last Modified: Sat, 09 Sep 2017 02:44:28 GMT  
		Size: 6.8 KB (6831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac79bce5be1aa57c56ee27bec7fd0b22d40d502d4a55ebd2b6be1ed5c0e90c4`  
		Last Modified: Sat, 09 Sep 2017 02:44:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fe07d1df1d9dad7b23ae0ab883aad8eb02efed11ee29348467f3e3e6ce4554`  
		Last Modified: Sat, 09 Sep 2017 02:44:29 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611715a3ada3922165bc223f1cb63654db19e9edd3421d033ee3941d6aeb69f1`  
		Last Modified: Sat, 09 Sep 2017 02:44:27 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015ea3fc55c1dbcf65e8659d29bd3e17edaf3db1230728490871e0175f679799`  
		Last Modified: Sat, 09 Sep 2017 02:44:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; 386

```console
$ docker pull postgres@sha256:8885111f770d0349c3e5edf990e57b99ba06fc6a2aff23d5bdb92665abb4dee6
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105490963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c64eb64e8fc32df868008095b76e340979cf7bb80024541985cc35dca27153eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:50:36 GMT
ENV PG_MAJOR=9.5
# Fri, 08 Sep 2017 15:50:36 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Fri, 08 Sep 2017 15:51:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:51:57 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:51:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:51:58 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:51:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:51:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:51:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:51:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:52:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:52:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:52:00 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:52:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c48be3a289536348233fda2ca2c1ecb9bbcd1805b0771e3efa8217e23593f4`  
		Last Modified: Fri, 08 Sep 2017 16:05:07 GMT  
		Size: 44.6 MB (44625176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6893bca1934c24f4f02e1d3a07f3c5ca232ed6b1209b9f92084554eb458a114`  
		Last Modified: Fri, 08 Sep 2017 16:04:55 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c7686e328fe4423e320297f4ffb7dd5554654a3be6bf5ad73b8cb6c19c6143`  
		Last Modified: Fri, 08 Sep 2017 16:04:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46724c021897412c62e73e258108ce945ca798367fc8bd22cb84b5ebd34f828`  
		Last Modified: Fri, 08 Sep 2017 16:04:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1aeb1592e2df6a52749077999a20b5a646ece9bb8376b2c926d4d7d7ed22cf`  
		Last Modified: Fri, 08 Sep 2017 16:04:54 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009c289392f891372cbccad0144e06b1dd8850949b3c752d0cb681e51917be49`  
		Last Modified: Fri, 08 Sep 2017 16:04:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; ppc64le

```console
$ docker pull postgres@sha256:501e1309690a63c5a8fc52259393c39f0e1b99c47e31b6c0a93f102487a62f71
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101737683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141380f86c93722d4459750c325c39cd7ad56cac506c3ff1b0fb9999962711a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:39:23 GMT
ENV PG_MAJOR=9.5
# Fri, 08 Sep 2017 01:39:23 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Fri, 08 Sep 2017 01:40:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:40:16 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:40:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:40:17 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:40:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:40:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:40:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:40:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:40:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:40:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:40:19 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:40:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f761a0cf580b9280805af54c5ae44900e9a9b2d26d3031e4b3036d690d10f0`  
		Last Modified: Fri, 08 Sep 2017 01:45:11 GMT  
		Size: 41.8 MB (41845596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ee769916f767fa9d33a37f315c47fb42ece1cee8fb4288a2aca11d1e3fd0d8`  
		Last Modified: Fri, 08 Sep 2017 01:44:58 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5535a6e6369f77adb516a2cb2849af301722352ebfbf7f044e43a5fd27043a`  
		Last Modified: Fri, 08 Sep 2017 01:44:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93d57126739ab4e9883fcd81b8d54906e9daff7f63de7a6369ac97649dc5c60`  
		Last Modified: Fri, 08 Sep 2017 01:44:58 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91038bcb9aa7296460f9c9289bbaed3d5fb4e60c7e4c38bbcd2499ac43609d9e`  
		Last Modified: Fri, 08 Sep 2017 01:44:58 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c933af48288bb9ee3fe266d8177957d7c7a5b2713186f35113fc672a263adcfd`  
		Last Modified: Fri, 08 Sep 2017 01:44:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; s390x

```console
$ docker pull postgres@sha256:a4629d307149f17e15329dd50859b1badba6f9ad8bbefa709d1bf7b2ea64cf3c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100016009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787ab87132cc8c5f5b5a6685034f7d8bf02d7c11e2b76d255e0df142c4d06bf1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:35:54 GMT
ENV PG_MAJOR=9.5
# Fri, 08 Sep 2017 06:35:54 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Fri, 08 Sep 2017 06:44:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 06:44:47 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 06:44:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 06:44:47 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:44:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 06:44:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 06:44:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 06:44:49 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:44:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 06:44:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 06:44:49 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 06:44:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618954bd7c0e58bde166a71ad0e537b96d29492b70ee481f899c9513c0115876`  
		Last Modified: Fri, 08 Sep 2017 07:11:12 GMT  
		Size: 39.1 MB (39110028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b221ef5b422f174c2ba0ab0e3bca431570b70a758ec5757e50be3451bcf34939`  
		Last Modified: Fri, 08 Sep 2017 07:11:00 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe788133be80ce96b46fa191a393221ff9db18f868bfceb48f97d4b8260bff8d`  
		Last Modified: Fri, 08 Sep 2017 07:11:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ad78a49be34e57bcbb9664bab99770694d1c952b768334c7e34c3dfac71ce0`  
		Last Modified: Fri, 08 Sep 2017 07:11:00 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4a98290e9af9d238d8c20e209b03b39f1340aca4f4e61aaa6b0db0307bdf15`  
		Last Modified: Fri, 08 Sep 2017 07:11:00 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80050e9ccac0d2b744412add348bfc2d26e99dfeae1581f1f027412abdbc3d06`  
		Last Modified: Fri, 08 Sep 2017 07:11:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.9-alpine`

```console
$ docker pull postgres@sha256:ba717c18f5645e28f56d41797fa67103ca074e97efa1cd28d7291c15d49928a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:2602b4b01aac5d8cf83be51621116824a8a514aba5364b7766c0b0050d61fdd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14381234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15492ded96c93204f7511854a8a170b363d40134ba383e551c109fee441f1738`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:06:46 GMT
ENV PG_MAJOR=9.5
# Tue, 19 Sep 2017 07:06:46 GMT
ENV PG_VERSION=9.5.9
# Tue, 19 Sep 2017 07:06:46 GMT
ENV PG_SHA256=e98cd5c664ab5a05cb83618ba8078647815cb71f7a60437f0322c7518727cdd4
# Tue, 19 Sep 2017 07:09:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:09:20 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:09:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:09:21 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:09:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:09:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:09:22 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:09:22 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:09:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:09:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:09:23 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:09:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3e188ce220c491ed2ac2ef6c1d6af99a62f71005592544d90727797429fba5`  
		Last Modified: Tue, 19 Sep 2017 07:22:35 GMT  
		Size: 12.4 MB (12401650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b7daf8573f5733931730993d75cea54cd24894a8391a131ccfc2083585009e`  
		Last Modified: Tue, 19 Sep 2017 07:22:30 GMT  
		Size: 6.8 KB (6801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26499bda93fab88db2aad852edf486ba3dc2c7fbf9a83963dda11b76984d79d5`  
		Last Modified: Tue, 19 Sep 2017 07:22:31 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed6bfe73d83ffff8f55ed4a92d59a62cf153478275b37860dd0c5a1efd0c854`  
		Last Modified: Tue, 19 Sep 2017 07:22:30 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7e6f04934d4cb0853cdb4bc58022866eaba152f5f85f509f9feebdb73fe9cb`  
		Last Modified: Tue, 19 Sep 2017 07:22:31 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8179bc9429974a8d7a9cde90b6c542e415854c9278068f1cfe611b72d6821076`  
		Last Modified: Tue, 19 Sep 2017 07:22:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:ba717c18f5645e28f56d41797fa67103ca074e97efa1cd28d7291c15d49928a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:2602b4b01aac5d8cf83be51621116824a8a514aba5364b7766c0b0050d61fdd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14381234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15492ded96c93204f7511854a8a170b363d40134ba383e551c109fee441f1738`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:06:46 GMT
ENV PG_MAJOR=9.5
# Tue, 19 Sep 2017 07:06:46 GMT
ENV PG_VERSION=9.5.9
# Tue, 19 Sep 2017 07:06:46 GMT
ENV PG_SHA256=e98cd5c664ab5a05cb83618ba8078647815cb71f7a60437f0322c7518727cdd4
# Tue, 19 Sep 2017 07:09:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:09:20 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:09:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:09:21 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:09:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:09:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:09:22 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:09:22 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:09:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:09:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:09:23 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:09:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3e188ce220c491ed2ac2ef6c1d6af99a62f71005592544d90727797429fba5`  
		Last Modified: Tue, 19 Sep 2017 07:22:35 GMT  
		Size: 12.4 MB (12401650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b7daf8573f5733931730993d75cea54cd24894a8391a131ccfc2083585009e`  
		Last Modified: Tue, 19 Sep 2017 07:22:30 GMT  
		Size: 6.8 KB (6801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26499bda93fab88db2aad852edf486ba3dc2c7fbf9a83963dda11b76984d79d5`  
		Last Modified: Tue, 19 Sep 2017 07:22:31 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed6bfe73d83ffff8f55ed4a92d59a62cf153478275b37860dd0c5a1efd0c854`  
		Last Modified: Tue, 19 Sep 2017 07:22:30 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7e6f04934d4cb0853cdb4bc58022866eaba152f5f85f509f9feebdb73fe9cb`  
		Last Modified: Tue, 19 Sep 2017 07:22:31 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8179bc9429974a8d7a9cde90b6c542e415854c9278068f1cfe611b72d6821076`  
		Last Modified: Tue, 19 Sep 2017 07:22:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:144221a1e46af653bdda2bbb8e46ad3dd0c3f61ec0430030581031937f1d589d
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
$ docker pull postgres@sha256:4fdb7c462038d7e67f85eee9d95794dbd83f32b3143d93c711f544e8793ea5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104065639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1227c4263c8c59af10d93968ad47e154eedbae2c173633cb4a8ccf49ba28fb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:02:15 GMT
ENV PG_MAJOR=9.6
# Tue, 19 Sep 2017 07:02:16 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Tue, 19 Sep 2017 07:03:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:03:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:03:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:03:10 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:03:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:03:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:03:11 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:03:12 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:03:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:03:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:03:13 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:03:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5111d03bdfcebcffc0aac0f2940adb087850166369ef69dbfcb2fb07499a28`  
		Last Modified: Tue, 19 Sep 2017 07:21:01 GMT  
		Size: 43.4 MB (43355982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca8a9c099f89419baee9ac402e862ba517ea2b81983a31bb26ffff49950d20a`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2b99fdddf9ee883955cc6338e5d8bba7d085e7e6c4f8e50c6be296714a7638`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4ad1ab8ef2e937e00a5e69226bcc07cceeb0bfa5397d1728376e635b40ff5b`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:677839861264e2e4ffe1f2b1b0bc4fd429fc7eae8a08bab4d014e6cd5337bd84`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d98194bfad952c49a9b8013fcadbbfc436371924c18a60e28ada6d2eec3f74`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v5

```console
$ docker pull postgres@sha256:d1a131aeda1204ca9616fa39c837434b40fe009021dfe30703a76ee4957b0e01
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96579507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e60fce83a4482e113405f7b23df7947c4bf023e12370b3d7e85fa7aa906a685`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 01:11:35 GMT
ENV PG_MAJOR=9.6
# Sat, 09 Sep 2017 01:11:36 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Tue, 12 Sep 2017 06:51:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 06:51:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 06:51:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 06:51:36 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 06:51:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 06:51:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 06:51:39 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 06:51:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 06:51:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 06:51:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 06:51:44 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 06:51:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fa2f6245765995a90abbe93193ba1639dfb4e7fc087c11345b1e3519d543e5`  
		Last Modified: Tue, 12 Sep 2017 10:18:03 GMT  
		Size: 37.6 MB (37598198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608085701aebcc62f2d219edcd20b4f07b0e75d3f5b23e9870a12a5745158672`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2f28a16c9a0092f60eff440dbda01f07de38674e865fea65ea17e14f34c5b3`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6925025d7db958a515c46e2fadf6d13eb126380b3a54d643cf480fc71b143b3f`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7e5c887cfaaf0f7a6b1662c59ea96269cec90278a01ac8b95a04cfc218b4f8`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce32cbdf65fc09a9d9b0850be683498e9280a3bf8852fb383f7d33aafc39bd7`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v7

```console
$ docker pull postgres@sha256:8facf2298de82094e3597fe0a7f9fdc2cf931fe1aee505c4853091f6c8a00d8a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93178558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8700fbd1782a42613ee76a85778026d810f33451b821616333461a4493a556`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 Aug 2017 21:28:39 GMT
ENV PG_MAJOR=9.6
# Thu, 31 Aug 2017 21:28:39 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Thu, 31 Aug 2017 22:18:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 Aug 2017 22:18:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 Aug 2017 22:18:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 Aug 2017 22:18:53 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Aug 2017 22:18:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 Aug 2017 22:18:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 Aug 2017 22:18:57 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 Aug 2017 22:18:58 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 31 Aug 2017 22:19:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 22:19:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 22:19:03 GMT
EXPOSE 5432/tcp
# Thu, 31 Aug 2017 22:19:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d041a82ccd92ed1728803a1894ed0defdbd7d6e9d653bcf64d1d36fc5654`  
		Last Modified: Fri, 01 Sep 2017 21:02:11 GMT  
		Size: 36.4 MB (36397930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5d6628c4417ab1c45465003ab0df7bceefc78cbb6f88936a83f0a9a7f916e8`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c067b42d18cab8bb389679324b7793c2b58945aef3176a17bac35e4d67a1ef`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158e30ec009bea8ace73be54db7ea45a6d47a7880af8f385aec250ae8ce752c3`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d2a237e2bfbbe35b42e015f56a5f0f050cbe53acb8d220b745785aa9a4cf1`  
		Last Modified: Fri, 01 Sep 2017 21:01:31 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e51cf292fed8e286b872b80b10df2d1392f1d801041874fe0dbd13326226c4e`  
		Last Modified: Fri, 01 Sep 2017 21:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f80dc2795e9d8fe7999e4255c73812b131404b27cc8373dafd785e44fdab45df
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95155573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721c6c56ceb2129a8b6805463ad1b7d9e8593f3e0a2aa5b87db1a635c83e2d20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 23:45:10 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 23:45:11 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Sat, 09 Sep 2017 00:25:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 00:25:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 00:25:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 00:25:17 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 00:25:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 00:25:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 00:25:20 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 00:25:21 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 00:25:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 00:25:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 00:25:25 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 00:25:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ed3a41cc652aa346acbb0f65c6f9945f80da65406cf3aae26cf569fd130b37`  
		Last Modified: Sat, 09 Sep 2017 02:43:52 GMT  
		Size: 37.1 MB (37145050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47ba00d97c6783154c89f143092848a5030e3e0bad27e8578f96b9779f40b7e`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c984a74d41bc82cb9fe00dadf875cd424fa97ba307148b915d9429824da2678`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beb2e73e2f4ae30c23d03669b883f10ee8923e1b54daedcceb5f10d0b942f52`  
		Last Modified: Sat, 09 Sep 2017 02:43:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a301a920e52e601d9104389f6ba9e292b61ffbc109554df8b09bdf4fe18fbc7`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2961f7f2d32fcfac0d5fd16324aa97191ddf34319428bf3bc5f825154e15092`  
		Last Modified: Sat, 09 Sep 2017 02:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; 386

```console
$ docker pull postgres@sha256:4c88a52e6fe16220ee7bfcb7fb99f10191aa2fa3e5feb3a47b19677e59ebfe25
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106024583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337e6527c76be5530dda9bd2d4e8f4f53ecd2f711df1e6c54556b12f9b35548e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:45:24 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 15:45:24 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 15:47:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:47:30 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:47:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:47:32 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:47:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:47:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:47:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:47:33 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:47:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:47:35 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:47:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1ad3897ad4ddd7dff5e4a1527f0cc0618e13ed5999dbf08a7ad6d96d46eb6b`  
		Last Modified: Fri, 08 Sep 2017 16:01:25 GMT  
		Size: 45.2 MB (45158524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebc9895c79bff683ea10c61dcdd8258dedf35ca664009ddd46b883dce690f26`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e407853a56a4788b634efa2d602d02e8d5e09298bc90c4e8a58b3fc573942cba`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8116cb6b6e6011cc3a7e037fb6c019f3add378d85952910bbedc4f05ad01c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898c7320c7b1c9b85586fa7cf78d86a560c3cee31a72c81e603ab77fccd44418`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bf3aef489a78f3885362c2ee9d4749e155baa9ea3e209f0ec5f915960b4371`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; ppc64le

```console
$ docker pull postgres@sha256:99f2583d5be605c436afe4bb22a77e7f2df55eb38ca6893c5340f7eca231a1e1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102264543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ff48cc6bedb39f528123984f1c0aeb82dc1abb222e548eee6ac2e513967d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:38:21 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 01:38:22 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 01:39:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:39:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:39:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:39:16 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:39:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:39:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:39:17 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:39:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:39:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:39:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:39:19 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:39:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58efb6adbd28c83040fdb59fe204c4e526a9e51e3e26ec3582d23031dd2b2ee`  
		Last Modified: Fri, 08 Sep 2017 01:44:27 GMT  
		Size: 42.4 MB (42372182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6b270c9cafbfaf1ada8665bd2d7ca3128e4dfa876f93c317f1e924269e36d3`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2f0724273e20255f50b26fbde0481215c4326f53f225b0eae1400458818fa0`  
		Last Modified: Fri, 08 Sep 2017 01:44:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5c722701cf85da119c31c7487026ad706432b02e42a2d919b492111eb1ddba`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f66128af7e88bace7ee239f67c769f2348218d333b7c5a49d354977f7e4661c`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c09e22b084cbba3bc9d01d8ff0ab5e13e49d9bd67fbb2d8483d09a0e0de2d2`  
		Last Modified: Fri, 08 Sep 2017 01:44:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; s390x

```console
$ docker pull postgres@sha256:b28aaaa4365594a567179c5b67548cda5df81f755756965291c960aa81ca56ef
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100566753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d132cabf41895dd1685d0ad77a02d6b1a090784b772f01803ec7379ff1b536`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:26:26 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 06:26:26 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 06:35:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 06:35:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 06:35:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 06:35:51 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:35:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 06:35:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 06:35:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 06:35:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:35:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 06:35:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 06:35:52 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 06:35:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634bcfae229d3e353c380a34be6ca3b31c4f3c05cc085d320e538aa643a1ee3a`  
		Last Modified: Fri, 08 Sep 2017 07:10:48 GMT  
		Size: 39.7 MB (39660501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0caa17d671ee7963b28bb5f93d6de481e5aa62612ec0731e9ea35118220af9`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 7.1 KB (7103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af83523678e63c2acf314edae41aaa11743a7251dc0622e1e16f34311650ab1`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84f8bf0d2bbcc8eb0304a2d082fb9271fa4befa055359632e1694f8ee27a4e6`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994fead2becab397901820861ce4ad9bb8b2bc8d4a61476cb23dbcf39465774`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850608b76a01570b0b66c0f20383a1830addaf980edcf2b1769352875dc36056`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.5`

```console
$ docker pull postgres@sha256:144221a1e46af653bdda2bbb8e46ad3dd0c3f61ec0430030581031937f1d589d
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

### `postgres:9.6.5` - linux; amd64

```console
$ docker pull postgres@sha256:4fdb7c462038d7e67f85eee9d95794dbd83f32b3143d93c711f544e8793ea5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104065639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1227c4263c8c59af10d93968ad47e154eedbae2c173633cb4a8ccf49ba28fb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:02:15 GMT
ENV PG_MAJOR=9.6
# Tue, 19 Sep 2017 07:02:16 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Tue, 19 Sep 2017 07:03:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:03:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:03:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:03:10 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:03:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:03:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:03:11 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:03:12 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:03:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:03:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:03:13 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:03:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5111d03bdfcebcffc0aac0f2940adb087850166369ef69dbfcb2fb07499a28`  
		Last Modified: Tue, 19 Sep 2017 07:21:01 GMT  
		Size: 43.4 MB (43355982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca8a9c099f89419baee9ac402e862ba517ea2b81983a31bb26ffff49950d20a`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2b99fdddf9ee883955cc6338e5d8bba7d085e7e6c4f8e50c6be296714a7638`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4ad1ab8ef2e937e00a5e69226bcc07cceeb0bfa5397d1728376e635b40ff5b`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:677839861264e2e4ffe1f2b1b0bc4fd429fc7eae8a08bab4d014e6cd5337bd84`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d98194bfad952c49a9b8013fcadbbfc436371924c18a60e28ada6d2eec3f74`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; arm variant v5

```console
$ docker pull postgres@sha256:d1a131aeda1204ca9616fa39c837434b40fe009021dfe30703a76ee4957b0e01
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96579507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e60fce83a4482e113405f7b23df7947c4bf023e12370b3d7e85fa7aa906a685`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 01:11:35 GMT
ENV PG_MAJOR=9.6
# Sat, 09 Sep 2017 01:11:36 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Tue, 12 Sep 2017 06:51:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 06:51:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 06:51:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 06:51:36 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 06:51:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 06:51:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 06:51:39 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 06:51:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 06:51:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 06:51:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 06:51:44 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 06:51:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fa2f6245765995a90abbe93193ba1639dfb4e7fc087c11345b1e3519d543e5`  
		Last Modified: Tue, 12 Sep 2017 10:18:03 GMT  
		Size: 37.6 MB (37598198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608085701aebcc62f2d219edcd20b4f07b0e75d3f5b23e9870a12a5745158672`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2f28a16c9a0092f60eff440dbda01f07de38674e865fea65ea17e14f34c5b3`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6925025d7db958a515c46e2fadf6d13eb126380b3a54d643cf480fc71b143b3f`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7e5c887cfaaf0f7a6b1662c59ea96269cec90278a01ac8b95a04cfc218b4f8`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce32cbdf65fc09a9d9b0850be683498e9280a3bf8852fb383f7d33aafc39bd7`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; arm variant v7

```console
$ docker pull postgres@sha256:8facf2298de82094e3597fe0a7f9fdc2cf931fe1aee505c4853091f6c8a00d8a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93178558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8700fbd1782a42613ee76a85778026d810f33451b821616333461a4493a556`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 Aug 2017 21:28:39 GMT
ENV PG_MAJOR=9.6
# Thu, 31 Aug 2017 21:28:39 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Thu, 31 Aug 2017 22:18:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 Aug 2017 22:18:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 Aug 2017 22:18:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 Aug 2017 22:18:53 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Aug 2017 22:18:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 Aug 2017 22:18:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 Aug 2017 22:18:57 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 Aug 2017 22:18:58 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 31 Aug 2017 22:19:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 22:19:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 22:19:03 GMT
EXPOSE 5432/tcp
# Thu, 31 Aug 2017 22:19:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d041a82ccd92ed1728803a1894ed0defdbd7d6e9d653bcf64d1d36fc5654`  
		Last Modified: Fri, 01 Sep 2017 21:02:11 GMT  
		Size: 36.4 MB (36397930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5d6628c4417ab1c45465003ab0df7bceefc78cbb6f88936a83f0a9a7f916e8`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c067b42d18cab8bb389679324b7793c2b58945aef3176a17bac35e4d67a1ef`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158e30ec009bea8ace73be54db7ea45a6d47a7880af8f385aec250ae8ce752c3`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d2a237e2bfbbe35b42e015f56a5f0f050cbe53acb8d220b745785aa9a4cf1`  
		Last Modified: Fri, 01 Sep 2017 21:01:31 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e51cf292fed8e286b872b80b10df2d1392f1d801041874fe0dbd13326226c4e`  
		Last Modified: Fri, 01 Sep 2017 21:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f80dc2795e9d8fe7999e4255c73812b131404b27cc8373dafd785e44fdab45df
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95155573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721c6c56ceb2129a8b6805463ad1b7d9e8593f3e0a2aa5b87db1a635c83e2d20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 23:45:10 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 23:45:11 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Sat, 09 Sep 2017 00:25:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 00:25:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 00:25:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 00:25:17 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 00:25:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 00:25:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 00:25:20 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 00:25:21 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 00:25:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 00:25:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 00:25:25 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 00:25:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ed3a41cc652aa346acbb0f65c6f9945f80da65406cf3aae26cf569fd130b37`  
		Last Modified: Sat, 09 Sep 2017 02:43:52 GMT  
		Size: 37.1 MB (37145050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47ba00d97c6783154c89f143092848a5030e3e0bad27e8578f96b9779f40b7e`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c984a74d41bc82cb9fe00dadf875cd424fa97ba307148b915d9429824da2678`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beb2e73e2f4ae30c23d03669b883f10ee8923e1b54daedcceb5f10d0b942f52`  
		Last Modified: Sat, 09 Sep 2017 02:43:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a301a920e52e601d9104389f6ba9e292b61ffbc109554df8b09bdf4fe18fbc7`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2961f7f2d32fcfac0d5fd16324aa97191ddf34319428bf3bc5f825154e15092`  
		Last Modified: Sat, 09 Sep 2017 02:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; 386

```console
$ docker pull postgres@sha256:4c88a52e6fe16220ee7bfcb7fb99f10191aa2fa3e5feb3a47b19677e59ebfe25
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106024583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337e6527c76be5530dda9bd2d4e8f4f53ecd2f711df1e6c54556b12f9b35548e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:45:24 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 15:45:24 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 15:47:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:47:30 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:47:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:47:32 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:47:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:47:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:47:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:47:33 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:47:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:47:35 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:47:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1ad3897ad4ddd7dff5e4a1527f0cc0618e13ed5999dbf08a7ad6d96d46eb6b`  
		Last Modified: Fri, 08 Sep 2017 16:01:25 GMT  
		Size: 45.2 MB (45158524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebc9895c79bff683ea10c61dcdd8258dedf35ca664009ddd46b883dce690f26`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e407853a56a4788b634efa2d602d02e8d5e09298bc90c4e8a58b3fc573942cba`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8116cb6b6e6011cc3a7e037fb6c019f3add378d85952910bbedc4f05ad01c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898c7320c7b1c9b85586fa7cf78d86a560c3cee31a72c81e603ab77fccd44418`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bf3aef489a78f3885362c2ee9d4749e155baa9ea3e209f0ec5f915960b4371`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; ppc64le

```console
$ docker pull postgres@sha256:99f2583d5be605c436afe4bb22a77e7f2df55eb38ca6893c5340f7eca231a1e1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102264543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ff48cc6bedb39f528123984f1c0aeb82dc1abb222e548eee6ac2e513967d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:38:21 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 01:38:22 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 01:39:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:39:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:39:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:39:16 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:39:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:39:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:39:17 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:39:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:39:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:39:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:39:19 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:39:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58efb6adbd28c83040fdb59fe204c4e526a9e51e3e26ec3582d23031dd2b2ee`  
		Last Modified: Fri, 08 Sep 2017 01:44:27 GMT  
		Size: 42.4 MB (42372182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6b270c9cafbfaf1ada8665bd2d7ca3128e4dfa876f93c317f1e924269e36d3`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2f0724273e20255f50b26fbde0481215c4326f53f225b0eae1400458818fa0`  
		Last Modified: Fri, 08 Sep 2017 01:44:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5c722701cf85da119c31c7487026ad706432b02e42a2d919b492111eb1ddba`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f66128af7e88bace7ee239f67c769f2348218d333b7c5a49d354977f7e4661c`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c09e22b084cbba3bc9d01d8ff0ab5e13e49d9bd67fbb2d8483d09a0e0de2d2`  
		Last Modified: Fri, 08 Sep 2017 01:44:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; s390x

```console
$ docker pull postgres@sha256:b28aaaa4365594a567179c5b67548cda5df81f755756965291c960aa81ca56ef
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100566753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d132cabf41895dd1685d0ad77a02d6b1a090784b772f01803ec7379ff1b536`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:26:26 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 06:26:26 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 06:35:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 06:35:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 06:35:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 06:35:51 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:35:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 06:35:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 06:35:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 06:35:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:35:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 06:35:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 06:35:52 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 06:35:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634bcfae229d3e353c380a34be6ca3b31c4f3c05cc085d320e538aa643a1ee3a`  
		Last Modified: Fri, 08 Sep 2017 07:10:48 GMT  
		Size: 39.7 MB (39660501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0caa17d671ee7963b28bb5f93d6de481e5aa62612ec0731e9ea35118220af9`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 7.1 KB (7103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af83523678e63c2acf314edae41aaa11743a7251dc0622e1e16f34311650ab1`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84f8bf0d2bbcc8eb0304a2d082fb9271fa4befa055359632e1694f8ee27a4e6`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994fead2becab397901820861ce4ad9bb8b2bc8d4a61476cb23dbcf39465774`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850608b76a01570b0b66c0f20383a1830addaf980edcf2b1769352875dc36056`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.5-alpine`

```console
$ docker pull postgres@sha256:fff2f8260771e3e872f82e02d814a06fef6c0b844cd2a22affb49a61b2aa48c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:04d0be6dd3ed026246232fed95b88611212ff7cbde3e430fc2ab780e5e9eb9c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14668878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70be68deb8bb4b0edb8db26c7dd3f94b6b30f8de1982252c89020cdd79cc906`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_MAJOR=9.6
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_VERSION=9.6.5
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_SHA256=06da12a7e3dddeb803962af8309fa06da9d6989f49e22865335f0a14bad0744c
# Tue, 19 Sep 2017 07:05:33 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:05:34 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:05:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:05:35 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:05:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:05:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:05:36 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:05:36 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:05:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:05:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:05:37 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:05:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f81496d3e1fb4e053b615d0d657d3140a89198a87118deaeed315342b03bf8`  
		Last Modified: Tue, 19 Sep 2017 07:21:32 GMT  
		Size: 12.7 MB (12689028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7694090629b5f5bcd38310020cf8eb569d9d14083183f85f4a16399e2af086`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496e7202df576d27a6310a7b76ea5a60a0ca20abc34e735c26a247d10550c8a3`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6f700ae298cc2a2844cbcc0fa783829465eea45758c2537262b60ba0a9d00a`  
		Last Modified: Tue, 19 Sep 2017 07:21:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f89504db9d78ae311cfd74e8ad076db0333040470602f64f53a3254e2b9c6f`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ed85fbfb23059d14f97ba0ab7e23cd7a802eca4831f51a6bfc705ac3bcb9b9`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:fff2f8260771e3e872f82e02d814a06fef6c0b844cd2a22affb49a61b2aa48c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:04d0be6dd3ed026246232fed95b88611212ff7cbde3e430fc2ab780e5e9eb9c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14668878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70be68deb8bb4b0edb8db26c7dd3f94b6b30f8de1982252c89020cdd79cc906`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_MAJOR=9.6
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_VERSION=9.6.5
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_SHA256=06da12a7e3dddeb803962af8309fa06da9d6989f49e22865335f0a14bad0744c
# Tue, 19 Sep 2017 07:05:33 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:05:34 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:05:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:05:35 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:05:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:05:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:05:36 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:05:36 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:05:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:05:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:05:37 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:05:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f81496d3e1fb4e053b615d0d657d3140a89198a87118deaeed315342b03bf8`  
		Last Modified: Tue, 19 Sep 2017 07:21:32 GMT  
		Size: 12.7 MB (12689028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7694090629b5f5bcd38310020cf8eb569d9d14083183f85f4a16399e2af086`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496e7202df576d27a6310a7b76ea5a60a0ca20abc34e735c26a247d10550c8a3`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6f700ae298cc2a2844cbcc0fa783829465eea45758c2537262b60ba0a9d00a`  
		Last Modified: Tue, 19 Sep 2017 07:21:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f89504db9d78ae311cfd74e8ad076db0333040470602f64f53a3254e2b9c6f`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ed85fbfb23059d14f97ba0ab7e23cd7a802eca4831f51a6bfc705ac3bcb9b9`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:fff2f8260771e3e872f82e02d814a06fef6c0b844cd2a22affb49a61b2aa48c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:04d0be6dd3ed026246232fed95b88611212ff7cbde3e430fc2ab780e5e9eb9c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14668878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70be68deb8bb4b0edb8db26c7dd3f94b6b30f8de1982252c89020cdd79cc906`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_MAJOR=9.6
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_VERSION=9.6.5
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_SHA256=06da12a7e3dddeb803962af8309fa06da9d6989f49e22865335f0a14bad0744c
# Tue, 19 Sep 2017 07:05:33 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:05:34 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:05:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:05:35 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:05:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:05:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:05:36 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:05:36 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:05:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:05:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:05:37 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:05:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f81496d3e1fb4e053b615d0d657d3140a89198a87118deaeed315342b03bf8`  
		Last Modified: Tue, 19 Sep 2017 07:21:32 GMT  
		Size: 12.7 MB (12689028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7694090629b5f5bcd38310020cf8eb569d9d14083183f85f4a16399e2af086`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496e7202df576d27a6310a7b76ea5a60a0ca20abc34e735c26a247d10550c8a3`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6f700ae298cc2a2844cbcc0fa783829465eea45758c2537262b60ba0a9d00a`  
		Last Modified: Tue, 19 Sep 2017 07:21:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f89504db9d78ae311cfd74e8ad076db0333040470602f64f53a3254e2b9c6f`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ed85fbfb23059d14f97ba0ab7e23cd7a802eca4831f51a6bfc705ac3bcb9b9`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:fff2f8260771e3e872f82e02d814a06fef6c0b844cd2a22affb49a61b2aa48c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:04d0be6dd3ed026246232fed95b88611212ff7cbde3e430fc2ab780e5e9eb9c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14668878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70be68deb8bb4b0edb8db26c7dd3f94b6b30f8de1982252c89020cdd79cc906`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:03:22 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 07:03:22 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:03:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_MAJOR=9.6
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_VERSION=9.6.5
# Tue, 19 Sep 2017 07:03:23 GMT
ENV PG_SHA256=06da12a7e3dddeb803962af8309fa06da9d6989f49e22865335f0a14bad0744c
# Tue, 19 Sep 2017 07:05:33 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:05:34 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:05:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:05:35 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:05:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:05:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:05:36 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:05:36 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:05:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:05:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:05:37 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:05:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fa9f8b9508bd7d908d4d4657fa4b44e7ddf5863330d25b1d13a01346573e1`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a6308043b18961859d66a2818fc70de3be35e6dc6cf1a3cfa0dffb2b1c8ea`  
		Last Modified: Tue, 19 Sep 2017 07:21:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f81496d3e1fb4e053b615d0d657d3140a89198a87118deaeed315342b03bf8`  
		Last Modified: Tue, 19 Sep 2017 07:21:32 GMT  
		Size: 12.7 MB (12689028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7694090629b5f5bcd38310020cf8eb569d9d14083183f85f4a16399e2af086`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496e7202df576d27a6310a7b76ea5a60a0ca20abc34e735c26a247d10550c8a3`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6f700ae298cc2a2844cbcc0fa783829465eea45758c2537262b60ba0a9d00a`  
		Last Modified: Tue, 19 Sep 2017 07:21:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f89504db9d78ae311cfd74e8ad076db0333040470602f64f53a3254e2b9c6f`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ed85fbfb23059d14f97ba0ab7e23cd7a802eca4831f51a6bfc705ac3bcb9b9`  
		Last Modified: Tue, 19 Sep 2017 07:21:28 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:144221a1e46af653bdda2bbb8e46ad3dd0c3f61ec0430030581031937f1d589d
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
$ docker pull postgres@sha256:4fdb7c462038d7e67f85eee9d95794dbd83f32b3143d93c711f544e8793ea5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104065639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1227c4263c8c59af10d93968ad47e154eedbae2c173633cb4a8ccf49ba28fb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:01:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 07:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 19 Sep 2017 07:01:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 07:01:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 07:02:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 19 Sep 2017 07:02:10 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 07:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 07:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 19 Sep 2017 07:02:15 GMT
ENV PG_MAJOR=9.6
# Tue, 19 Sep 2017 07:02:16 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Tue, 19 Sep 2017 07:03:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 19 Sep 2017 07:03:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:03:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:03:10 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:03:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:03:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:03:11 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:03:12 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:03:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:03:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:03:13 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:03:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436a6256db12145efeb5b2deada381de2a66f1868479a381a024a066dfa9b256`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197c903e49fb39074cbe491ea33b023db55cf439e7e3dbbb997780b2e6ec9bb`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 985.2 KB (985151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e75395186583aff8c49b08763236f5ec7eed5b91397d7807ca62a3df9b07b3`  
		Last Modified: Tue, 19 Sep 2017 07:20:51 GMT  
		Size: 7.1 MB (7112922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22fa190326d9ce91889fcf8c9b0109bbab938d2286cc90d46b69a92bcc3d167`  
		Last Modified: Tue, 19 Sep 2017 07:20:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee77fd7e88a3f762920c1277f2da4775c446ec87deb88a6fc4d6e90499f1f2f9`  
		Last Modified: Tue, 19 Sep 2017 07:20:48 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5111d03bdfcebcffc0aac0f2940adb087850166369ef69dbfcb2fb07499a28`  
		Last Modified: Tue, 19 Sep 2017 07:21:01 GMT  
		Size: 43.4 MB (43355982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca8a9c099f89419baee9ac402e862ba517ea2b81983a31bb26ffff49950d20a`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2b99fdddf9ee883955cc6338e5d8bba7d085e7e6c4f8e50c6be296714a7638`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4ad1ab8ef2e937e00a5e69226bcc07cceeb0bfa5397d1728376e635b40ff5b`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:677839861264e2e4ffe1f2b1b0bc4fd429fc7eae8a08bab4d014e6cd5337bd84`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d98194bfad952c49a9b8013fcadbbfc436371924c18a60e28ada6d2eec3f74`  
		Last Modified: Tue, 19 Sep 2017 07:20:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:d1a131aeda1204ca9616fa39c837434b40fe009021dfe30703a76ee4957b0e01
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96579507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e60fce83a4482e113405f7b23df7947c4bf023e12370b3d7e85fa7aa906a685`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:58:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Sep 2017 00:58:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:11:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Sep 2017 01:11:14 GMT
ENV LANG=en_US.utf8
# Sat, 09 Sep 2017 01:11:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Sep 2017 01:11:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 01:11:35 GMT
ENV PG_MAJOR=9.6
# Sat, 09 Sep 2017 01:11:36 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Tue, 12 Sep 2017 06:51:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 12 Sep 2017 06:51:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 12 Sep 2017 06:51:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Sep 2017 06:51:36 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 06:51:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Sep 2017 06:51:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Sep 2017 06:51:39 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Sep 2017 06:51:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Tue, 12 Sep 2017 06:51:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 06:51:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 06:51:44 GMT
EXPOSE 5432/tcp
# Tue, 12 Sep 2017 06:51:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39962272c0530ad0928255e61d3f0f07a54be2a08a7983edf5f92bccb1e344bb`  
		Last Modified: Tue, 12 Sep 2017 10:17:35 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a47eb5f3f45c31676515a5b278c63b18e3afcca219698043819792821a72f2`  
		Last Modified: Tue, 12 Sep 2017 10:17:31 GMT  
		Size: 974.8 KB (974811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f091af872634ff526a4a9307bd97fc771ba09bb7a72496b59ef5a7093f1ca0`  
		Last Modified: Tue, 12 Sep 2017 10:17:46 GMT  
		Size: 7.1 MB (7112984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4debf953b6545bce21594847ae1cdec6ed9a6b3db0b3301e4cd5ca177181bef9`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83e144e78add6abe2b5e4ebe3f9f76472192da8c576d49053bde479081ea709`  
		Last Modified: Tue, 12 Sep 2017 10:17:25 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fa2f6245765995a90abbe93193ba1639dfb4e7fc087c11345b1e3519d543e5`  
		Last Modified: Tue, 12 Sep 2017 10:18:03 GMT  
		Size: 37.6 MB (37598198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608085701aebcc62f2d219edcd20b4f07b0e75d3f5b23e9870a12a5745158672`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2f28a16c9a0092f60eff440dbda01f07de38674e865fea65ea17e14f34c5b3`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6925025d7db958a515c46e2fadf6d13eb126380b3a54d643cf480fc71b143b3f`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7e5c887cfaaf0f7a6b1662c59ea96269cec90278a01ac8b95a04cfc218b4f8`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce32cbdf65fc09a9d9b0850be683498e9280a3bf8852fb383f7d33aafc39bd7`  
		Last Modified: Tue, 12 Sep 2017 10:17:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:8facf2298de82094e3597fe0a7f9fdc2cf931fe1aee505c4853091f6c8a00d8a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93178558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8700fbd1782a42613ee76a85778026d810f33451b821616333461a4493a556`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Thu, 31 Aug 2017 21:21:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 Aug 2017 21:21:12 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 Aug 2017 21:21:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 Aug 2017 21:24:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 Aug 2017 21:28:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 Aug 2017 21:28:13 GMT
ENV LANG=en_US.utf8
# Thu, 31 Aug 2017 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 Aug 2017 21:28:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 Aug 2017 21:28:39 GMT
ENV PG_MAJOR=9.6
# Thu, 31 Aug 2017 21:28:39 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Thu, 31 Aug 2017 22:18:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 Aug 2017 22:18:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 Aug 2017 22:18:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 Aug 2017 22:18:53 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Aug 2017 22:18:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 Aug 2017 22:18:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 Aug 2017 22:18:57 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 Aug 2017 22:18:58 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 31 Aug 2017 22:19:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 22:19:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 22:19:03 GMT
EXPOSE 5432/tcp
# Thu, 31 Aug 2017 22:19:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd8fd42f1fc46425d7c5a1f0b87026bd2877c1179d597f0eef3edaaed0bd91`  
		Last Modified: Fri, 01 Sep 2017 21:01:43 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda1d931115ddf63ec0f8a314dbdc1d35df727d4ef56030bf76a860e8e0b0d9`  
		Last Modified: Fri, 01 Sep 2017 21:01:41 GMT  
		Size: 959.7 KB (959661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54575937da13979c378d90bb18e326341f053c288ab4434efa17a5cbebeba3`  
		Last Modified: Fri, 01 Sep 2017 21:01:58 GMT  
		Size: 7.1 MB (7113014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3db813713b340b9e73b11fa8dc01293bbd0d96cb87c876aad10bb1d187f10d4`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7d0fbe8d473796305c768bc1d7b7437be2fe9ed2192848066d5f61bf4a2d7`  
		Last Modified: Fri, 01 Sep 2017 21:01:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d041a82ccd92ed1728803a1894ed0defdbd7d6e9d653bcf64d1d36fc5654`  
		Last Modified: Fri, 01 Sep 2017 21:02:11 GMT  
		Size: 36.4 MB (36397930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5d6628c4417ab1c45465003ab0df7bceefc78cbb6f88936a83f0a9a7f916e8`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c067b42d18cab8bb389679324b7793c2b58945aef3176a17bac35e4d67a1ef`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158e30ec009bea8ace73be54db7ea45a6d47a7880af8f385aec250ae8ce752c3`  
		Last Modified: Fri, 01 Sep 2017 21:01:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d2a237e2bfbbe35b42e015f56a5f0f050cbe53acb8d220b745785aa9a4cf1`  
		Last Modified: Fri, 01 Sep 2017 21:01:31 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e51cf292fed8e286b872b80b10df2d1392f1d801041874fe0dbd13326226c4e`  
		Last Modified: Fri, 01 Sep 2017 21:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f80dc2795e9d8fe7999e4255c73812b131404b27cc8373dafd785e44fdab45df
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95155573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721c6c56ceb2129a8b6805463ad1b7d9e8593f3e0a2aa5b87db1a635c83e2d20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 23:43:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 23:43:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 23:44:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 23:44:58 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 23:44:59 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 23:45:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 23:45:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 23:45:10 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 23:45:11 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Sat, 09 Sep 2017 00:25:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Sep 2017 00:25:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Sep 2017 00:25:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Sep 2017 00:25:17 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 00:25:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Sep 2017 00:25:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Sep 2017 00:25:20 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Sep 2017 00:25:21 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 09 Sep 2017 00:25:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 00:25:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 00:25:25 GMT
EXPOSE 5432/tcp
# Sat, 09 Sep 2017 00:25:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781759b649c26203b4a27e64393e8bdd9872dd044e760bcf0282e0a7abdfeb19`  
		Last Modified: Sat, 09 Sep 2017 02:43:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b522a80fe77c156872a74759ae149d99524b8c092e53f780553609e6241f87`  
		Last Modified: Sat, 09 Sep 2017 02:43:38 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f59a9e2347edd55703588c84d162d20e81e78dea423e66342d1851b82c7618`  
		Last Modified: Sat, 09 Sep 2017 02:43:42 GMT  
		Size: 7.1 MB (7112967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d9409d3241798ccac167cc07742ce716374926c58e89e83923b8368531cdc`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578dc02e2c71817dc01ae642dc5ac2d77a2e96f359040662288f3fa3036ec05d`  
		Last Modified: Sat, 09 Sep 2017 02:43:36 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ed3a41cc652aa346acbb0f65c6f9945f80da65406cf3aae26cf569fd130b37`  
		Last Modified: Sat, 09 Sep 2017 02:43:52 GMT  
		Size: 37.1 MB (37145050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47ba00d97c6783154c89f143092848a5030e3e0bad27e8578f96b9779f40b7e`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c984a74d41bc82cb9fe00dadf875cd424fa97ba307148b915d9429824da2678`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beb2e73e2f4ae30c23d03669b883f10ee8923e1b54daedcceb5f10d0b942f52`  
		Last Modified: Sat, 09 Sep 2017 02:43:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a301a920e52e601d9104389f6ba9e292b61ffbc109554df8b09bdf4fe18fbc7`  
		Last Modified: Sat, 09 Sep 2017 02:43:34 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2961f7f2d32fcfac0d5fd16324aa97191ddf34319428bf3bc5f825154e15092`  
		Last Modified: Sat, 09 Sep 2017 02:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:4c88a52e6fe16220ee7bfcb7fb99f10191aa2fa3e5feb3a47b19677e59ebfe25
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106024583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337e6527c76be5530dda9bd2d4e8f4f53ecd2f711df1e6c54556b12f9b35548e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:43:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 15:43:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 15:43:50 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 15:44:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 15:45:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 15:45:13 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 15:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 15:45:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 15:45:24 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 15:45:24 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 15:47:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 15:47:30 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 15:47:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 15:47:32 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 15:47:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 15:47:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 15:47:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 15:47:33 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:47:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 15:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 15:47:35 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 15:47:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e29584000b223981af70bcdb356028277885af1ddf7397b7e475d2823876d8`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e56e40615ec67cdb8d3a6de7dd45fa6112eaf09d4c3b9f278c9cdac8fce42c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:09 GMT  
		Size: 964.0 KB (964013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af4faa932721992cdf7a1d229fd2627ba97e839397964b61e0d11f094ad0a1`  
		Last Modified: Fri, 08 Sep 2017 16:01:12 GMT  
		Size: 7.1 MB (7112902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd403fe3acf4a49afbd93847a033b8e1e904f6a92ac64f82ee4a34c9a9b3170b`  
		Last Modified: Fri, 08 Sep 2017 16:01:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737c3a416099faa1a4c37b3da3850fe77e1e73595e56e16f8e0f39d38ac8d1c`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1ad3897ad4ddd7dff5e4a1527f0cc0618e13ed5999dbf08a7ad6d96d46eb6b`  
		Last Modified: Fri, 08 Sep 2017 16:01:25 GMT  
		Size: 45.2 MB (45158524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebc9895c79bff683ea10c61dcdd8258dedf35ca664009ddd46b883dce690f26`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e407853a56a4788b634efa2d602d02e8d5e09298bc90c4e8a58b3fc573942cba`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8116cb6b6e6011cc3a7e037fb6c019f3add378d85952910bbedc4f05ad01c2`  
		Last Modified: Fri, 08 Sep 2017 16:01:10 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898c7320c7b1c9b85586fa7cf78d86a560c3cee31a72c81e603ab77fccd44418`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bf3aef489a78f3885362c2ee9d4749e155baa9ea3e209f0ec5f915960b4371`  
		Last Modified: Fri, 08 Sep 2017 16:01:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:99f2583d5be605c436afe4bb22a77e7f2df55eb38ca6893c5340f7eca231a1e1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102264543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ff48cc6bedb39f528123984f1c0aeb82dc1abb222e548eee6ac2e513967d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:37:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 01:37:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:38:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:38:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 01:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 01:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 01:38:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:38:21 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 01:38:22 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 01:39:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:39:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 01:39:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 01:39:16 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:39:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 01:39:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 01:39:17 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 01:39:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:39:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 01:39:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:39:19 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 01:39:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3da2fa5d3ae6a119563e671559fb255d321cb98f3ba7675028524546ddc8bf`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3f480bdeb964600a455e3e4edb09bcb265ad5f55af3240196320f9eb9bbfc`  
		Last Modified: Fri, 08 Sep 2017 01:44:17 GMT  
		Size: 953.9 KB (953850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a10e7ac5dcbefe9d51aad5235fbb1adbc43798aa27ebc83f51f77b473f420`  
		Last Modified: Fri, 08 Sep 2017 01:44:18 GMT  
		Size: 7.1 MB (7112842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56818957c9e6deea1b96e5c78a5e414abd9042de3c128d67282696ecb5e63c4b`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9051b68d8b61b409754d353870e336d02973467d8e55a4d7566cbb5700869e`  
		Last Modified: Fri, 08 Sep 2017 01:44:16 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58efb6adbd28c83040fdb59fe204c4e526a9e51e3e26ec3582d23031dd2b2ee`  
		Last Modified: Fri, 08 Sep 2017 01:44:27 GMT  
		Size: 42.4 MB (42372182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6b270c9cafbfaf1ada8665bd2d7ca3128e4dfa876f93c317f1e924269e36d3`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2f0724273e20255f50b26fbde0481215c4326f53f225b0eae1400458818fa0`  
		Last Modified: Fri, 08 Sep 2017 01:44:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5c722701cf85da119c31c7487026ad706432b02e42a2d919b492111eb1ddba`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f66128af7e88bace7ee239f67c769f2348218d333b7c5a49d354977f7e4661c`  
		Last Modified: Fri, 08 Sep 2017 01:44:13 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c09e22b084cbba3bc9d01d8ff0ab5e13e49d9bd67fbb2d8483d09a0e0de2d2`  
		Last Modified: Fri, 08 Sep 2017 01:44:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:b28aaaa4365594a567179c5b67548cda5df81f755756965291c960aa81ca56ef
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100566753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d132cabf41895dd1685d0ad77a02d6b1a090784b772f01803ec7379ff1b536`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:25:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 06:25:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 06:25:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 06:26:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 06:26:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 06:26:23 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 06:26:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 06:26:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 06:26:26 GMT
ENV PG_MAJOR=9.6
# Fri, 08 Sep 2017 06:26:26 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Fri, 08 Sep 2017 06:35:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 06:35:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 06:35:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 06:35:51 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:35:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 06:35:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 06:35:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 06:35:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:35:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 06:35:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 06:35:52 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 06:35:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3d70a45af67e2fccddfab83e47f9cf841a136ea0b42ea145e6f73a80f463a`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd9acad107b86ffe249d0e02ffb63cc8fb256e07670d91fef18cc51d5ec1e1`  
		Last Modified: Fri, 08 Sep 2017 07:10:41 GMT  
		Size: 970.2 KB (970238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91470ff9dd3a9b5a4ad38a788f3c83f93c0b842e0f60f3bd66b5a41a5a1077a5`  
		Last Modified: Fri, 08 Sep 2017 07:10:42 GMT  
		Size: 7.1 MB (7131175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad4c2524a72239708c66fa2c6d570cf522e7ef925cf51158d73dfca1cbe423b`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2127eedf7f5d4b075e50093a24922b0a9a24cb164caf101075554fc4530abbed`  
		Last Modified: Fri, 08 Sep 2017 07:10:40 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634bcfae229d3e353c380a34be6ca3b31c4f3c05cc085d320e538aa643a1ee3a`  
		Last Modified: Fri, 08 Sep 2017 07:10:48 GMT  
		Size: 39.7 MB (39660501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0caa17d671ee7963b28bb5f93d6de481e5aa62612ec0731e9ea35118220af9`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 7.1 KB (7103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af83523678e63c2acf314edae41aaa11743a7251dc0622e1e16f34311650ab1`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84f8bf0d2bbcc8eb0304a2d082fb9271fa4befa055359632e1694f8ee27a4e6`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994fead2becab397901820861ce4ad9bb8b2bc8d4a61476cb23dbcf39465774`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850608b76a01570b0b66c0f20383a1830addaf980edcf2b1769352875dc36056`  
		Last Modified: Fri, 08 Sep 2017 07:10:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
