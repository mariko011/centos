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
