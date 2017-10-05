<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10`](#postgres10)
-	[`postgres:10.0`](#postgres100)
-	[`postgres:10.0-alpine`](#postgres100-alpine)
-	[`postgres:10-alpine`](#postgres10-alpine)
-	[`postgres:9`](#postgres9)
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
$ docker pull postgres@sha256:4b78be84bb1196b1409be1d9d1dcc88b0b16410b34fa5d7321598a726300ec8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10` - linux; amd64

```console
$ docker pull postgres@sha256:7b2ad45b30cb1f978a20dc39a641a9d7b07ab48ec122f82b3480f3c2740d0386
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116988622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b85847481d5c7bcb015061d5abb4238cb51ac63114f0268eea6b1c99fa44cb`
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
# Thu, 05 Oct 2017 18:58:12 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Thu, 05 Oct 2017 18:58:35 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 05 Oct 2017 18:58:39 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 05 Oct 2017 18:58:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 05 Oct 2017 18:58:40 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Oct 2017 18:58:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Oct 2017 18:58:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 05 Oct 2017 18:58:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Oct 2017 18:58:42 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 05 Oct 2017 18:58:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 05 Oct 2017 18:58:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 18:58:43 GMT
EXPOSE 5432/tcp
# Thu, 05 Oct 2017 18:58:43 GMT
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
	-	`sha256:2860cdb4889ced645e562bc2738669049a5c540b22c1f84eb5830357358b8556`  
		Last Modified: Thu, 05 Oct 2017 19:02:16 GMT  
		Size: 57.1 MB (57094706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597205e436efe5382f56348b7fee151e2fcd82f0275931b263a2792853857060`  
		Last Modified: Thu, 05 Oct 2017 19:02:03 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d445130f222d6f7ce3d817c14173bbf0d8e393d862a014171f8a2b28099f0eea`  
		Last Modified: Thu, 05 Oct 2017 19:02:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def74255ce7858eecd0919be39ae082a0b96d220b510308aad653c1621c58a03`  
		Last Modified: Thu, 05 Oct 2017 19:02:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3042ea21dfa63d7e0b6c2c5d89fbe1e73272c79821f37113ddf8cdcfb8b39f`  
		Last Modified: Thu, 05 Oct 2017 19:02:03 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686ac5adc42e06a27b04a092d93b58043131f2b62bf4f943086979209c92b722`  
		Last Modified: Thu, 05 Oct 2017 19:02:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.0`

```console
$ docker pull postgres@sha256:4b78be84bb1196b1409be1d9d1dcc88b0b16410b34fa5d7321598a726300ec8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10.0` - linux; amd64

```console
$ docker pull postgres@sha256:7b2ad45b30cb1f978a20dc39a641a9d7b07ab48ec122f82b3480f3c2740d0386
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116988622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b85847481d5c7bcb015061d5abb4238cb51ac63114f0268eea6b1c99fa44cb`
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
# Thu, 05 Oct 2017 18:58:12 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Thu, 05 Oct 2017 18:58:35 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 05 Oct 2017 18:58:39 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 05 Oct 2017 18:58:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 05 Oct 2017 18:58:40 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Oct 2017 18:58:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Oct 2017 18:58:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 05 Oct 2017 18:58:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Oct 2017 18:58:42 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 05 Oct 2017 18:58:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 05 Oct 2017 18:58:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 18:58:43 GMT
EXPOSE 5432/tcp
# Thu, 05 Oct 2017 18:58:43 GMT
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
	-	`sha256:2860cdb4889ced645e562bc2738669049a5c540b22c1f84eb5830357358b8556`  
		Last Modified: Thu, 05 Oct 2017 19:02:16 GMT  
		Size: 57.1 MB (57094706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597205e436efe5382f56348b7fee151e2fcd82f0275931b263a2792853857060`  
		Last Modified: Thu, 05 Oct 2017 19:02:03 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d445130f222d6f7ce3d817c14173bbf0d8e393d862a014171f8a2b28099f0eea`  
		Last Modified: Thu, 05 Oct 2017 19:02:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def74255ce7858eecd0919be39ae082a0b96d220b510308aad653c1621c58a03`  
		Last Modified: Thu, 05 Oct 2017 19:02:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3042ea21dfa63d7e0b6c2c5d89fbe1e73272c79821f37113ddf8cdcfb8b39f`  
		Last Modified: Thu, 05 Oct 2017 19:02:03 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686ac5adc42e06a27b04a092d93b58043131f2b62bf4f943086979209c92b722`  
		Last Modified: Thu, 05 Oct 2017 19:02:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.0-alpine`

```console
$ docker pull postgres@sha256:66b5dc419b0171dd0c7ec21d426a3f17c44c19e53c3436393d5901b41b3720f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10.0-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:ccbfc9995c01e265adf9a8c6b7171e74a785bf33b410f5347c0653691724d25c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14722783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66015a295269c190197f95f2990ac55d1df2cdc7e0b23c724daa7e8cc34d3546`
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
# Thu, 05 Oct 2017 18:58:54 GMT
ENV PG_VERSION=10.0
# Thu, 05 Oct 2017 18:58:54 GMT
ENV PG_SHA256=712f5592e27b81c5b454df96b258c14d94b6b03836831e015c65d6deeae57fd1
# Thu, 05 Oct 2017 19:01:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 05 Oct 2017 19:01:34 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 05 Oct 2017 19:01:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 05 Oct 2017 19:01:39 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Oct 2017 19:01:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Oct 2017 19:01:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 05 Oct 2017 19:01:40 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Oct 2017 19:01:40 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:01:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 05 Oct 2017 19:01:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:01:41 GMT
EXPOSE 5432/tcp
# Thu, 05 Oct 2017 19:01:42 GMT
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
	-	`sha256:ce960dcde694dcc608b63daad1df060667fa755624083d658f67b66e10a92939`  
		Last Modified: Thu, 05 Oct 2017 19:02:49 GMT  
		Size: 12.7 MB (12722612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb115e27ff4cbdfb3b3b2edb2b8c949a9608f139d8984b95a91cdbb1e30836`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 7.3 KB (7263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3bfe2048575b995119bae4189f2f51f967d6272b734cf11f6afa9903f5517c`  
		Last Modified: Thu, 05 Oct 2017 19:02:45 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9213f4fbe58abd3cbcf4861235306725803f612818d2effd81b1f3d09ab52aba`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b36942588093847507f11d45bb90dbd3cb06c4069cbd9955f4653f2f80a6a2`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea9701a163263fb002930c4dd07bd49aae43a7815914b71531c7b1d57055f09`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:66b5dc419b0171dd0c7ec21d426a3f17c44c19e53c3436393d5901b41b3720f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:ccbfc9995c01e265adf9a8c6b7171e74a785bf33b410f5347c0653691724d25c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14722783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66015a295269c190197f95f2990ac55d1df2cdc7e0b23c724daa7e8cc34d3546`
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
# Thu, 05 Oct 2017 18:58:54 GMT
ENV PG_VERSION=10.0
# Thu, 05 Oct 2017 18:58:54 GMT
ENV PG_SHA256=712f5592e27b81c5b454df96b258c14d94b6b03836831e015c65d6deeae57fd1
# Thu, 05 Oct 2017 19:01:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 05 Oct 2017 19:01:34 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 05 Oct 2017 19:01:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 05 Oct 2017 19:01:39 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Oct 2017 19:01:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Oct 2017 19:01:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 05 Oct 2017 19:01:40 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Oct 2017 19:01:40 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:01:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 05 Oct 2017 19:01:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:01:41 GMT
EXPOSE 5432/tcp
# Thu, 05 Oct 2017 19:01:42 GMT
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
	-	`sha256:ce960dcde694dcc608b63daad1df060667fa755624083d658f67b66e10a92939`  
		Last Modified: Thu, 05 Oct 2017 19:02:49 GMT  
		Size: 12.7 MB (12722612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb115e27ff4cbdfb3b3b2edb2b8c949a9608f139d8984b95a91cdbb1e30836`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 7.3 KB (7263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3bfe2048575b995119bae4189f2f51f967d6272b734cf11f6afa9903f5517c`  
		Last Modified: Thu, 05 Oct 2017 19:02:45 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9213f4fbe58abd3cbcf4861235306725803f612818d2effd81b1f3d09ab52aba`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b36942588093847507f11d45bb90dbd3cb06c4069cbd9955f4653f2f80a6a2`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea9701a163263fb002930c4dd07bd49aae43a7815914b71531c7b1d57055f09`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:317a541c064ec73cb48dedc2fbbb7797dd075303a2d9befcb85641e6ff6bf10f
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
$ docker pull postgres@sha256:0cd29431fb4af24319a1930cdc671a4ed6385e074336d87c753ab5b792d508d8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98256373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80c4583269ba8a1d0134fc5f3860c30c62007dbf89da399bed98fd827416f34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:30:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:30:48 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 15:30:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 15:31:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 15:32:05 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 15:32:05 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 15:32:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 15:32:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 15:32:14 GMT
ENV PG_MAJOR=9.6
# Wed, 27 Sep 2017 15:32:14 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Wed, 27 Sep 2017 15:51:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 15:51:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 15:51:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 15:51:10 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:51:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 15:51:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 15:51:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 15:51:11 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 15:51:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 15:51:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 15:51:12 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 15:51:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2c409b7ae0febef2b700321a43fb49d4b9ad76fc4c933fb62695219630954d`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61597fd9fbb62df94577fdd9ccad572f684094d21f68e9b439307558b912aae0`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 974.6 KB (974622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0286448cd97f8d83999faf13ccbb4ccc2335de7a846fa3264a8011d4c9c13b7f`  
		Last Modified: Wed, 27 Sep 2017 17:00:56 GMT  
		Size: 7.1 MB (7112857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5239cd8012b55c6165a915cc3c1bc7cfefc6838ccc2b78bfcb39bea64fb82`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791575c96ba3b72539c33c88beb77ebfd0a2dfbbe9c6c69687c8906f68d631f2`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0df15f3a3c063007d774fb92047fd482e846b1dc50be8118dbfb363d871fec1`  
		Last Modified: Wed, 27 Sep 2017 17:01:07 GMT  
		Size: 39.3 MB (39273006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf7b83d886a8b0785c3642b95a15bfe5d3f34bce40caf738e719f582bb17e7d`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beec19f7dce5d9b4ac98d52e4635114074de89865879149eb7388afaee04a3f5`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a132bb40053438ebf67cd449c144780ce74dc73c124ef301b2e8225e5456ac`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b29675043cc1bd33344547fa55241723b7c167b0447286c8f9c039ce701c2c4`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7cee52a9edf7e1da917855f099d3a14843ec21b211e3dbec43f131c72ec5c9`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v7

```console
$ docker pull postgres@sha256:e32334dc30e22ab400dafeaa32b40ef16fcc78a124dcc1beceedde1535fef770
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94737273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c16a4247a8e53814f76c142c66432d2c506cad88e4b1015570b4142dbc70577`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:11:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:11:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 06:11:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 06:12:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 06:13:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 06:13:12 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 06:13:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 06:13:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 06:13:22 GMT
ENV PG_MAJOR=9.6
# Wed, 27 Sep 2017 06:13:22 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Wed, 27 Sep 2017 06:31:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 06:31:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 06:31:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 06:31:32 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 06:31:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 06:31:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 06:31:34 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 06:31:34 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 06:31:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 06:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 06:31:36 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 06:31:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eb454b92191dd16585fdb1b5bee4824ce415847b935883493bfc83f4370717`  
		Last Modified: Wed, 27 Sep 2017 07:36:35 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c6b2ca05c842476559470cf62c3f02424f358458ea55bacdb28b7ea7a56966`  
		Last Modified: Wed, 27 Sep 2017 07:36:34 GMT  
		Size: 959.4 KB (959442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2ef4187e92a85ff8a876831a7c88b1872263f3f5aab975495bd40fd6c647f6`  
		Last Modified: Wed, 27 Sep 2017 07:36:37 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd414b5d06a913e8d8fbb733bb61fe61904b70c1aa7a9f4056a37ed51ea20e9`  
		Last Modified: Wed, 27 Sep 2017 07:36:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774278d493cabd5349bd53060d8220ba6addaf46b8182bc732d79cccf432836`  
		Last Modified: Wed, 27 Sep 2017 07:36:32 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f866f1b813842cce2b6ec8cfadf81178345f1716f228019554be2c6833d6cf`  
		Last Modified: Wed, 27 Sep 2017 07:36:44 GMT  
		Size: 38.0 MB (37962330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c947feeb0a9a19b84f80c3bdaed4280a85405873f3396fa722320d29bf0bc241`  
		Last Modified: Wed, 27 Sep 2017 07:36:31 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d851ae4e004666217984d1d523e4b5f453c37c73f64e1601e92cf8ba18ace`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72464c671933ca12f3924bfa556a93bff8e77dff5ff9ad2cc9bda23fc1e7902b`  
		Last Modified: Wed, 27 Sep 2017 07:36:31 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf15a8cc70b64b6744dd41c64f9db3b035f76045312a7c52d138f6335da927a`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97b4a15c24cbd69859ab5339f9ff4f1bfed7fb1ba9a5d8d69e07f7a8bb805d6`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
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

## `postgres:9.3`

```console
$ docker pull postgres@sha256:a8029dbecd87c1bd46bbb924acef45af5384ac89eddd2061271ae5e6201a93d9
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
$ docker pull postgres@sha256:bfda4fb8fc7fde800865135b0c8b98769dcf46b842bbb68b76a4d86bf01d8beb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97059121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4747e33f79740b5a212cea2065e5eb4d4dcba25fd6416fb9a208675ef4a76f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:30:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:30:48 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 15:30:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 15:31:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 15:32:05 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 15:32:05 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 15:32:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 15:32:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 16:26:59 GMT
ENV PG_MAJOR=9.3
# Wed, 27 Sep 2017 16:27:00 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Wed, 27 Sep 2017 16:43:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 16:43:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 16:43:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 16:43:32 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 16:43:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 16:43:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 16:43:33 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 16:43:33 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 16:43:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 16:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 16:43:34 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 16:43:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2c409b7ae0febef2b700321a43fb49d4b9ad76fc4c933fb62695219630954d`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61597fd9fbb62df94577fdd9ccad572f684094d21f68e9b439307558b912aae0`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 974.6 KB (974622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0286448cd97f8d83999faf13ccbb4ccc2335de7a846fa3264a8011d4c9c13b7f`  
		Last Modified: Wed, 27 Sep 2017 17:00:56 GMT  
		Size: 7.1 MB (7112857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5239cd8012b55c6165a915cc3c1bc7cfefc6838ccc2b78bfcb39bea64fb82`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791575c96ba3b72539c33c88beb77ebfd0a2dfbbe9c6c69687c8906f68d631f2`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5223bc33423f57a2cdf08b7ebb7b9451189f40f89180871138138a348e6b82`  
		Last Modified: Wed, 27 Sep 2017 17:02:17 GMT  
		Size: 38.1 MB (38076347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5809a26f776f977571970ab64a691f5dba3a37b7dd8aacd13a9927efb240535`  
		Last Modified: Wed, 27 Sep 2017 17:02:03 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb8108da378bbbbb6530d4941d48ecbad5e96a35cb566217991977d4ad0493c`  
		Last Modified: Wed, 27 Sep 2017 17:02:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74c9042fe8b002586f5ca1a85d30d7f175b98a16a3fd3bdc9276016c43d79f0`  
		Last Modified: Wed, 27 Sep 2017 17:02:03 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3bb6be4d45dadddfc99d756ed934baa9fd369b63b67bde435e983be8d97f60`  
		Last Modified: Wed, 27 Sep 2017 17:02:04 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f04ba024a51ac05b0c32c6981ee2243c4505261d5fd847249b04043ed3bbc68`  
		Last Modified: Wed, 27 Sep 2017 17:02:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm variant v7

```console
$ docker pull postgres@sha256:543ffbc0aa52def7566258879b3618fc7789103cb534c596b85a21dd95a43aad
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93596091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db0641fcc9746ae2a13769ab65114f48a560550638f84b02247add3bd1b7aaa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:11:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:11:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 06:11:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 06:12:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 06:13:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 06:13:12 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 06:13:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 06:13:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 07:05:05 GMT
ENV PG_MAJOR=9.3
# Wed, 27 Sep 2017 07:05:06 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Wed, 27 Sep 2017 07:20:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 07:20:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 07:20:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 07:20:27 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 07:20:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 07:20:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 07:20:32 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 07:20:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 07:20:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 07:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 07:20:35 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 07:20:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eb454b92191dd16585fdb1b5bee4824ce415847b935883493bfc83f4370717`  
		Last Modified: Wed, 27 Sep 2017 07:36:35 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c6b2ca05c842476559470cf62c3f02424f358458ea55bacdb28b7ea7a56966`  
		Last Modified: Wed, 27 Sep 2017 07:36:34 GMT  
		Size: 959.4 KB (959442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2ef4187e92a85ff8a876831a7c88b1872263f3f5aab975495bd40fd6c647f6`  
		Last Modified: Wed, 27 Sep 2017 07:36:37 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd414b5d06a913e8d8fbb733bb61fe61904b70c1aa7a9f4056a37ed51ea20e9`  
		Last Modified: Wed, 27 Sep 2017 07:36:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774278d493cabd5349bd53060d8220ba6addaf46b8182bc732d79cccf432836`  
		Last Modified: Wed, 27 Sep 2017 07:36:32 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effa27c63deccf8871c0bd11b3aac42ee1802fa661be3174e0d08a808955da97`  
		Last Modified: Wed, 27 Sep 2017 07:38:08 GMT  
		Size: 36.8 MB (36821755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46304740927857ce893827af32b0a4718b534731caa2f90a5494bcd06998b22`  
		Last Modified: Wed, 27 Sep 2017 07:37:55 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d45bfdfc5b89ee03beda1ec1f4f99d874c1f9b55e4a17d8df5f852c5a2501e`  
		Last Modified: Wed, 27 Sep 2017 07:37:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b293483d8b2c811bd5176b588d1a8dd3227211a83feadba409ba8bb06c26108`  
		Last Modified: Wed, 27 Sep 2017 07:37:55 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e579bb8662f06ef16976eaa3868afd3c98bbf79c2bd90da0b2b0aeeec988f64d`  
		Last Modified: Wed, 27 Sep 2017 07:37:55 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83afaa7707643403c20d54f0fac1a7e7d6ac1c0373673b978cf90ef6e8826bbc`  
		Last Modified: Wed, 27 Sep 2017 07:37:54 GMT  
		Size: 118.0 B  
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
$ docker pull postgres@sha256:a8029dbecd87c1bd46bbb924acef45af5384ac89eddd2061271ae5e6201a93d9
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
$ docker pull postgres@sha256:bfda4fb8fc7fde800865135b0c8b98769dcf46b842bbb68b76a4d86bf01d8beb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97059121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4747e33f79740b5a212cea2065e5eb4d4dcba25fd6416fb9a208675ef4a76f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:30:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:30:48 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 15:30:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 15:31:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 15:32:05 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 15:32:05 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 15:32:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 15:32:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 16:26:59 GMT
ENV PG_MAJOR=9.3
# Wed, 27 Sep 2017 16:27:00 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Wed, 27 Sep 2017 16:43:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 16:43:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 16:43:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 16:43:32 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 16:43:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 16:43:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 16:43:33 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 16:43:33 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 16:43:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 16:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 16:43:34 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 16:43:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2c409b7ae0febef2b700321a43fb49d4b9ad76fc4c933fb62695219630954d`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61597fd9fbb62df94577fdd9ccad572f684094d21f68e9b439307558b912aae0`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 974.6 KB (974622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0286448cd97f8d83999faf13ccbb4ccc2335de7a846fa3264a8011d4c9c13b7f`  
		Last Modified: Wed, 27 Sep 2017 17:00:56 GMT  
		Size: 7.1 MB (7112857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5239cd8012b55c6165a915cc3c1bc7cfefc6838ccc2b78bfcb39bea64fb82`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791575c96ba3b72539c33c88beb77ebfd0a2dfbbe9c6c69687c8906f68d631f2`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5223bc33423f57a2cdf08b7ebb7b9451189f40f89180871138138a348e6b82`  
		Last Modified: Wed, 27 Sep 2017 17:02:17 GMT  
		Size: 38.1 MB (38076347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5809a26f776f977571970ab64a691f5dba3a37b7dd8aacd13a9927efb240535`  
		Last Modified: Wed, 27 Sep 2017 17:02:03 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb8108da378bbbbb6530d4941d48ecbad5e96a35cb566217991977d4ad0493c`  
		Last Modified: Wed, 27 Sep 2017 17:02:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74c9042fe8b002586f5ca1a85d30d7f175b98a16a3fd3bdc9276016c43d79f0`  
		Last Modified: Wed, 27 Sep 2017 17:02:03 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3bb6be4d45dadddfc99d756ed934baa9fd369b63b67bde435e983be8d97f60`  
		Last Modified: Wed, 27 Sep 2017 17:02:04 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f04ba024a51ac05b0c32c6981ee2243c4505261d5fd847249b04043ed3bbc68`  
		Last Modified: Wed, 27 Sep 2017 17:02:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; arm variant v7

```console
$ docker pull postgres@sha256:543ffbc0aa52def7566258879b3618fc7789103cb534c596b85a21dd95a43aad
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93596091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db0641fcc9746ae2a13769ab65114f48a560550638f84b02247add3bd1b7aaa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:11:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:11:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 06:11:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 06:12:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 06:13:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 06:13:12 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 06:13:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 06:13:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 07:05:05 GMT
ENV PG_MAJOR=9.3
# Wed, 27 Sep 2017 07:05:06 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Wed, 27 Sep 2017 07:20:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 07:20:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 07:20:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 07:20:27 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 07:20:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 07:20:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 07:20:32 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 07:20:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 07:20:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 07:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 07:20:35 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 07:20:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eb454b92191dd16585fdb1b5bee4824ce415847b935883493bfc83f4370717`  
		Last Modified: Wed, 27 Sep 2017 07:36:35 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c6b2ca05c842476559470cf62c3f02424f358458ea55bacdb28b7ea7a56966`  
		Last Modified: Wed, 27 Sep 2017 07:36:34 GMT  
		Size: 959.4 KB (959442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2ef4187e92a85ff8a876831a7c88b1872263f3f5aab975495bd40fd6c647f6`  
		Last Modified: Wed, 27 Sep 2017 07:36:37 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd414b5d06a913e8d8fbb733bb61fe61904b70c1aa7a9f4056a37ed51ea20e9`  
		Last Modified: Wed, 27 Sep 2017 07:36:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774278d493cabd5349bd53060d8220ba6addaf46b8182bc732d79cccf432836`  
		Last Modified: Wed, 27 Sep 2017 07:36:32 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effa27c63deccf8871c0bd11b3aac42ee1802fa661be3174e0d08a808955da97`  
		Last Modified: Wed, 27 Sep 2017 07:38:08 GMT  
		Size: 36.8 MB (36821755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46304740927857ce893827af32b0a4718b534731caa2f90a5494bcd06998b22`  
		Last Modified: Wed, 27 Sep 2017 07:37:55 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d45bfdfc5b89ee03beda1ec1f4f99d874c1f9b55e4a17d8df5f852c5a2501e`  
		Last Modified: Wed, 27 Sep 2017 07:37:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b293483d8b2c811bd5176b588d1a8dd3227211a83feadba409ba8bb06c26108`  
		Last Modified: Wed, 27 Sep 2017 07:37:55 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e579bb8662f06ef16976eaa3868afd3c98bbf79c2bd90da0b2b0aeeec988f64d`  
		Last Modified: Wed, 27 Sep 2017 07:37:55 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83afaa7707643403c20d54f0fac1a7e7d6ac1c0373673b978cf90ef6e8826bbc`  
		Last Modified: Wed, 27 Sep 2017 07:37:54 GMT  
		Size: 118.0 B  
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
$ docker pull postgres@sha256:0c9be88d2e0748889872effa883fa9a9c3091734c64f3d8388a9e9dc81edd88e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3.19-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:68588f754c27255da1c325df70d8558d9425e1e540b30af20ad9691087da3667
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13958604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525395bdaab9b88f3fb4430b433d54053eb07b853a72209ca0012656b0685de5`
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
# Tue, 26 Sep 2017 01:23:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 26 Sep 2017 01:23:22 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 26 Sep 2017 01:23:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 26 Sep 2017 01:23:23 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 01:23:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 26 Sep 2017 01:23:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 26 Sep 2017 01:23:24 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 26 Sep 2017 01:23:25 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:23:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 01:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:23:27 GMT
EXPOSE 5432/tcp
# Tue, 26 Sep 2017 01:23:27 GMT
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
	-	`sha256:cfa4d625560140030012b5813bcd308a4848afbc50afa03b30ad6f62a513cafd`  
		Last Modified: Tue, 26 Sep 2017 01:33:42 GMT  
		Size: 12.0 MB (11979348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fba0c2791cd1a0460e7cc1f0204061f85a5e2a1dbff2da6d363dcbad00df94`  
		Last Modified: Tue, 26 Sep 2017 01:33:34 GMT  
		Size: 6.5 KB (6476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b3bb390dcf4e104bdae2b66f40e02f43194d105384b4f57056749bed89c4c`  
		Last Modified: Tue, 26 Sep 2017 01:33:34 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28c0dd1b73ea2ec29a1785927e8bcf67d8e61eb5b08f20d332c544c4c6db2e`  
		Last Modified: Tue, 26 Sep 2017 01:33:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c60ce2497e46b2cb3af60b7f47a418933fec78e5ccbbb2e66172373c8563b`  
		Last Modified: Tue, 26 Sep 2017 01:33:34 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e4e2e2a59524d23d8d18c1162a0ac18039831e4541df467cb5aa01a3f7fb7c`  
		Last Modified: Tue, 26 Sep 2017 01:33:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:0c9be88d2e0748889872effa883fa9a9c3091734c64f3d8388a9e9dc81edd88e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:68588f754c27255da1c325df70d8558d9425e1e540b30af20ad9691087da3667
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13958604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525395bdaab9b88f3fb4430b433d54053eb07b853a72209ca0012656b0685de5`
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
# Tue, 26 Sep 2017 01:23:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 26 Sep 2017 01:23:22 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 26 Sep 2017 01:23:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 26 Sep 2017 01:23:23 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 01:23:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 26 Sep 2017 01:23:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 26 Sep 2017 01:23:24 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 26 Sep 2017 01:23:25 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:23:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 01:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:23:27 GMT
EXPOSE 5432/tcp
# Tue, 26 Sep 2017 01:23:27 GMT
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
	-	`sha256:cfa4d625560140030012b5813bcd308a4848afbc50afa03b30ad6f62a513cafd`  
		Last Modified: Tue, 26 Sep 2017 01:33:42 GMT  
		Size: 12.0 MB (11979348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fba0c2791cd1a0460e7cc1f0204061f85a5e2a1dbff2da6d363dcbad00df94`  
		Last Modified: Tue, 26 Sep 2017 01:33:34 GMT  
		Size: 6.5 KB (6476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b3bb390dcf4e104bdae2b66f40e02f43194d105384b4f57056749bed89c4c`  
		Last Modified: Tue, 26 Sep 2017 01:33:34 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28c0dd1b73ea2ec29a1785927e8bcf67d8e61eb5b08f20d332c544c4c6db2e`  
		Last Modified: Tue, 26 Sep 2017 01:33:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c60ce2497e46b2cb3af60b7f47a418933fec78e5ccbbb2e66172373c8563b`  
		Last Modified: Tue, 26 Sep 2017 01:33:34 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e4e2e2a59524d23d8d18c1162a0ac18039831e4541df467cb5aa01a3f7fb7c`  
		Last Modified: Tue, 26 Sep 2017 01:33:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:33984cff174f767f987053d2a6b968ac01a1d57880a7f00acca9036e13b643ae
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
$ docker pull postgres@sha256:1fa7b7cc25926351567451d7b7625270f26591df99ed816747353546ae8374f1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97419944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc4bbe81374522f2412b52f29fe3c4ab8994a08111c7be6b9b2bc7cac1578ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:30:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:30:48 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 15:30:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 15:31:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 15:32:05 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 15:32:05 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 15:32:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 15:32:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 16:09:26 GMT
ENV PG_MAJOR=9.4
# Wed, 27 Sep 2017 16:09:27 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Wed, 27 Sep 2017 16:26:35 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 16:26:37 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 16:26:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 16:26:38 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 16:26:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 16:26:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 16:26:39 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 16:26:39 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 16:26:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 16:26:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 16:26:40 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 16:26:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2c409b7ae0febef2b700321a43fb49d4b9ad76fc4c933fb62695219630954d`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61597fd9fbb62df94577fdd9ccad572f684094d21f68e9b439307558b912aae0`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 974.6 KB (974622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0286448cd97f8d83999faf13ccbb4ccc2335de7a846fa3264a8011d4c9c13b7f`  
		Last Modified: Wed, 27 Sep 2017 17:00:56 GMT  
		Size: 7.1 MB (7112857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5239cd8012b55c6165a915cc3c1bc7cfefc6838ccc2b78bfcb39bea64fb82`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791575c96ba3b72539c33c88beb77ebfd0a2dfbbe9c6c69687c8906f68d631f2`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4144b8061e3bc5abbb2b798dbb54a0d1293970a28cf29406af47d74ea71d84`  
		Last Modified: Wed, 27 Sep 2017 17:01:57 GMT  
		Size: 38.4 MB (38436989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb7dcec2e410c83ad2667990a6c511b094d71a08fada24985a9bc822cdc8634`  
		Last Modified: Wed, 27 Sep 2017 17:01:42 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8386235736c7038ab7f9836f1e1043d6140dff16f572183e19a19fcc83c31a40`  
		Last Modified: Wed, 27 Sep 2017 17:01:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2586fdee21ab0356c2d90030944f9877ffff34bf7ee61c41338593e7367063`  
		Last Modified: Wed, 27 Sep 2017 17:01:42 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a6745270689653d0661f080578dac7f363b121d0b8fb433138f2ab5efcd1f1`  
		Last Modified: Wed, 27 Sep 2017 17:01:43 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11780a5851cd6bb5a33fd36a67e2360770c79328dfa5b67a322adc756c2c11e8`  
		Last Modified: Wed, 27 Sep 2017 17:01:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v7

```console
$ docker pull postgres@sha256:c31300a34e5fff3161ff14c01f8972f0026ce6a5feaf7009c9577899016607d4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93943147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23167af8e4474d799a61609270c3a4109cf79281020b8869a9ae283b0510f225`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:11:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:11:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 06:11:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 06:12:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 06:13:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 06:13:12 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 06:13:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 06:13:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 06:48:55 GMT
ENV PG_MAJOR=9.4
# Wed, 27 Sep 2017 06:48:57 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Wed, 27 Sep 2017 07:04:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 07:04:53 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 07:04:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 07:04:55 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 07:04:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 07:04:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 07:04:56 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 07:04:57 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 07:04:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 07:04:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 07:04:59 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 07:04:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eb454b92191dd16585fdb1b5bee4824ce415847b935883493bfc83f4370717`  
		Last Modified: Wed, 27 Sep 2017 07:36:35 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c6b2ca05c842476559470cf62c3f02424f358458ea55bacdb28b7ea7a56966`  
		Last Modified: Wed, 27 Sep 2017 07:36:34 GMT  
		Size: 959.4 KB (959442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2ef4187e92a85ff8a876831a7c88b1872263f3f5aab975495bd40fd6c647f6`  
		Last Modified: Wed, 27 Sep 2017 07:36:37 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd414b5d06a913e8d8fbb733bb61fe61904b70c1aa7a9f4056a37ed51ea20e9`  
		Last Modified: Wed, 27 Sep 2017 07:36:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774278d493cabd5349bd53060d8220ba6addaf46b8182bc732d79cccf432836`  
		Last Modified: Wed, 27 Sep 2017 07:36:32 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a441d54bef0473f0a9425489d63f5856e1fc72682363f919453dc5fcef40e9a5`  
		Last Modified: Wed, 27 Sep 2017 07:37:45 GMT  
		Size: 37.2 MB (37168619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6f0ffaf5ac9c0b3bb4ad35d9779cfbc84a70153ef11f80233f0bdb2209fa4a`  
		Last Modified: Wed, 27 Sep 2017 07:37:32 GMT  
		Size: 6.7 KB (6695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270d9ced8799377faeda1ad779332f76c9ec1a9fb0f5045ba07dd4fae3e2cc0`  
		Last Modified: Wed, 27 Sep 2017 07:37:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4029916e10c6c391d258aba4dec8eb6309348822d81bf60913ef19fed7884c`  
		Last Modified: Wed, 27 Sep 2017 07:37:30 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1dca5939cdb4680c1e2274bb71bf5fb27944804bf8028c33e67015731267b0`  
		Last Modified: Wed, 27 Sep 2017 07:37:30 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fac54284a51d48da415e7ca72d653b75781312fc45e15f63bf38ea76d08b766`  
		Last Modified: Wed, 27 Sep 2017 07:37:30 GMT  
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
$ docker pull postgres@sha256:33984cff174f767f987053d2a6b968ac01a1d57880a7f00acca9036e13b643ae
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
$ docker pull postgres@sha256:1fa7b7cc25926351567451d7b7625270f26591df99ed816747353546ae8374f1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97419944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc4bbe81374522f2412b52f29fe3c4ab8994a08111c7be6b9b2bc7cac1578ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:30:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:30:48 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 15:30:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 15:31:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 15:32:05 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 15:32:05 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 15:32:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 15:32:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 16:09:26 GMT
ENV PG_MAJOR=9.4
# Wed, 27 Sep 2017 16:09:27 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Wed, 27 Sep 2017 16:26:35 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 16:26:37 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 16:26:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 16:26:38 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 16:26:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 16:26:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 16:26:39 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 16:26:39 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 16:26:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 16:26:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 16:26:40 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 16:26:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2c409b7ae0febef2b700321a43fb49d4b9ad76fc4c933fb62695219630954d`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61597fd9fbb62df94577fdd9ccad572f684094d21f68e9b439307558b912aae0`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 974.6 KB (974622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0286448cd97f8d83999faf13ccbb4ccc2335de7a846fa3264a8011d4c9c13b7f`  
		Last Modified: Wed, 27 Sep 2017 17:00:56 GMT  
		Size: 7.1 MB (7112857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5239cd8012b55c6165a915cc3c1bc7cfefc6838ccc2b78bfcb39bea64fb82`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791575c96ba3b72539c33c88beb77ebfd0a2dfbbe9c6c69687c8906f68d631f2`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4144b8061e3bc5abbb2b798dbb54a0d1293970a28cf29406af47d74ea71d84`  
		Last Modified: Wed, 27 Sep 2017 17:01:57 GMT  
		Size: 38.4 MB (38436989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb7dcec2e410c83ad2667990a6c511b094d71a08fada24985a9bc822cdc8634`  
		Last Modified: Wed, 27 Sep 2017 17:01:42 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8386235736c7038ab7f9836f1e1043d6140dff16f572183e19a19fcc83c31a40`  
		Last Modified: Wed, 27 Sep 2017 17:01:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2586fdee21ab0356c2d90030944f9877ffff34bf7ee61c41338593e7367063`  
		Last Modified: Wed, 27 Sep 2017 17:01:42 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a6745270689653d0661f080578dac7f363b121d0b8fb433138f2ab5efcd1f1`  
		Last Modified: Wed, 27 Sep 2017 17:01:43 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11780a5851cd6bb5a33fd36a67e2360770c79328dfa5b67a322adc756c2c11e8`  
		Last Modified: Wed, 27 Sep 2017 17:01:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; arm variant v7

```console
$ docker pull postgres@sha256:c31300a34e5fff3161ff14c01f8972f0026ce6a5feaf7009c9577899016607d4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93943147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23167af8e4474d799a61609270c3a4109cf79281020b8869a9ae283b0510f225`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:11:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:11:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 06:11:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 06:12:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 06:13:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 06:13:12 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 06:13:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 06:13:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 06:48:55 GMT
ENV PG_MAJOR=9.4
# Wed, 27 Sep 2017 06:48:57 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Wed, 27 Sep 2017 07:04:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 07:04:53 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 07:04:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 07:04:55 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 07:04:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 07:04:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 07:04:56 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 07:04:57 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 07:04:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 07:04:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 07:04:59 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 07:04:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eb454b92191dd16585fdb1b5bee4824ce415847b935883493bfc83f4370717`  
		Last Modified: Wed, 27 Sep 2017 07:36:35 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c6b2ca05c842476559470cf62c3f02424f358458ea55bacdb28b7ea7a56966`  
		Last Modified: Wed, 27 Sep 2017 07:36:34 GMT  
		Size: 959.4 KB (959442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2ef4187e92a85ff8a876831a7c88b1872263f3f5aab975495bd40fd6c647f6`  
		Last Modified: Wed, 27 Sep 2017 07:36:37 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd414b5d06a913e8d8fbb733bb61fe61904b70c1aa7a9f4056a37ed51ea20e9`  
		Last Modified: Wed, 27 Sep 2017 07:36:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774278d493cabd5349bd53060d8220ba6addaf46b8182bc732d79cccf432836`  
		Last Modified: Wed, 27 Sep 2017 07:36:32 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a441d54bef0473f0a9425489d63f5856e1fc72682363f919453dc5fcef40e9a5`  
		Last Modified: Wed, 27 Sep 2017 07:37:45 GMT  
		Size: 37.2 MB (37168619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6f0ffaf5ac9c0b3bb4ad35d9779cfbc84a70153ef11f80233f0bdb2209fa4a`  
		Last Modified: Wed, 27 Sep 2017 07:37:32 GMT  
		Size: 6.7 KB (6695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270d9ced8799377faeda1ad779332f76c9ec1a9fb0f5045ba07dd4fae3e2cc0`  
		Last Modified: Wed, 27 Sep 2017 07:37:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4029916e10c6c391d258aba4dec8eb6309348822d81bf60913ef19fed7884c`  
		Last Modified: Wed, 27 Sep 2017 07:37:30 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1dca5939cdb4680c1e2274bb71bf5fb27944804bf8028c33e67015731267b0`  
		Last Modified: Wed, 27 Sep 2017 07:37:30 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fac54284a51d48da415e7ca72d653b75781312fc45e15f63bf38ea76d08b766`  
		Last Modified: Wed, 27 Sep 2017 07:37:30 GMT  
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
$ docker pull postgres@sha256:598b3bc5f102ecb107d9921ae3ed723756c05c2d5702edcd1f3ca33809b21157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.14-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:bd08754ad429b0fa4433b9c8efbe37e8bdc85de3f9dea50bf132081ac25327a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14252451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389ec82d552dfef9e50ad46baad1ef46d733775bf3ff82f2bde34c3c186a207f`
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
# Tue, 26 Sep 2017 01:19:02 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 26 Sep 2017 01:19:03 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 26 Sep 2017 01:19:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 26 Sep 2017 01:19:04 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 01:19:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 26 Sep 2017 01:19:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 26 Sep 2017 01:19:05 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 26 Sep 2017 01:19:05 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:19:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 01:19:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:19:06 GMT
EXPOSE 5432/tcp
# Tue, 26 Sep 2017 01:19:06 GMT
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
	-	`sha256:6e090c1da77541aaa09500383bae3de6eb2dc5ef49333bb4b1d59d4238ba9149`  
		Last Modified: Tue, 26 Sep 2017 01:33:16 GMT  
		Size: 12.3 MB (12273016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7119510c307cf21edd1ed4955841ba819915d4395c50d058765724def5b9a10b`  
		Last Modified: Tue, 26 Sep 2017 01:33:08 GMT  
		Size: 6.7 KB (6656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36279612135cc2e616452efdbd525abb21bbf398bc51b14f4d9f38a2de49fd8d`  
		Last Modified: Tue, 26 Sep 2017 01:33:08 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25f0e59d251f1efe2dc0122f08e7490a5596a26e62d6fb0c5f3e50a279d7f6b`  
		Last Modified: Tue, 26 Sep 2017 01:33:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3471f6a59de2b9c5c8024c921736d8d8526efdba9ce6ba21c60d5e6609d4b8ea`  
		Last Modified: Tue, 26 Sep 2017 01:33:08 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b5cb4cbd7e98b50cee29a005488881cad84f89c18aecedc8187f3619359176`  
		Last Modified: Tue, 26 Sep 2017 01:33:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:598b3bc5f102ecb107d9921ae3ed723756c05c2d5702edcd1f3ca33809b21157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:bd08754ad429b0fa4433b9c8efbe37e8bdc85de3f9dea50bf132081ac25327a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14252451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389ec82d552dfef9e50ad46baad1ef46d733775bf3ff82f2bde34c3c186a207f`
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
# Tue, 26 Sep 2017 01:19:02 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 26 Sep 2017 01:19:03 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 26 Sep 2017 01:19:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 26 Sep 2017 01:19:04 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 01:19:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 26 Sep 2017 01:19:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 26 Sep 2017 01:19:05 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 26 Sep 2017 01:19:05 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:19:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 01:19:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:19:06 GMT
EXPOSE 5432/tcp
# Tue, 26 Sep 2017 01:19:06 GMT
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
	-	`sha256:6e090c1da77541aaa09500383bae3de6eb2dc5ef49333bb4b1d59d4238ba9149`  
		Last Modified: Tue, 26 Sep 2017 01:33:16 GMT  
		Size: 12.3 MB (12273016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7119510c307cf21edd1ed4955841ba819915d4395c50d058765724def5b9a10b`  
		Last Modified: Tue, 26 Sep 2017 01:33:08 GMT  
		Size: 6.7 KB (6656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36279612135cc2e616452efdbd525abb21bbf398bc51b14f4d9f38a2de49fd8d`  
		Last Modified: Tue, 26 Sep 2017 01:33:08 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25f0e59d251f1efe2dc0122f08e7490a5596a26e62d6fb0c5f3e50a279d7f6b`  
		Last Modified: Tue, 26 Sep 2017 01:33:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3471f6a59de2b9c5c8024c921736d8d8526efdba9ce6ba21c60d5e6609d4b8ea`  
		Last Modified: Tue, 26 Sep 2017 01:33:08 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b5cb4cbd7e98b50cee29a005488881cad84f89c18aecedc8187f3619359176`  
		Last Modified: Tue, 26 Sep 2017 01:33:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:52454eb168c77c9f0b93139dfe107ada1131a506f9be982d97a3b386736a4e6d
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
$ docker pull postgres@sha256:0555e1baa41d28eb94d767b1c589825fd983ad7f27ccd557c4c92607c805f704
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97737126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21581b91993580a1351d07175e5485eb9a81b8c5e0e06c66a786c8c5eb241250`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:30:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:30:48 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 15:30:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 15:31:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 15:32:05 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 15:32:05 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 15:32:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 15:32:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 15:51:17 GMT
ENV PG_MAJOR=9.5
# Wed, 27 Sep 2017 15:51:17 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Wed, 27 Sep 2017 16:09:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 16:09:15 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 16:09:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 16:09:16 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 16:09:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 16:09:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 16:09:17 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 16:09:17 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 16:09:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 16:09:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 16:09:19 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 16:09:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2c409b7ae0febef2b700321a43fb49d4b9ad76fc4c933fb62695219630954d`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61597fd9fbb62df94577fdd9ccad572f684094d21f68e9b439307558b912aae0`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 974.6 KB (974622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0286448cd97f8d83999faf13ccbb4ccc2335de7a846fa3264a8011d4c9c13b7f`  
		Last Modified: Wed, 27 Sep 2017 17:00:56 GMT  
		Size: 7.1 MB (7112857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5239cd8012b55c6165a915cc3c1bc7cfefc6838ccc2b78bfcb39bea64fb82`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791575c96ba3b72539c33c88beb77ebfd0a2dfbbe9c6c69687c8906f68d631f2`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293bffee3b64ea392109305fc15ce38b044cdec0998fd78d5942f25a4f24a689`  
		Last Modified: Wed, 27 Sep 2017 17:01:34 GMT  
		Size: 38.8 MB (38754027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba874b36af6fcc4c053d5120203961dbaf8eeabff85205388e8927869f5d9d02`  
		Last Modified: Wed, 27 Sep 2017 17:01:17 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6953facbcb5316d0999a1ea37123e6cff399a740bac28b25586aaf8984c2767`  
		Last Modified: Wed, 27 Sep 2017 17:01:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae0f6f80d46a64eaff01f87f09ae57737ff4ed8be7def663d76fa63de4329c2`  
		Last Modified: Wed, 27 Sep 2017 17:01:17 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7961031771b2a486c018bcfd38f86553da88e9439a950e6d690ee3cfe28c953a`  
		Last Modified: Wed, 27 Sep 2017 17:01:17 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70540661eb44985b43d703c52bedd5f215c5e98869a8e721c81a6cf693faab22`  
		Last Modified: Wed, 27 Sep 2017 17:01:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v7

```console
$ docker pull postgres@sha256:514f15a81a65727561a653dd0f56a83baa635f24fc1b126d9a0c93f33bdce948
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94240129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b2304e545f472b1b82fe7b259e2fbf07f47f4f02cb3361ac7fa32380fba7ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:11:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:11:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 06:11:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 06:12:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 06:13:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 06:13:12 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 06:13:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 06:13:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 06:31:45 GMT
ENV PG_MAJOR=9.5
# Wed, 27 Sep 2017 06:31:45 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Wed, 27 Sep 2017 06:48:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 06:48:39 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 06:48:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 06:48:40 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 06:48:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 06:48:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 06:48:41 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 06:48:42 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 06:48:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 06:48:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 06:48:44 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 06:48:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eb454b92191dd16585fdb1b5bee4824ce415847b935883493bfc83f4370717`  
		Last Modified: Wed, 27 Sep 2017 07:36:35 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c6b2ca05c842476559470cf62c3f02424f358458ea55bacdb28b7ea7a56966`  
		Last Modified: Wed, 27 Sep 2017 07:36:34 GMT  
		Size: 959.4 KB (959442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2ef4187e92a85ff8a876831a7c88b1872263f3f5aab975495bd40fd6c647f6`  
		Last Modified: Wed, 27 Sep 2017 07:36:37 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd414b5d06a913e8d8fbb733bb61fe61904b70c1aa7a9f4056a37ed51ea20e9`  
		Last Modified: Wed, 27 Sep 2017 07:36:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774278d493cabd5349bd53060d8220ba6addaf46b8182bc732d79cccf432836`  
		Last Modified: Wed, 27 Sep 2017 07:36:32 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aada50b50091522fef5999fc413d8b5b7342d7266ac82257b9fc86dc708a46d`  
		Last Modified: Wed, 27 Sep 2017 07:37:18 GMT  
		Size: 37.5 MB (37465462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630bfd9444bc4fa77704ccd7e45dade24ae6a18040bf8923116df549b7540909`  
		Last Modified: Wed, 27 Sep 2017 07:37:05 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457a14c4a65e3b86ad71f29b61569beb4b35942f7f8e14ef3a1f362846c62f51`  
		Last Modified: Wed, 27 Sep 2017 07:37:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431c47a8d3402fa11c2b958dfc38e063044aea1499a7ec970c4e7fd7d9a9ec9c`  
		Last Modified: Wed, 27 Sep 2017 07:37:04 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2224b030a59fc28396167a8e5d1f537d40e3260c6736a41afce138d5040d81`  
		Last Modified: Wed, 27 Sep 2017 07:37:04 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ac726a7112720c8c2da76f5f65d1bd142a23592265f618d95f3804ea0a0820`  
		Last Modified: Wed, 27 Sep 2017 07:37:04 GMT  
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
$ docker pull postgres@sha256:52454eb168c77c9f0b93139dfe107ada1131a506f9be982d97a3b386736a4e6d
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
$ docker pull postgres@sha256:0555e1baa41d28eb94d767b1c589825fd983ad7f27ccd557c4c92607c805f704
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97737126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21581b91993580a1351d07175e5485eb9a81b8c5e0e06c66a786c8c5eb241250`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:30:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:30:48 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 15:30:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 15:31:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 15:32:05 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 15:32:05 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 15:32:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 15:32:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 15:51:17 GMT
ENV PG_MAJOR=9.5
# Wed, 27 Sep 2017 15:51:17 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Wed, 27 Sep 2017 16:09:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 16:09:15 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 16:09:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 16:09:16 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 16:09:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 16:09:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 16:09:17 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 16:09:17 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 16:09:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 16:09:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 16:09:19 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 16:09:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2c409b7ae0febef2b700321a43fb49d4b9ad76fc4c933fb62695219630954d`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61597fd9fbb62df94577fdd9ccad572f684094d21f68e9b439307558b912aae0`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 974.6 KB (974622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0286448cd97f8d83999faf13ccbb4ccc2335de7a846fa3264a8011d4c9c13b7f`  
		Last Modified: Wed, 27 Sep 2017 17:00:56 GMT  
		Size: 7.1 MB (7112857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5239cd8012b55c6165a915cc3c1bc7cfefc6838ccc2b78bfcb39bea64fb82`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791575c96ba3b72539c33c88beb77ebfd0a2dfbbe9c6c69687c8906f68d631f2`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293bffee3b64ea392109305fc15ce38b044cdec0998fd78d5942f25a4f24a689`  
		Last Modified: Wed, 27 Sep 2017 17:01:34 GMT  
		Size: 38.8 MB (38754027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba874b36af6fcc4c053d5120203961dbaf8eeabff85205388e8927869f5d9d02`  
		Last Modified: Wed, 27 Sep 2017 17:01:17 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6953facbcb5316d0999a1ea37123e6cff399a740bac28b25586aaf8984c2767`  
		Last Modified: Wed, 27 Sep 2017 17:01:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae0f6f80d46a64eaff01f87f09ae57737ff4ed8be7def663d76fa63de4329c2`  
		Last Modified: Wed, 27 Sep 2017 17:01:17 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7961031771b2a486c018bcfd38f86553da88e9439a950e6d690ee3cfe28c953a`  
		Last Modified: Wed, 27 Sep 2017 17:01:17 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70540661eb44985b43d703c52bedd5f215c5e98869a8e721c81a6cf693faab22`  
		Last Modified: Wed, 27 Sep 2017 17:01:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; arm variant v7

```console
$ docker pull postgres@sha256:514f15a81a65727561a653dd0f56a83baa635f24fc1b126d9a0c93f33bdce948
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94240129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b2304e545f472b1b82fe7b259e2fbf07f47f4f02cb3361ac7fa32380fba7ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:11:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:11:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 06:11:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 06:12:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 06:13:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 06:13:12 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 06:13:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 06:13:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 06:31:45 GMT
ENV PG_MAJOR=9.5
# Wed, 27 Sep 2017 06:31:45 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Wed, 27 Sep 2017 06:48:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 06:48:39 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 06:48:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 06:48:40 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 06:48:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 06:48:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 06:48:41 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 06:48:42 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 06:48:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 06:48:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 06:48:44 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 06:48:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eb454b92191dd16585fdb1b5bee4824ce415847b935883493bfc83f4370717`  
		Last Modified: Wed, 27 Sep 2017 07:36:35 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c6b2ca05c842476559470cf62c3f02424f358458ea55bacdb28b7ea7a56966`  
		Last Modified: Wed, 27 Sep 2017 07:36:34 GMT  
		Size: 959.4 KB (959442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2ef4187e92a85ff8a876831a7c88b1872263f3f5aab975495bd40fd6c647f6`  
		Last Modified: Wed, 27 Sep 2017 07:36:37 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd414b5d06a913e8d8fbb733bb61fe61904b70c1aa7a9f4056a37ed51ea20e9`  
		Last Modified: Wed, 27 Sep 2017 07:36:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774278d493cabd5349bd53060d8220ba6addaf46b8182bc732d79cccf432836`  
		Last Modified: Wed, 27 Sep 2017 07:36:32 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aada50b50091522fef5999fc413d8b5b7342d7266ac82257b9fc86dc708a46d`  
		Last Modified: Wed, 27 Sep 2017 07:37:18 GMT  
		Size: 37.5 MB (37465462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630bfd9444bc4fa77704ccd7e45dade24ae6a18040bf8923116df549b7540909`  
		Last Modified: Wed, 27 Sep 2017 07:37:05 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457a14c4a65e3b86ad71f29b61569beb4b35942f7f8e14ef3a1f362846c62f51`  
		Last Modified: Wed, 27 Sep 2017 07:37:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431c47a8d3402fa11c2b958dfc38e063044aea1499a7ec970c4e7fd7d9a9ec9c`  
		Last Modified: Wed, 27 Sep 2017 07:37:04 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2224b030a59fc28396167a8e5d1f537d40e3260c6736a41afce138d5040d81`  
		Last Modified: Wed, 27 Sep 2017 07:37:04 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ac726a7112720c8c2da76f5f65d1bd142a23592265f618d95f3804ea0a0820`  
		Last Modified: Wed, 27 Sep 2017 07:37:04 GMT  
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
$ docker pull postgres@sha256:abdbe49005e0b0ea16b275ee0bfc731e29d78d61fa0383b7e93529eabfc88a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:20955d89030c1b3ae5c40068e4939b55a6ea35f791251773bc85e2e8e6c167ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14382114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daed323499994023c68e8421ac2a192d18524c8809c87d7a45bcd1b0fa2bab97`
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
# Tue, 26 Sep 2017 01:14:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 26 Sep 2017 01:16:19 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 26 Sep 2017 01:16:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 26 Sep 2017 01:16:19 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 01:16:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 26 Sep 2017 01:16:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 26 Sep 2017 01:16:20 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 26 Sep 2017 01:16:21 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:16:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 01:16:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:16:22 GMT
EXPOSE 5432/tcp
# Tue, 26 Sep 2017 01:16:22 GMT
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
	-	`sha256:50ea9ab0f19fd4f822d9ee682d07bfd0268064572ab62ee8da64616d3f18f1da`  
		Last Modified: Tue, 26 Sep 2017 01:32:44 GMT  
		Size: 12.4 MB (12402526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00fa0ced27a1f0f473022982863bad4d836ca8857f074dceaa48e2e3acdb71b`  
		Last Modified: Tue, 26 Sep 2017 01:32:36 GMT  
		Size: 6.8 KB (6802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a9a98b0d8af4fbf08b2624dd35ea472e1093836f1a14080846c1cf6ae33a1`  
		Last Modified: Tue, 26 Sep 2017 01:32:36 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90906bb671e6336efeb8ac0483617890d92c757b8dc1fa9b56c54a3932451a9a`  
		Last Modified: Tue, 26 Sep 2017 01:32:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f246e4507b6ce499b320a3003b1ad55587e921ff22acf3af63f4d996d1ec3da`  
		Last Modified: Tue, 26 Sep 2017 01:32:36 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7514bb7a4f3fd9ab37dd8e27bc6cc0eec13187e96a0218825da9825bdb17ef94`  
		Last Modified: Tue, 26 Sep 2017 01:32:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:abdbe49005e0b0ea16b275ee0bfc731e29d78d61fa0383b7e93529eabfc88a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:20955d89030c1b3ae5c40068e4939b55a6ea35f791251773bc85e2e8e6c167ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14382114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daed323499994023c68e8421ac2a192d18524c8809c87d7a45bcd1b0fa2bab97`
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
# Tue, 26 Sep 2017 01:14:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 26 Sep 2017 01:16:19 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 26 Sep 2017 01:16:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 26 Sep 2017 01:16:19 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 01:16:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 26 Sep 2017 01:16:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 26 Sep 2017 01:16:20 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 26 Sep 2017 01:16:21 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:16:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 01:16:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:16:22 GMT
EXPOSE 5432/tcp
# Tue, 26 Sep 2017 01:16:22 GMT
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
	-	`sha256:50ea9ab0f19fd4f822d9ee682d07bfd0268064572ab62ee8da64616d3f18f1da`  
		Last Modified: Tue, 26 Sep 2017 01:32:44 GMT  
		Size: 12.4 MB (12402526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00fa0ced27a1f0f473022982863bad4d836ca8857f074dceaa48e2e3acdb71b`  
		Last Modified: Tue, 26 Sep 2017 01:32:36 GMT  
		Size: 6.8 KB (6802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a9a98b0d8af4fbf08b2624dd35ea472e1093836f1a14080846c1cf6ae33a1`  
		Last Modified: Tue, 26 Sep 2017 01:32:36 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90906bb671e6336efeb8ac0483617890d92c757b8dc1fa9b56c54a3932451a9a`  
		Last Modified: Tue, 26 Sep 2017 01:32:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f246e4507b6ce499b320a3003b1ad55587e921ff22acf3af63f4d996d1ec3da`  
		Last Modified: Tue, 26 Sep 2017 01:32:36 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7514bb7a4f3fd9ab37dd8e27bc6cc0eec13187e96a0218825da9825bdb17ef94`  
		Last Modified: Tue, 26 Sep 2017 01:32:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:317a541c064ec73cb48dedc2fbbb7797dd075303a2d9befcb85641e6ff6bf10f
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
$ docker pull postgres@sha256:0cd29431fb4af24319a1930cdc671a4ed6385e074336d87c753ab5b792d508d8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98256373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80c4583269ba8a1d0134fc5f3860c30c62007dbf89da399bed98fd827416f34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:30:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:30:48 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 15:30:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 15:31:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 15:32:05 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 15:32:05 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 15:32:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 15:32:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 15:32:14 GMT
ENV PG_MAJOR=9.6
# Wed, 27 Sep 2017 15:32:14 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Wed, 27 Sep 2017 15:51:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 15:51:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 15:51:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 15:51:10 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:51:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 15:51:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 15:51:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 15:51:11 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 15:51:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 15:51:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 15:51:12 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 15:51:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2c409b7ae0febef2b700321a43fb49d4b9ad76fc4c933fb62695219630954d`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61597fd9fbb62df94577fdd9ccad572f684094d21f68e9b439307558b912aae0`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 974.6 KB (974622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0286448cd97f8d83999faf13ccbb4ccc2335de7a846fa3264a8011d4c9c13b7f`  
		Last Modified: Wed, 27 Sep 2017 17:00:56 GMT  
		Size: 7.1 MB (7112857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5239cd8012b55c6165a915cc3c1bc7cfefc6838ccc2b78bfcb39bea64fb82`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791575c96ba3b72539c33c88beb77ebfd0a2dfbbe9c6c69687c8906f68d631f2`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0df15f3a3c063007d774fb92047fd482e846b1dc50be8118dbfb363d871fec1`  
		Last Modified: Wed, 27 Sep 2017 17:01:07 GMT  
		Size: 39.3 MB (39273006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf7b83d886a8b0785c3642b95a15bfe5d3f34bce40caf738e719f582bb17e7d`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beec19f7dce5d9b4ac98d52e4635114074de89865879149eb7388afaee04a3f5`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a132bb40053438ebf67cd449c144780ce74dc73c124ef301b2e8225e5456ac`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b29675043cc1bd33344547fa55241723b7c167b0447286c8f9c039ce701c2c4`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7cee52a9edf7e1da917855f099d3a14843ec21b211e3dbec43f131c72ec5c9`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v7

```console
$ docker pull postgres@sha256:e32334dc30e22ab400dafeaa32b40ef16fcc78a124dcc1beceedde1535fef770
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94737273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c16a4247a8e53814f76c142c66432d2c506cad88e4b1015570b4142dbc70577`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:11:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:11:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 06:11:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 06:12:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 06:13:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 06:13:12 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 06:13:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 06:13:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 06:13:22 GMT
ENV PG_MAJOR=9.6
# Wed, 27 Sep 2017 06:13:22 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Wed, 27 Sep 2017 06:31:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 06:31:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 06:31:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 06:31:32 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 06:31:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 06:31:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 06:31:34 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 06:31:34 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 06:31:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 06:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 06:31:36 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 06:31:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eb454b92191dd16585fdb1b5bee4824ce415847b935883493bfc83f4370717`  
		Last Modified: Wed, 27 Sep 2017 07:36:35 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c6b2ca05c842476559470cf62c3f02424f358458ea55bacdb28b7ea7a56966`  
		Last Modified: Wed, 27 Sep 2017 07:36:34 GMT  
		Size: 959.4 KB (959442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2ef4187e92a85ff8a876831a7c88b1872263f3f5aab975495bd40fd6c647f6`  
		Last Modified: Wed, 27 Sep 2017 07:36:37 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd414b5d06a913e8d8fbb733bb61fe61904b70c1aa7a9f4056a37ed51ea20e9`  
		Last Modified: Wed, 27 Sep 2017 07:36:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774278d493cabd5349bd53060d8220ba6addaf46b8182bc732d79cccf432836`  
		Last Modified: Wed, 27 Sep 2017 07:36:32 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f866f1b813842cce2b6ec8cfadf81178345f1716f228019554be2c6833d6cf`  
		Last Modified: Wed, 27 Sep 2017 07:36:44 GMT  
		Size: 38.0 MB (37962330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c947feeb0a9a19b84f80c3bdaed4280a85405873f3396fa722320d29bf0bc241`  
		Last Modified: Wed, 27 Sep 2017 07:36:31 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d851ae4e004666217984d1d523e4b5f453c37c73f64e1601e92cf8ba18ace`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72464c671933ca12f3924bfa556a93bff8e77dff5ff9ad2cc9bda23fc1e7902b`  
		Last Modified: Wed, 27 Sep 2017 07:36:31 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf15a8cc70b64b6744dd41c64f9db3b035f76045312a7c52d138f6335da927a`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97b4a15c24cbd69859ab5339f9ff4f1bfed7fb1ba9a5d8d69e07f7a8bb805d6`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
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
$ docker pull postgres@sha256:317a541c064ec73cb48dedc2fbbb7797dd075303a2d9befcb85641e6ff6bf10f
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
$ docker pull postgres@sha256:0cd29431fb4af24319a1930cdc671a4ed6385e074336d87c753ab5b792d508d8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98256373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80c4583269ba8a1d0134fc5f3860c30c62007dbf89da399bed98fd827416f34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:30:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:30:48 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 15:30:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 15:31:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 15:32:05 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 15:32:05 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 15:32:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 15:32:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 15:32:14 GMT
ENV PG_MAJOR=9.6
# Wed, 27 Sep 2017 15:32:14 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Wed, 27 Sep 2017 15:51:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 15:51:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 15:51:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 15:51:10 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:51:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 15:51:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 15:51:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 15:51:11 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 15:51:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 15:51:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 15:51:12 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 15:51:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2c409b7ae0febef2b700321a43fb49d4b9ad76fc4c933fb62695219630954d`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61597fd9fbb62df94577fdd9ccad572f684094d21f68e9b439307558b912aae0`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 974.6 KB (974622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0286448cd97f8d83999faf13ccbb4ccc2335de7a846fa3264a8011d4c9c13b7f`  
		Last Modified: Wed, 27 Sep 2017 17:00:56 GMT  
		Size: 7.1 MB (7112857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5239cd8012b55c6165a915cc3c1bc7cfefc6838ccc2b78bfcb39bea64fb82`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791575c96ba3b72539c33c88beb77ebfd0a2dfbbe9c6c69687c8906f68d631f2`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0df15f3a3c063007d774fb92047fd482e846b1dc50be8118dbfb363d871fec1`  
		Last Modified: Wed, 27 Sep 2017 17:01:07 GMT  
		Size: 39.3 MB (39273006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf7b83d886a8b0785c3642b95a15bfe5d3f34bce40caf738e719f582bb17e7d`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beec19f7dce5d9b4ac98d52e4635114074de89865879149eb7388afaee04a3f5`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a132bb40053438ebf67cd449c144780ce74dc73c124ef301b2e8225e5456ac`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b29675043cc1bd33344547fa55241723b7c167b0447286c8f9c039ce701c2c4`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7cee52a9edf7e1da917855f099d3a14843ec21b211e3dbec43f131c72ec5c9`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; arm variant v7

```console
$ docker pull postgres@sha256:e32334dc30e22ab400dafeaa32b40ef16fcc78a124dcc1beceedde1535fef770
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94737273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c16a4247a8e53814f76c142c66432d2c506cad88e4b1015570b4142dbc70577`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:11:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:11:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 06:11:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 06:12:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 06:13:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 06:13:12 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 06:13:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 06:13:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 06:13:22 GMT
ENV PG_MAJOR=9.6
# Wed, 27 Sep 2017 06:13:22 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Wed, 27 Sep 2017 06:31:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 06:31:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 06:31:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 06:31:32 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 06:31:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 06:31:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 06:31:34 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 06:31:34 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 06:31:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 06:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 06:31:36 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 06:31:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eb454b92191dd16585fdb1b5bee4824ce415847b935883493bfc83f4370717`  
		Last Modified: Wed, 27 Sep 2017 07:36:35 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c6b2ca05c842476559470cf62c3f02424f358458ea55bacdb28b7ea7a56966`  
		Last Modified: Wed, 27 Sep 2017 07:36:34 GMT  
		Size: 959.4 KB (959442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2ef4187e92a85ff8a876831a7c88b1872263f3f5aab975495bd40fd6c647f6`  
		Last Modified: Wed, 27 Sep 2017 07:36:37 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd414b5d06a913e8d8fbb733bb61fe61904b70c1aa7a9f4056a37ed51ea20e9`  
		Last Modified: Wed, 27 Sep 2017 07:36:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774278d493cabd5349bd53060d8220ba6addaf46b8182bc732d79cccf432836`  
		Last Modified: Wed, 27 Sep 2017 07:36:32 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f866f1b813842cce2b6ec8cfadf81178345f1716f228019554be2c6833d6cf`  
		Last Modified: Wed, 27 Sep 2017 07:36:44 GMT  
		Size: 38.0 MB (37962330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c947feeb0a9a19b84f80c3bdaed4280a85405873f3396fa722320d29bf0bc241`  
		Last Modified: Wed, 27 Sep 2017 07:36:31 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d851ae4e004666217984d1d523e4b5f453c37c73f64e1601e92cf8ba18ace`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72464c671933ca12f3924bfa556a93bff8e77dff5ff9ad2cc9bda23fc1e7902b`  
		Last Modified: Wed, 27 Sep 2017 07:36:31 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf15a8cc70b64b6744dd41c64f9db3b035f76045312a7c52d138f6335da927a`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97b4a15c24cbd69859ab5339f9ff4f1bfed7fb1ba9a5d8d69e07f7a8bb805d6`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
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
$ docker pull postgres@sha256:f93d2f7d74f1e7245fcf92de403d6e668171ff834e34bc4a841b534fe0e0e7bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:7f33242307855adee8e2cf21401a524cd4dd25dfa5de973898fd44cee83ec49f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14669186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce37fc5feec5fb1d401e799b25a3a05bdc23f4753f851b7b1cd9f3db8336632b`
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
# Tue, 26 Sep 2017 01:09:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 26 Sep 2017 01:11:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 26 Sep 2017 01:11:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 26 Sep 2017 01:11:39 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 01:11:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 26 Sep 2017 01:11:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 26 Sep 2017 01:11:41 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 26 Sep 2017 01:11:41 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:11:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 01:11:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:11:42 GMT
EXPOSE 5432/tcp
# Tue, 26 Sep 2017 01:11:42 GMT
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
	-	`sha256:0fb52779895f942d6a5e5785b01a2bc1f7a5487cf37fd48e14e7c1331abfee65`  
		Last Modified: Tue, 26 Sep 2017 01:31:24 GMT  
		Size: 12.7 MB (12689328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af27be8b56cd8005935533feda10bf452e062050b786d44eab9bd4fe1466250b`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 7.1 KB (7077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec537890e84f9ffc3fd403d2d9d67ccb22f0290f21d9050a3b14db9e89a4aea`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968dd0cfd893221b0b4dac1596b0f3db5e5361dcb1f450ec3e3d042ef3b692df`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efebf139cdc40f185ab83ea898f4aeabdc8e6dfbf2056c43bbcaf3a30c8a5ff`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b3544d84dfaa570c309fa72e17a65027918748b22711c6dfeb794277439997`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:f93d2f7d74f1e7245fcf92de403d6e668171ff834e34bc4a841b534fe0e0e7bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:7f33242307855adee8e2cf21401a524cd4dd25dfa5de973898fd44cee83ec49f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14669186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce37fc5feec5fb1d401e799b25a3a05bdc23f4753f851b7b1cd9f3db8336632b`
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
# Tue, 26 Sep 2017 01:09:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 26 Sep 2017 01:11:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 26 Sep 2017 01:11:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 26 Sep 2017 01:11:39 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 01:11:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 26 Sep 2017 01:11:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 26 Sep 2017 01:11:41 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 26 Sep 2017 01:11:41 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:11:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 01:11:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:11:42 GMT
EXPOSE 5432/tcp
# Tue, 26 Sep 2017 01:11:42 GMT
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
	-	`sha256:0fb52779895f942d6a5e5785b01a2bc1f7a5487cf37fd48e14e7c1331abfee65`  
		Last Modified: Tue, 26 Sep 2017 01:31:24 GMT  
		Size: 12.7 MB (12689328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af27be8b56cd8005935533feda10bf452e062050b786d44eab9bd4fe1466250b`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 7.1 KB (7077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec537890e84f9ffc3fd403d2d9d67ccb22f0290f21d9050a3b14db9e89a4aea`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968dd0cfd893221b0b4dac1596b0f3db5e5361dcb1f450ec3e3d042ef3b692df`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efebf139cdc40f185ab83ea898f4aeabdc8e6dfbf2056c43bbcaf3a30c8a5ff`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b3544d84dfaa570c309fa72e17a65027918748b22711c6dfeb794277439997`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:f93d2f7d74f1e7245fcf92de403d6e668171ff834e34bc4a841b534fe0e0e7bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:7f33242307855adee8e2cf21401a524cd4dd25dfa5de973898fd44cee83ec49f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14669186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce37fc5feec5fb1d401e799b25a3a05bdc23f4753f851b7b1cd9f3db8336632b`
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
# Tue, 26 Sep 2017 01:09:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 26 Sep 2017 01:11:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 26 Sep 2017 01:11:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 26 Sep 2017 01:11:39 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 01:11:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 26 Sep 2017 01:11:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 26 Sep 2017 01:11:41 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 26 Sep 2017 01:11:41 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:11:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 01:11:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:11:42 GMT
EXPOSE 5432/tcp
# Tue, 26 Sep 2017 01:11:42 GMT
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
	-	`sha256:0fb52779895f942d6a5e5785b01a2bc1f7a5487cf37fd48e14e7c1331abfee65`  
		Last Modified: Tue, 26 Sep 2017 01:31:24 GMT  
		Size: 12.7 MB (12689328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af27be8b56cd8005935533feda10bf452e062050b786d44eab9bd4fe1466250b`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 7.1 KB (7077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec537890e84f9ffc3fd403d2d9d67ccb22f0290f21d9050a3b14db9e89a4aea`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968dd0cfd893221b0b4dac1596b0f3db5e5361dcb1f450ec3e3d042ef3b692df`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efebf139cdc40f185ab83ea898f4aeabdc8e6dfbf2056c43bbcaf3a30c8a5ff`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b3544d84dfaa570c309fa72e17a65027918748b22711c6dfeb794277439997`  
		Last Modified: Tue, 26 Sep 2017 01:31:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:66b5dc419b0171dd0c7ec21d426a3f17c44c19e53c3436393d5901b41b3720f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:ccbfc9995c01e265adf9a8c6b7171e74a785bf33b410f5347c0653691724d25c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14722783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66015a295269c190197f95f2990ac55d1df2cdc7e0b23c724daa7e8cc34d3546`
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
# Thu, 05 Oct 2017 18:58:54 GMT
ENV PG_VERSION=10.0
# Thu, 05 Oct 2017 18:58:54 GMT
ENV PG_SHA256=712f5592e27b81c5b454df96b258c14d94b6b03836831e015c65d6deeae57fd1
# Thu, 05 Oct 2017 19:01:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 05 Oct 2017 19:01:34 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 05 Oct 2017 19:01:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 05 Oct 2017 19:01:39 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Oct 2017 19:01:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Oct 2017 19:01:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 05 Oct 2017 19:01:40 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Oct 2017 19:01:40 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:01:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 05 Oct 2017 19:01:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:01:41 GMT
EXPOSE 5432/tcp
# Thu, 05 Oct 2017 19:01:42 GMT
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
	-	`sha256:ce960dcde694dcc608b63daad1df060667fa755624083d658f67b66e10a92939`  
		Last Modified: Thu, 05 Oct 2017 19:02:49 GMT  
		Size: 12.7 MB (12722612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb115e27ff4cbdfb3b3b2edb2b8c949a9608f139d8984b95a91cdbb1e30836`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 7.3 KB (7263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3bfe2048575b995119bae4189f2f51f967d6272b734cf11f6afa9903f5517c`  
		Last Modified: Thu, 05 Oct 2017 19:02:45 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9213f4fbe58abd3cbcf4861235306725803f612818d2effd81b1f3d09ab52aba`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b36942588093847507f11d45bb90dbd3cb06c4069cbd9955f4653f2f80a6a2`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea9701a163263fb002930c4dd07bd49aae43a7815914b71531c7b1d57055f09`  
		Last Modified: Thu, 05 Oct 2017 19:02:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:317a541c064ec73cb48dedc2fbbb7797dd075303a2d9befcb85641e6ff6bf10f
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
$ docker pull postgres@sha256:0cd29431fb4af24319a1930cdc671a4ed6385e074336d87c753ab5b792d508d8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98256373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80c4583269ba8a1d0134fc5f3860c30c62007dbf89da399bed98fd827416f34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:30:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:30:48 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 15:30:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 15:31:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 15:32:05 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 15:32:05 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 15:32:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 15:32:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 15:32:14 GMT
ENV PG_MAJOR=9.6
# Wed, 27 Sep 2017 15:32:14 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Wed, 27 Sep 2017 15:51:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 15:51:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 15:51:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 15:51:10 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:51:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 15:51:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 15:51:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 15:51:11 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 15:51:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 15:51:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 15:51:12 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 15:51:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2c409b7ae0febef2b700321a43fb49d4b9ad76fc4c933fb62695219630954d`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61597fd9fbb62df94577fdd9ccad572f684094d21f68e9b439307558b912aae0`  
		Last Modified: Wed, 27 Sep 2017 17:00:54 GMT  
		Size: 974.6 KB (974622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0286448cd97f8d83999faf13ccbb4ccc2335de7a846fa3264a8011d4c9c13b7f`  
		Last Modified: Wed, 27 Sep 2017 17:00:56 GMT  
		Size: 7.1 MB (7112857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5239cd8012b55c6165a915cc3c1bc7cfefc6838ccc2b78bfcb39bea64fb82`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791575c96ba3b72539c33c88beb77ebfd0a2dfbbe9c6c69687c8906f68d631f2`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0df15f3a3c063007d774fb92047fd482e846b1dc50be8118dbfb363d871fec1`  
		Last Modified: Wed, 27 Sep 2017 17:01:07 GMT  
		Size: 39.3 MB (39273006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf7b83d886a8b0785c3642b95a15bfe5d3f34bce40caf738e719f582bb17e7d`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beec19f7dce5d9b4ac98d52e4635114074de89865879149eb7388afaee04a3f5`  
		Last Modified: Wed, 27 Sep 2017 17:00:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a132bb40053438ebf67cd449c144780ce74dc73c124ef301b2e8225e5456ac`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b29675043cc1bd33344547fa55241723b7c167b0447286c8f9c039ce701c2c4`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7cee52a9edf7e1da917855f099d3a14843ec21b211e3dbec43f131c72ec5c9`  
		Last Modified: Wed, 27 Sep 2017 17:00:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:e32334dc30e22ab400dafeaa32b40ef16fcc78a124dcc1beceedde1535fef770
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94737273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c16a4247a8e53814f76c142c66432d2c506cad88e4b1015570b4142dbc70577`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:11:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:11:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Sep 2017 06:11:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 06:12:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Sep 2017 06:13:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Sep 2017 06:13:12 GMT
ENV LANG=en_US.utf8
# Wed, 27 Sep 2017 06:13:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 06:13:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Sep 2017 06:13:22 GMT
ENV PG_MAJOR=9.6
# Wed, 27 Sep 2017 06:13:22 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+1
# Wed, 27 Sep 2017 06:31:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Sep 2017 06:31:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Sep 2017 06:31:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Sep 2017 06:31:32 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 06:31:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Sep 2017 06:31:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Sep 2017 06:31:34 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Sep 2017 06:31:34 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 27 Sep 2017 06:31:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Sep 2017 06:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 06:31:36 GMT
EXPOSE 5432/tcp
# Wed, 27 Sep 2017 06:31:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eb454b92191dd16585fdb1b5bee4824ce415847b935883493bfc83f4370717`  
		Last Modified: Wed, 27 Sep 2017 07:36:35 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c6b2ca05c842476559470cf62c3f02424f358458ea55bacdb28b7ea7a56966`  
		Last Modified: Wed, 27 Sep 2017 07:36:34 GMT  
		Size: 959.4 KB (959442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2ef4187e92a85ff8a876831a7c88b1872263f3f5aab975495bd40fd6c647f6`  
		Last Modified: Wed, 27 Sep 2017 07:36:37 GMT  
		Size: 7.1 MB (7112858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd414b5d06a913e8d8fbb733bb61fe61904b70c1aa7a9f4056a37ed51ea20e9`  
		Last Modified: Wed, 27 Sep 2017 07:36:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774278d493cabd5349bd53060d8220ba6addaf46b8182bc732d79cccf432836`  
		Last Modified: Wed, 27 Sep 2017 07:36:32 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f866f1b813842cce2b6ec8cfadf81178345f1716f228019554be2c6833d6cf`  
		Last Modified: Wed, 27 Sep 2017 07:36:44 GMT  
		Size: 38.0 MB (37962330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c947feeb0a9a19b84f80c3bdaed4280a85405873f3396fa722320d29bf0bc241`  
		Last Modified: Wed, 27 Sep 2017 07:36:31 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d851ae4e004666217984d1d523e4b5f453c37c73f64e1601e92cf8ba18ace`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72464c671933ca12f3924bfa556a93bff8e77dff5ff9ad2cc9bda23fc1e7902b`  
		Last Modified: Wed, 27 Sep 2017 07:36:31 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf15a8cc70b64b6744dd41c64f9db3b035f76045312a7c52d138f6335da927a`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97b4a15c24cbd69859ab5339f9ff4f1bfed7fb1ba9a5d8d69e07f7a8bb805d6`  
		Last Modified: Wed, 27 Sep 2017 07:36:30 GMT  
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
