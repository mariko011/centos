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
$ docker pull postgres@sha256:73a1c4e98fb961bb4a5c55ad6428470a3303bd3966abc442fe937814f6bbc002
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
$ docker pull postgres@sha256:36f2ee8f0b3239d998a7bbef1eedb1fe321ba95f11709449423e9027ef8ecadb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116995021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b106d5a0dc75f330cee9a1c9681ca674846235c04c8c084c5c9de7566990d635`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:44:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:44:13 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:44:13 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:44:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:44:30 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:44:30 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:44:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:44:41 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:44:42 GMT
ENV PG_MAJOR=10
# Tue, 10 Oct 2017 01:44:42 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Tue, 10 Oct 2017 01:45:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:45:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:45:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:03:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 12 Oct 2017 22:03:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:03:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:03:09 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:03:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:03:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:03:16 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:03:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d89ae9a47e49744bd3d4f7132219541b8a8b0256ec635dade1ce61b15eaba33`  
		Last Modified: Tue, 10 Oct 2017 01:57:06 GMT  
		Size: 7.2 MB (7218239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7726fda7efeb130ae36befad4bd86810218811b70531667453aa7fbed3c54fa`  
		Last Modified: Tue, 10 Oct 2017 01:57:04 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1838499bd8f5b0b128cb251a4989adb30f592e2c64ba4e0e906b5f6de381c3b`  
		Last Modified: Tue, 10 Oct 2017 01:57:03 GMT  
		Size: 956.6 KB (956621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ec5aa60735b62cd36bbcd1ccf8ec87bd41950dcfd819c1b2d5a03a4a385699`  
		Last Modified: Tue, 10 Oct 2017 01:57:04 GMT  
		Size: 6.6 MB (6577590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1571d7170291ace31aaefd471d6c57afb27a552307f1f584c7d79f141c2081c6`  
		Last Modified: Tue, 10 Oct 2017 01:57:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6e41e1373282c2ef96d8f7c49a92505407c9f858d6e74e7d454d4d2e371b6e`  
		Last Modified: Tue, 10 Oct 2017 01:57:02 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787e3c45a9bbc93265062c8adb43a46a62c3b205d6421e35c1e867b3f7b0c3ce`  
		Last Modified: Tue, 10 Oct 2017 01:57:21 GMT  
		Size: 57.1 MB (57097620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b234cf83b224c2f0eb7ee3e7c0afb0c76ccdeb118a741a7ead15da8a3ce2e24`  
		Last Modified: Tue, 10 Oct 2017 01:56:59 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8ad2440289b65a4e89b3e3457b3cb6f11472a507ef10a5c796567c5f5cea20`  
		Last Modified: Tue, 10 Oct 2017 01:57:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9351993374c07a38b2827cfb6b82f0cd3d1385a86033eda20a4765f1be2218ab`  
		Last Modified: Thu, 12 Oct 2017 22:06:21 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f3575e09a10212f7248a26786be287baf69814c615ae011754bd4dc2dcadc5`  
		Last Modified: Thu, 12 Oct 2017 22:06:21 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4b2ff0c3a9803735983df12dbd1d5fecfac5c736c0a491d64c87cd39b7985`  
		Last Modified: Thu, 12 Oct 2017 22:06:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v5

```console
$ docker pull postgres@sha256:cb4225cb6b70b4f8ceddd27fbe11e0f2515bb1c2b6769823e51edd94a617a4d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116300377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c35332b8d743d0c3c39d0f13aa2694e17e9e16e188045dffd990233eb02572`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:09 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:37:09 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:37:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:37:41 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:37:41 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:37:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:37:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:37:46 GMT
ENV PG_MAJOR=10
# Mon, 09 Oct 2017 22:37:47 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Mon, 09 Oct 2017 22:57:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:57:40 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:57:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:38:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 06:38:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:38:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:38:31 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:38:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:38:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:38:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:38:33 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:38:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab7b14a3053922ee5271e130da109321073777964c0576f5615e9965ecd244b`  
		Last Modified: Tue, 10 Oct 2017 00:15:44 GMT  
		Size: 7.0 MB (6951777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59095f1710553ac54544021719fc2424314bb372ca4df3ab14126b720b9374b6`  
		Last Modified: Tue, 10 Oct 2017 00:15:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5445faeb0b89a64781ea63ff1cd6e0937e60ef0c429e80b3236e6553ac963de`  
		Last Modified: Tue, 10 Oct 2017 00:15:41 GMT  
		Size: 946.9 KB (946924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e0a8759c5bdfc6eab678d710d943f42e77d7479aa7174a24e68d72cf6d16e7`  
		Last Modified: Tue, 10 Oct 2017 00:15:42 GMT  
		Size: 6.6 MB (6577688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b585c51696cbf3cfd26d324fecbed5779db503c43dcf8d0d346a51f6903ec6f`  
		Last Modified: Tue, 10 Oct 2017 00:15:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752b8dfba5e2b18f8f50914f1f9575e842f8bd7ea0b2313834410e9adcef1e45`  
		Last Modified: Tue, 10 Oct 2017 00:15:40 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359dc049625858e4cc47d0efcca020632fb177d65140c2e44c2244e23ec83ae7`  
		Last Modified: Tue, 10 Oct 2017 00:15:58 GMT  
		Size: 58.0 MB (57992157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6121ffce052e30360ab410a750f1d60b08b175420238f4fbc15caa761d6a6ce7`  
		Last Modified: Tue, 10 Oct 2017 00:15:39 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb8b9740aeb7fc63bea161041f405643a95888295989e6311fe8ed2d56bd08b`  
		Last Modified: Tue, 10 Oct 2017 00:15:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86093c68be97a18d0eab7549823e778190c5ae363297bb3fea6e0dc944258821`  
		Last Modified: Fri, 13 Oct 2017 06:39:19 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e756433400883f14822d14867ea6d8328352bd559a97b47ecd7bc412bfc6da`  
		Last Modified: Fri, 13 Oct 2017 06:39:18 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10359119a90a342755c662986879f7cd42a3894fe66078866b4e3b5fddfbfc4`  
		Last Modified: Fri, 13 Oct 2017 06:39:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v7

```console
$ docker pull postgres@sha256:0538df0fa4202ec0af5ed1f0a3af316916d21d8d8481a352398e0ed8c0dda82a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112233239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96443a017a99354bbe2d9f9f7eeaff1f66174a6aa0b0fea4f06aa8913be8a64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:15:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:15:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:15:16 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:16:03 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:16:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:16:12 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:16:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:16:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:16:20 GMT
ENV PG_MAJOR=10
# Mon, 09 Oct 2017 23:16:21 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Mon, 09 Oct 2017 23:33:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:33:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:33:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:38:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 03:38:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:38:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:38:36 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:38:36 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:38:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:38:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:38:38 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:38:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1c6efbcc9331f8f6e929a8661865aa2bdcc021a638f5d9dec2fa3bffff5040`  
		Last Modified: Tue, 10 Oct 2017 00:45:43 GMT  
		Size: 6.6 MB (6589449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65145d470a7b002be1d63bfb6851441910d8e986190dc5a13132d04e4638a5c1`  
		Last Modified: Tue, 10 Oct 2017 00:45:41 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e11af9f4a3cdd7ceb0348cf7c193968b8e0b2ca211d94a8486f23db23889b`  
		Last Modified: Tue, 10 Oct 2017 00:45:40 GMT  
		Size: 931.5 KB (931493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bf1485fbd609e86a1587353703dd3a17d754f09db449435b2e158ab50b6f52`  
		Last Modified: Tue, 10 Oct 2017 00:45:43 GMT  
		Size: 6.6 MB (6577687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3a6e0b9c5a6499faa147ed0c7a3474e521b7cec028a73c0884c43cbccfed4`  
		Last Modified: Tue, 10 Oct 2017 00:45:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f0b444a7cc82ed46f1eea136ec655351cc0f3d7d494dd56df0c1a3401e14ce`  
		Last Modified: Tue, 10 Oct 2017 00:45:41 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82a35f4494f2e816eb0fc098bcb371dc016e6c28e5dfa11b1ca04e3c174dd59`  
		Last Modified: Tue, 10 Oct 2017 00:45:57 GMT  
		Size: 56.3 MB (56276740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0768236164c718853c5950c4c6ed74a4b432f2eb283936dacea23a2509b818`  
		Last Modified: Tue, 10 Oct 2017 00:45:39 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941131b7ccde5f682432eb7560284ecd31740684937983f206e77da3517814f3`  
		Last Modified: Tue, 10 Oct 2017 00:45:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc12a2fececafea70951c585c8985833ad861f3b95d249ad1fc6d0a6a669ab57`  
		Last Modified: Fri, 13 Oct 2017 03:39:32 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82339404941df871d37564430d90e8695d33c095dece581a7a2758221830f3de`  
		Last Modified: Fri, 13 Oct 2017 03:39:31 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c466486be16759716b8879125b5ef2f5f163470f74ce3c37bfbc3707aaf9d4d`  
		Last Modified: Fri, 13 Oct 2017 03:39:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:2902685a85dcc0c7b450952167b0733df0b10cdf4ec10370a47b5188177d79a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114264223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb802e7af25c1eada61f1f1eae83a993f874248fbaf5aa56e6a0175b1aa021e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:07:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:07:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:07:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:07:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:07:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:07:59 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:08:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:08:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 02:08:26 GMT
ENV PG_MAJOR=10
# Tue, 10 Oct 2017 02:08:27 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Tue, 10 Oct 2017 02:45:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 02:45:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 02:45:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:21:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 14:21:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:21:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:21:17 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:21:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:21:20 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:21:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9f8576068a5c5604836a3f69915ddcd4be4ae798cac855e2cdbf0008a172f2`  
		Last Modified: Tue, 10 Oct 2017 05:16:38 GMT  
		Size: 6.8 MB (6793318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73d563f6d23c97f2f50e830a257e9e1fd4cf35fcacf8c33ce654cb35448388f`  
		Last Modified: Tue, 10 Oct 2017 05:16:32 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2285a265375b62f306cfe648343bfb75839066711579eee66c4d6e736c263f07`  
		Last Modified: Tue, 10 Oct 2017 05:16:31 GMT  
		Size: 924.2 KB (924231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6c8967d461a5b23f955475c1495d72e283ea536de734485136280a991390b8`  
		Last Modified: Tue, 10 Oct 2017 05:16:41 GMT  
		Size: 6.6 MB (6577579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efd893438caddb6c6ce49749c9f480605e8ddffd5e103f3f4d6aa1013f52999`  
		Last Modified: Tue, 10 Oct 2017 05:16:29 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a75b8869bbbf2709fa0b01fb9fafb2b32e3e0f5b2ccf657fdc78d7b366f6eae`  
		Last Modified: Tue, 10 Oct 2017 05:16:29 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09653c00afa5d42138b9c405eedd4713df4a38aecd16e03d797d7a4658b4a2de`  
		Last Modified: Tue, 10 Oct 2017 05:16:49 GMT  
		Size: 57.0 MB (57041496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad96a5420d8e414cae459b514990a5e8c1cf81c2afe8783d9a0cfc7236e308`  
		Last Modified: Tue, 10 Oct 2017 05:16:26 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a4977694013acc26fbcba55cfd62f22e818631fe7898a5116cc40877151409`  
		Last Modified: Tue, 10 Oct 2017 05:16:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e74c3e0fa9bbe42eee39ca2f62eaa34ea627b9d243d4bf0930afbc61804f21`  
		Last Modified: Fri, 13 Oct 2017 14:23:02 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66981de64eec8ee2be61f79811d3100153b1149892fdae7cd3037ebc14768c78`  
		Last Modified: Fri, 13 Oct 2017 14:23:02 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1eaef7b99ba60f903ceef61c5a45752717948bb2679fe2bedd17d406ea32f22`  
		Last Modified: Fri, 13 Oct 2017 14:23:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; 386

```console
$ docker pull postgres@sha256:aa7a8d5992b978aa09b9d2960a569951abd51d79eb3d677841cca2fef0af12b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119062504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76212e33ee446983dbba0ce14fd59609f5144ea8e81ab8ff95b852d60f1e3b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:05:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:05:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:05:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:05:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:06:00 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:06:00 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:06:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:06:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:06:13 GMT
ENV PG_MAJOR=10
# Tue, 10 Oct 2017 00:06:13 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Tue, 10 Oct 2017 00:06:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:06:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:06:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:04:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 14:04:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:04:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:04:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:04:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:00 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b4fadb286da2948bf4dca37ecfa555137df90fb799c2be1e702104ebbad756`  
		Last Modified: Tue, 10 Oct 2017 00:25:54 GMT  
		Size: 7.5 MB (7523051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40faa17b7b96c62a8f7373316678a8e921649047d1b81b780e54be9e1f7d755`  
		Last Modified: Tue, 10 Oct 2017 00:25:52 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527cff2d6a5969ffca49617dc69fc64586594f3510c3d67347300c4458fafa70`  
		Last Modified: Tue, 10 Oct 2017 00:25:51 GMT  
		Size: 936.4 KB (936449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa5544652d3c5e2a2f8e2e612475983234a72dadb6b63be74c8522cd7954533`  
		Last Modified: Tue, 10 Oct 2017 00:25:53 GMT  
		Size: 6.6 MB (6577723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521ffb842fcecbbd419e36dbc064f775cd2db813d840ad16e3c0a6fcd74c1066`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19007f5615837d55bac93c825868ab9283bd787d2edb4daf3caf87d76dd2c74f`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5206cda6c2fda7fe66c46b6f10e89bd26a6d144f8b253971526cf50fd624abff`  
		Last Modified: Tue, 10 Oct 2017 00:26:05 GMT  
		Size: 58.2 MB (58175746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b0cad4d361da8b3ac6ae066eaa28f25071cb3a480e57927daa5043b70bb1d4`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc293bdd2f377fe5f0ce6039965c73ebef9f25daf633fbccf823c3106dad153`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ad1c48ad321d76b9b22f9cf06a06d8e420fae56f368783a30fea65336c4b22`  
		Last Modified: Fri, 13 Oct 2017 14:05:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ca448e367fff1b590abf5b624df086754b7497c113dbafdf8f153291c2e76b`  
		Last Modified: Fri, 13 Oct 2017 14:05:44 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7e40a10d539be72071d5b086b18b55cb49feb1f51811e2a8fd5384a2affde9`  
		Last Modified: Fri, 13 Oct 2017 14:05:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; ppc64le

```console
$ docker pull postgres@sha256:3ad1b42ad6667212e77827c600fbd7ec1948efb6e29c6c3354de3cf9a7cc76b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116923315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690957f16fdddca9615b4718edbd0201ec656df0fa9ce5d277206ed29b1e8561`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:02:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:03:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:03:05 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:04:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:04:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:04:45 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:04:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:04:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:05:02 GMT
ENV PG_MAJOR=10
# Mon, 09 Oct 2017 22:05:03 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Mon, 09 Oct 2017 22:10:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:10:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:10:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 12 Oct 2017 22:01:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:01:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:01:37 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:01:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:01:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:01:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:01:51 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:01:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d839649481df99bf5d1a492dc70351e6c1b9db302762a083ef3c0435aa7fdc70`  
		Last Modified: Mon, 09 Oct 2017 23:14:48 GMT  
		Size: 7.1 MB (7081113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ddd670b3ea2e7a14c1f72057bc98b0f6022271e44c5bab0f37cbeaa61e319a7`  
		Last Modified: Mon, 09 Oct 2017 23:14:45 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c3bd8e3f469acaa7d6d6e885453d16e59e36cf3492bfeb89aa7dd242a9801`  
		Last Modified: Mon, 09 Oct 2017 23:14:44 GMT  
		Size: 925.8 KB (925795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffef1a6eca934034976bb315a34243bce6eba81c936a4f8a1a9a439e259ce26e`  
		Last Modified: Mon, 09 Oct 2017 23:14:47 GMT  
		Size: 6.6 MB (6577991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a050d704814a377515efd4b405ad52b7ad68690ca0a25ecf676ea3dbe4445c`  
		Last Modified: Mon, 09 Oct 2017 23:14:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69926664b348cea0d62157bed4d382edc3c6985f1555749e5bf5c4ef1336413`  
		Last Modified: Mon, 09 Oct 2017 23:14:42 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858329be635d0dacdb9a5cb5028d1ec3179bbf63fe3085f8986553f607efecfc`  
		Last Modified: Mon, 09 Oct 2017 23:14:56 GMT  
		Size: 56.9 MB (56944114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef326a50650b6250c9d1f932aa7bd9e5996a0942420ce72c5764e67faddf4c49`  
		Last Modified: Mon, 09 Oct 2017 23:14:39 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384c551b20bce2ca918d9e91e94a2e9935858e7c2c184f1ec30154827ac9f5a6`  
		Last Modified: Mon, 09 Oct 2017 23:14:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966a4ea9e48a537c431a8104672ccd2fa732121ff5f20f43cd03d7c0d08619c9`  
		Last Modified: Thu, 12 Oct 2017 22:04:32 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cb15c783c41022616e9e23d5b8fb0c2a22ee53856ecf9922ecd53c5743ba34`  
		Last Modified: Thu, 12 Oct 2017 22:04:31 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcf548d30da02f38774509f86ee4d9acbcb1e25781961b579e8d57cf2629a68`  
		Last Modified: Thu, 12 Oct 2017 22:04:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; s390x

```console
$ docker pull postgres@sha256:14a194ef200ae96b8590be065e0961d293c409d364b4a9870a94a04c8393c3da
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119180780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597caf70694c2cd7a7584038d4649274b6bdad595cdaed8bb4c924d9e6d008fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:19 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 12 Oct 2017 18:32:32 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 12 Oct 2017 18:32:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 12 Oct 2017 18:32:37 GMT
ENV LANG=en_US.utf8
# Thu, 12 Oct 2017 18:32:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 12 Oct 2017 18:32:40 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 12 Oct 2017 18:32:41 GMT
ENV PG_MAJOR=10
# Thu, 12 Oct 2017 18:32:41 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Thu, 12 Oct 2017 18:41:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 12 Oct 2017 18:41:29 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 12 Oct 2017 18:41:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 09:25:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:25:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:25:34 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:25:35 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:25:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:25:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:25:36 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:25:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580b731b0a91829e3df4855d46ec8d12a001049022dcd2da36ed990ec590dcb8`  
		Last Modified: Thu, 12 Oct 2017 18:41:59 GMT  
		Size: 7.3 MB (7250082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795625637722a1a0ab2d54d09382b8e45b35d67c07427809b880afd4aa30a9d5`  
		Last Modified: Thu, 12 Oct 2017 18:41:57 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca101bf238af0852d902af41b2585da17f68550ce26c21704279ef056b13640`  
		Last Modified: Thu, 12 Oct 2017 18:41:57 GMT  
		Size: 942.3 KB (942301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe9d5e7e6c89676490b9cc6445197d7255005b186cb2fb038042488b3cea746`  
		Last Modified: Thu, 12 Oct 2017 18:41:58 GMT  
		Size: 6.6 MB (6598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8403ff84b6d79c8ef4abf23486901064ffc506ed0812ab676482d22f3b86ea60`  
		Last Modified: Thu, 12 Oct 2017 18:41:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f9e9206c1cd471abcd99d63a88251e0d02897e02b09ca41d3ffe35720152ed`  
		Last Modified: Thu, 12 Oct 2017 18:41:56 GMT  
		Size: 4.5 KB (4480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ea02f93849a480b2272478b643a2e5d5c57e63a201b570819bf655058eb0d`  
		Last Modified: Thu, 12 Oct 2017 18:42:08 GMT  
		Size: 59.4 MB (59400932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad5e636bcb838f3d0eda66f31fbedaa04e9d36f6b986b5bf7bc86972f001843`  
		Last Modified: Thu, 12 Oct 2017 18:41:55 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69d91e5cdc65b6b51e1928103620b5c26300520620abf18bc2cff98cb85585f`  
		Last Modified: Thu, 12 Oct 2017 18:41:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f919d9551cca7fb0404d2575368b4146ebbe6317f9d1f2e58aaaa0bf5151ac`  
		Last Modified: Fri, 13 Oct 2017 09:26:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e09725b76c7aa12d72805620243ad694652b504e9ae1174871c0f275525531`  
		Last Modified: Fri, 13 Oct 2017 09:26:20 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af13616a2ba7d40e931f7b65548aec8ec3d953447150a076b6954f51f22ee70b`  
		Last Modified: Fri, 13 Oct 2017 09:26:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.0`

```console
$ docker pull postgres@sha256:73a1c4e98fb961bb4a5c55ad6428470a3303bd3966abc442fe937814f6bbc002
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

### `postgres:10.0` - linux; amd64

```console
$ docker pull postgres@sha256:36f2ee8f0b3239d998a7bbef1eedb1fe321ba95f11709449423e9027ef8ecadb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116995021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b106d5a0dc75f330cee9a1c9681ca674846235c04c8c084c5c9de7566990d635`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:44:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:44:13 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:44:13 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:44:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:44:30 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:44:30 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:44:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:44:41 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:44:42 GMT
ENV PG_MAJOR=10
# Tue, 10 Oct 2017 01:44:42 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Tue, 10 Oct 2017 01:45:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:45:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:45:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:03:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 12 Oct 2017 22:03:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:03:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:03:09 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:03:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:03:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:03:16 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:03:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d89ae9a47e49744bd3d4f7132219541b8a8b0256ec635dade1ce61b15eaba33`  
		Last Modified: Tue, 10 Oct 2017 01:57:06 GMT  
		Size: 7.2 MB (7218239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7726fda7efeb130ae36befad4bd86810218811b70531667453aa7fbed3c54fa`  
		Last Modified: Tue, 10 Oct 2017 01:57:04 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1838499bd8f5b0b128cb251a4989adb30f592e2c64ba4e0e906b5f6de381c3b`  
		Last Modified: Tue, 10 Oct 2017 01:57:03 GMT  
		Size: 956.6 KB (956621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ec5aa60735b62cd36bbcd1ccf8ec87bd41950dcfd819c1b2d5a03a4a385699`  
		Last Modified: Tue, 10 Oct 2017 01:57:04 GMT  
		Size: 6.6 MB (6577590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1571d7170291ace31aaefd471d6c57afb27a552307f1f584c7d79f141c2081c6`  
		Last Modified: Tue, 10 Oct 2017 01:57:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6e41e1373282c2ef96d8f7c49a92505407c9f858d6e74e7d454d4d2e371b6e`  
		Last Modified: Tue, 10 Oct 2017 01:57:02 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787e3c45a9bbc93265062c8adb43a46a62c3b205d6421e35c1e867b3f7b0c3ce`  
		Last Modified: Tue, 10 Oct 2017 01:57:21 GMT  
		Size: 57.1 MB (57097620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b234cf83b224c2f0eb7ee3e7c0afb0c76ccdeb118a741a7ead15da8a3ce2e24`  
		Last Modified: Tue, 10 Oct 2017 01:56:59 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8ad2440289b65a4e89b3e3457b3cb6f11472a507ef10a5c796567c5f5cea20`  
		Last Modified: Tue, 10 Oct 2017 01:57:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9351993374c07a38b2827cfb6b82f0cd3d1385a86033eda20a4765f1be2218ab`  
		Last Modified: Thu, 12 Oct 2017 22:06:21 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f3575e09a10212f7248a26786be287baf69814c615ae011754bd4dc2dcadc5`  
		Last Modified: Thu, 12 Oct 2017 22:06:21 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4b2ff0c3a9803735983df12dbd1d5fecfac5c736c0a491d64c87cd39b7985`  
		Last Modified: Thu, 12 Oct 2017 22:06:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.0` - linux; arm variant v5

```console
$ docker pull postgres@sha256:cb4225cb6b70b4f8ceddd27fbe11e0f2515bb1c2b6769823e51edd94a617a4d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116300377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c35332b8d743d0c3c39d0f13aa2694e17e9e16e188045dffd990233eb02572`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:09 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:37:09 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:37:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:37:41 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:37:41 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:37:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:37:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:37:46 GMT
ENV PG_MAJOR=10
# Mon, 09 Oct 2017 22:37:47 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Mon, 09 Oct 2017 22:57:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:57:40 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:57:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:38:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 06:38:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:38:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:38:31 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:38:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:38:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:38:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:38:33 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:38:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab7b14a3053922ee5271e130da109321073777964c0576f5615e9965ecd244b`  
		Last Modified: Tue, 10 Oct 2017 00:15:44 GMT  
		Size: 7.0 MB (6951777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59095f1710553ac54544021719fc2424314bb372ca4df3ab14126b720b9374b6`  
		Last Modified: Tue, 10 Oct 2017 00:15:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5445faeb0b89a64781ea63ff1cd6e0937e60ef0c429e80b3236e6553ac963de`  
		Last Modified: Tue, 10 Oct 2017 00:15:41 GMT  
		Size: 946.9 KB (946924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e0a8759c5bdfc6eab678d710d943f42e77d7479aa7174a24e68d72cf6d16e7`  
		Last Modified: Tue, 10 Oct 2017 00:15:42 GMT  
		Size: 6.6 MB (6577688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b585c51696cbf3cfd26d324fecbed5779db503c43dcf8d0d346a51f6903ec6f`  
		Last Modified: Tue, 10 Oct 2017 00:15:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752b8dfba5e2b18f8f50914f1f9575e842f8bd7ea0b2313834410e9adcef1e45`  
		Last Modified: Tue, 10 Oct 2017 00:15:40 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359dc049625858e4cc47d0efcca020632fb177d65140c2e44c2244e23ec83ae7`  
		Last Modified: Tue, 10 Oct 2017 00:15:58 GMT  
		Size: 58.0 MB (57992157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6121ffce052e30360ab410a750f1d60b08b175420238f4fbc15caa761d6a6ce7`  
		Last Modified: Tue, 10 Oct 2017 00:15:39 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb8b9740aeb7fc63bea161041f405643a95888295989e6311fe8ed2d56bd08b`  
		Last Modified: Tue, 10 Oct 2017 00:15:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86093c68be97a18d0eab7549823e778190c5ae363297bb3fea6e0dc944258821`  
		Last Modified: Fri, 13 Oct 2017 06:39:19 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e756433400883f14822d14867ea6d8328352bd559a97b47ecd7bc412bfc6da`  
		Last Modified: Fri, 13 Oct 2017 06:39:18 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10359119a90a342755c662986879f7cd42a3894fe66078866b4e3b5fddfbfc4`  
		Last Modified: Fri, 13 Oct 2017 06:39:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.0` - linux; arm variant v7

```console
$ docker pull postgres@sha256:0538df0fa4202ec0af5ed1f0a3af316916d21d8d8481a352398e0ed8c0dda82a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112233239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96443a017a99354bbe2d9f9f7eeaff1f66174a6aa0b0fea4f06aa8913be8a64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:15:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:15:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:15:16 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:16:03 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:16:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:16:12 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:16:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:16:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:16:20 GMT
ENV PG_MAJOR=10
# Mon, 09 Oct 2017 23:16:21 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Mon, 09 Oct 2017 23:33:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:33:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:33:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:38:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 03:38:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:38:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:38:36 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:38:36 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:38:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:38:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:38:38 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:38:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1c6efbcc9331f8f6e929a8661865aa2bdcc021a638f5d9dec2fa3bffff5040`  
		Last Modified: Tue, 10 Oct 2017 00:45:43 GMT  
		Size: 6.6 MB (6589449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65145d470a7b002be1d63bfb6851441910d8e986190dc5a13132d04e4638a5c1`  
		Last Modified: Tue, 10 Oct 2017 00:45:41 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e11af9f4a3cdd7ceb0348cf7c193968b8e0b2ca211d94a8486f23db23889b`  
		Last Modified: Tue, 10 Oct 2017 00:45:40 GMT  
		Size: 931.5 KB (931493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bf1485fbd609e86a1587353703dd3a17d754f09db449435b2e158ab50b6f52`  
		Last Modified: Tue, 10 Oct 2017 00:45:43 GMT  
		Size: 6.6 MB (6577687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3a6e0b9c5a6499faa147ed0c7a3474e521b7cec028a73c0884c43cbccfed4`  
		Last Modified: Tue, 10 Oct 2017 00:45:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f0b444a7cc82ed46f1eea136ec655351cc0f3d7d494dd56df0c1a3401e14ce`  
		Last Modified: Tue, 10 Oct 2017 00:45:41 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82a35f4494f2e816eb0fc098bcb371dc016e6c28e5dfa11b1ca04e3c174dd59`  
		Last Modified: Tue, 10 Oct 2017 00:45:57 GMT  
		Size: 56.3 MB (56276740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0768236164c718853c5950c4c6ed74a4b432f2eb283936dacea23a2509b818`  
		Last Modified: Tue, 10 Oct 2017 00:45:39 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941131b7ccde5f682432eb7560284ecd31740684937983f206e77da3517814f3`  
		Last Modified: Tue, 10 Oct 2017 00:45:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc12a2fececafea70951c585c8985833ad861f3b95d249ad1fc6d0a6a669ab57`  
		Last Modified: Fri, 13 Oct 2017 03:39:32 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82339404941df871d37564430d90e8695d33c095dece581a7a2758221830f3de`  
		Last Modified: Fri, 13 Oct 2017 03:39:31 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c466486be16759716b8879125b5ef2f5f163470f74ce3c37bfbc3707aaf9d4d`  
		Last Modified: Fri, 13 Oct 2017 03:39:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.0` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:2902685a85dcc0c7b450952167b0733df0b10cdf4ec10370a47b5188177d79a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114264223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb802e7af25c1eada61f1f1eae83a993f874248fbaf5aa56e6a0175b1aa021e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:07:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:07:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:07:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:07:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:07:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:07:59 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:08:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:08:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 02:08:26 GMT
ENV PG_MAJOR=10
# Tue, 10 Oct 2017 02:08:27 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Tue, 10 Oct 2017 02:45:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 02:45:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 02:45:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:21:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 14:21:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:21:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:21:17 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:21:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:21:20 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:21:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9f8576068a5c5604836a3f69915ddcd4be4ae798cac855e2cdbf0008a172f2`  
		Last Modified: Tue, 10 Oct 2017 05:16:38 GMT  
		Size: 6.8 MB (6793318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73d563f6d23c97f2f50e830a257e9e1fd4cf35fcacf8c33ce654cb35448388f`  
		Last Modified: Tue, 10 Oct 2017 05:16:32 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2285a265375b62f306cfe648343bfb75839066711579eee66c4d6e736c263f07`  
		Last Modified: Tue, 10 Oct 2017 05:16:31 GMT  
		Size: 924.2 KB (924231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6c8967d461a5b23f955475c1495d72e283ea536de734485136280a991390b8`  
		Last Modified: Tue, 10 Oct 2017 05:16:41 GMT  
		Size: 6.6 MB (6577579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efd893438caddb6c6ce49749c9f480605e8ddffd5e103f3f4d6aa1013f52999`  
		Last Modified: Tue, 10 Oct 2017 05:16:29 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a75b8869bbbf2709fa0b01fb9fafb2b32e3e0f5b2ccf657fdc78d7b366f6eae`  
		Last Modified: Tue, 10 Oct 2017 05:16:29 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09653c00afa5d42138b9c405eedd4713df4a38aecd16e03d797d7a4658b4a2de`  
		Last Modified: Tue, 10 Oct 2017 05:16:49 GMT  
		Size: 57.0 MB (57041496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad96a5420d8e414cae459b514990a5e8c1cf81c2afe8783d9a0cfc7236e308`  
		Last Modified: Tue, 10 Oct 2017 05:16:26 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a4977694013acc26fbcba55cfd62f22e818631fe7898a5116cc40877151409`  
		Last Modified: Tue, 10 Oct 2017 05:16:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e74c3e0fa9bbe42eee39ca2f62eaa34ea627b9d243d4bf0930afbc61804f21`  
		Last Modified: Fri, 13 Oct 2017 14:23:02 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66981de64eec8ee2be61f79811d3100153b1149892fdae7cd3037ebc14768c78`  
		Last Modified: Fri, 13 Oct 2017 14:23:02 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1eaef7b99ba60f903ceef61c5a45752717948bb2679fe2bedd17d406ea32f22`  
		Last Modified: Fri, 13 Oct 2017 14:23:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.0` - linux; 386

```console
$ docker pull postgres@sha256:aa7a8d5992b978aa09b9d2960a569951abd51d79eb3d677841cca2fef0af12b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119062504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76212e33ee446983dbba0ce14fd59609f5144ea8e81ab8ff95b852d60f1e3b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:05:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:05:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:05:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:05:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:06:00 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:06:00 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:06:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:06:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:06:13 GMT
ENV PG_MAJOR=10
# Tue, 10 Oct 2017 00:06:13 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Tue, 10 Oct 2017 00:06:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:06:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:06:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:04:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 14:04:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:04:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:04:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:04:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:00 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b4fadb286da2948bf4dca37ecfa555137df90fb799c2be1e702104ebbad756`  
		Last Modified: Tue, 10 Oct 2017 00:25:54 GMT  
		Size: 7.5 MB (7523051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40faa17b7b96c62a8f7373316678a8e921649047d1b81b780e54be9e1f7d755`  
		Last Modified: Tue, 10 Oct 2017 00:25:52 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527cff2d6a5969ffca49617dc69fc64586594f3510c3d67347300c4458fafa70`  
		Last Modified: Tue, 10 Oct 2017 00:25:51 GMT  
		Size: 936.4 KB (936449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa5544652d3c5e2a2f8e2e612475983234a72dadb6b63be74c8522cd7954533`  
		Last Modified: Tue, 10 Oct 2017 00:25:53 GMT  
		Size: 6.6 MB (6577723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521ffb842fcecbbd419e36dbc064f775cd2db813d840ad16e3c0a6fcd74c1066`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19007f5615837d55bac93c825868ab9283bd787d2edb4daf3caf87d76dd2c74f`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5206cda6c2fda7fe66c46b6f10e89bd26a6d144f8b253971526cf50fd624abff`  
		Last Modified: Tue, 10 Oct 2017 00:26:05 GMT  
		Size: 58.2 MB (58175746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b0cad4d361da8b3ac6ae066eaa28f25071cb3a480e57927daa5043b70bb1d4`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc293bdd2f377fe5f0ce6039965c73ebef9f25daf633fbccf823c3106dad153`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ad1c48ad321d76b9b22f9cf06a06d8e420fae56f368783a30fea65336c4b22`  
		Last Modified: Fri, 13 Oct 2017 14:05:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ca448e367fff1b590abf5b624df086754b7497c113dbafdf8f153291c2e76b`  
		Last Modified: Fri, 13 Oct 2017 14:05:44 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7e40a10d539be72071d5b086b18b55cb49feb1f51811e2a8fd5384a2affde9`  
		Last Modified: Fri, 13 Oct 2017 14:05:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.0` - linux; ppc64le

```console
$ docker pull postgres@sha256:3ad1b42ad6667212e77827c600fbd7ec1948efb6e29c6c3354de3cf9a7cc76b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116923315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690957f16fdddca9615b4718edbd0201ec656df0fa9ce5d277206ed29b1e8561`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:02:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:03:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:03:05 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:04:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:04:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:04:45 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:04:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:04:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:05:02 GMT
ENV PG_MAJOR=10
# Mon, 09 Oct 2017 22:05:03 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Mon, 09 Oct 2017 22:10:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:10:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:10:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 12 Oct 2017 22:01:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:01:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:01:37 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:01:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:01:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:01:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:01:51 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:01:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d839649481df99bf5d1a492dc70351e6c1b9db302762a083ef3c0435aa7fdc70`  
		Last Modified: Mon, 09 Oct 2017 23:14:48 GMT  
		Size: 7.1 MB (7081113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ddd670b3ea2e7a14c1f72057bc98b0f6022271e44c5bab0f37cbeaa61e319a7`  
		Last Modified: Mon, 09 Oct 2017 23:14:45 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c3bd8e3f469acaa7d6d6e885453d16e59e36cf3492bfeb89aa7dd242a9801`  
		Last Modified: Mon, 09 Oct 2017 23:14:44 GMT  
		Size: 925.8 KB (925795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffef1a6eca934034976bb315a34243bce6eba81c936a4f8a1a9a439e259ce26e`  
		Last Modified: Mon, 09 Oct 2017 23:14:47 GMT  
		Size: 6.6 MB (6577991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a050d704814a377515efd4b405ad52b7ad68690ca0a25ecf676ea3dbe4445c`  
		Last Modified: Mon, 09 Oct 2017 23:14:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69926664b348cea0d62157bed4d382edc3c6985f1555749e5bf5c4ef1336413`  
		Last Modified: Mon, 09 Oct 2017 23:14:42 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858329be635d0dacdb9a5cb5028d1ec3179bbf63fe3085f8986553f607efecfc`  
		Last Modified: Mon, 09 Oct 2017 23:14:56 GMT  
		Size: 56.9 MB (56944114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef326a50650b6250c9d1f932aa7bd9e5996a0942420ce72c5764e67faddf4c49`  
		Last Modified: Mon, 09 Oct 2017 23:14:39 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384c551b20bce2ca918d9e91e94a2e9935858e7c2c184f1ec30154827ac9f5a6`  
		Last Modified: Mon, 09 Oct 2017 23:14:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966a4ea9e48a537c431a8104672ccd2fa732121ff5f20f43cd03d7c0d08619c9`  
		Last Modified: Thu, 12 Oct 2017 22:04:32 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cb15c783c41022616e9e23d5b8fb0c2a22ee53856ecf9922ecd53c5743ba34`  
		Last Modified: Thu, 12 Oct 2017 22:04:31 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcf548d30da02f38774509f86ee4d9acbcb1e25781961b579e8d57cf2629a68`  
		Last Modified: Thu, 12 Oct 2017 22:04:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.0` - linux; s390x

```console
$ docker pull postgres@sha256:14a194ef200ae96b8590be065e0961d293c409d364b4a9870a94a04c8393c3da
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119180780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597caf70694c2cd7a7584038d4649274b6bdad595cdaed8bb4c924d9e6d008fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:19 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 12 Oct 2017 18:32:32 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 12 Oct 2017 18:32:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 12 Oct 2017 18:32:37 GMT
ENV LANG=en_US.utf8
# Thu, 12 Oct 2017 18:32:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 12 Oct 2017 18:32:40 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 12 Oct 2017 18:32:41 GMT
ENV PG_MAJOR=10
# Thu, 12 Oct 2017 18:32:41 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Thu, 12 Oct 2017 18:41:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 12 Oct 2017 18:41:29 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 12 Oct 2017 18:41:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 09:25:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:25:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:25:34 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:25:35 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:25:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:25:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:25:36 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:25:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580b731b0a91829e3df4855d46ec8d12a001049022dcd2da36ed990ec590dcb8`  
		Last Modified: Thu, 12 Oct 2017 18:41:59 GMT  
		Size: 7.3 MB (7250082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795625637722a1a0ab2d54d09382b8e45b35d67c07427809b880afd4aa30a9d5`  
		Last Modified: Thu, 12 Oct 2017 18:41:57 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca101bf238af0852d902af41b2585da17f68550ce26c21704279ef056b13640`  
		Last Modified: Thu, 12 Oct 2017 18:41:57 GMT  
		Size: 942.3 KB (942301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe9d5e7e6c89676490b9cc6445197d7255005b186cb2fb038042488b3cea746`  
		Last Modified: Thu, 12 Oct 2017 18:41:58 GMT  
		Size: 6.6 MB (6598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8403ff84b6d79c8ef4abf23486901064ffc506ed0812ab676482d22f3b86ea60`  
		Last Modified: Thu, 12 Oct 2017 18:41:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f9e9206c1cd471abcd99d63a88251e0d02897e02b09ca41d3ffe35720152ed`  
		Last Modified: Thu, 12 Oct 2017 18:41:56 GMT  
		Size: 4.5 KB (4480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ea02f93849a480b2272478b643a2e5d5c57e63a201b570819bf655058eb0d`  
		Last Modified: Thu, 12 Oct 2017 18:42:08 GMT  
		Size: 59.4 MB (59400932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad5e636bcb838f3d0eda66f31fbedaa04e9d36f6b986b5bf7bc86972f001843`  
		Last Modified: Thu, 12 Oct 2017 18:41:55 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69d91e5cdc65b6b51e1928103620b5c26300520620abf18bc2cff98cb85585f`  
		Last Modified: Thu, 12 Oct 2017 18:41:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f919d9551cca7fb0404d2575368b4146ebbe6317f9d1f2e58aaaa0bf5151ac`  
		Last Modified: Fri, 13 Oct 2017 09:26:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e09725b76c7aa12d72805620243ad694652b504e9ae1174871c0f275525531`  
		Last Modified: Fri, 13 Oct 2017 09:26:20 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af13616a2ba7d40e931f7b65548aec8ec3d953447150a076b6954f51f22ee70b`  
		Last Modified: Fri, 13 Oct 2017 09:26:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.0-alpine`

```console
$ docker pull postgres@sha256:155e0c5a077947a886c6af3a68b4feff14c91d9e5946f16a25b4bbab81efc58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10.0-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:c272bb77c3c29063de59b968b5469b9d6fe715778515aa959936aac2579defb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14352066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5dcfe010b3e326df4be42c8e3bc772b6bad07393826fe364b832cf7ce4ec704`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:29:26 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:29:26 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:29:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_MAJOR=10
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_VERSION=10.0
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_SHA256=712f5592e27b81c5b454df96b258c14d94b6b03836831e015c65d6deeae57fd1
# Thu, 26 Oct 2017 02:31:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:36:22 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:36:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:36:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:36:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:36:23 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:36:24 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:36:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:36:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:36:25 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:36:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f78960b1ff7ba58dc829a2527fe6fd833775dc07d3c8b4edf0f6b1afd98e85`  
		Last Modified: Thu, 26 Oct 2017 02:58:15 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a941631c705f3f6cdb43afe8b24d6ff4ff18419841fb2b64c9714683bcaf6b`  
		Last Modified: Thu, 26 Oct 2017 02:58:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a38a77554d5a4767b7746cbb9024f69dcfa567d056efe1a376829b2fcdfed76`  
		Last Modified: Thu, 26 Oct 2017 02:58:24 GMT  
		Size: 12.4 MB (12350858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f4d638f9f5d714481621d02496d21e62f6829d86ce0c9ac763ff8a85bbae29`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fa56e3a8f6c2f2575cca393637ae5b8b9dd929beb4b36034126a71d010fbce`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb4d89b1ac4951a65c57fbce576fdac1ef5922357f31b1e8f7208cdd55c0a56`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3086735e41846d87c6f6a7d0f84688214641d28795315b1004be8d20b10b6da`  
		Last Modified: Thu, 26 Oct 2017 02:58:12 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c457d5fffc9eb9183235c18a07407f112f8b410291adf435d0d0a5ae9f01284f`  
		Last Modified: Thu, 26 Oct 2017 02:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:155e0c5a077947a886c6af3a68b4feff14c91d9e5946f16a25b4bbab81efc58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:c272bb77c3c29063de59b968b5469b9d6fe715778515aa959936aac2579defb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14352066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5dcfe010b3e326df4be42c8e3bc772b6bad07393826fe364b832cf7ce4ec704`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:29:26 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:29:26 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:29:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_MAJOR=10
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_VERSION=10.0
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_SHA256=712f5592e27b81c5b454df96b258c14d94b6b03836831e015c65d6deeae57fd1
# Thu, 26 Oct 2017 02:31:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:36:22 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:36:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:36:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:36:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:36:23 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:36:24 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:36:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:36:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:36:25 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:36:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f78960b1ff7ba58dc829a2527fe6fd833775dc07d3c8b4edf0f6b1afd98e85`  
		Last Modified: Thu, 26 Oct 2017 02:58:15 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a941631c705f3f6cdb43afe8b24d6ff4ff18419841fb2b64c9714683bcaf6b`  
		Last Modified: Thu, 26 Oct 2017 02:58:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a38a77554d5a4767b7746cbb9024f69dcfa567d056efe1a376829b2fcdfed76`  
		Last Modified: Thu, 26 Oct 2017 02:58:24 GMT  
		Size: 12.4 MB (12350858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f4d638f9f5d714481621d02496d21e62f6829d86ce0c9ac763ff8a85bbae29`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fa56e3a8f6c2f2575cca393637ae5b8b9dd929beb4b36034126a71d010fbce`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb4d89b1ac4951a65c57fbce576fdac1ef5922357f31b1e8f7208cdd55c0a56`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3086735e41846d87c6f6a7d0f84688214641d28795315b1004be8d20b10b6da`  
		Last Modified: Thu, 26 Oct 2017 02:58:12 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c457d5fffc9eb9183235c18a07407f112f8b410291adf435d0d0a5ae9f01284f`  
		Last Modified: Thu, 26 Oct 2017 02:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:318757ed6291e6a1ef86312ac453b9b4a67b48495b59ca2dece909cb0c688c53
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
$ docker pull postgres@sha256:f2233fcd705f396694ffbb3ce9b6491aad57c814b5d4892f4409b934ec8b72cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104118983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d7834a2df3a323807d0b97aba3230c2ed7f41f990c971ebf78442649d814aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:45:23 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:45:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:46:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:46:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:46:37 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:46:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:46:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:46:46 GMT
ENV PG_MAJOR=9.6
# Tue, 10 Oct 2017 01:46:46 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Tue, 10 Oct 2017 01:47:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:47:58 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:47:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:03:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 12 Oct 2017 22:03:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:03:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:03:55 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:03:55 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:03:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:04:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:04:01 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:04:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f30b0e3b3b9a6ad13b6c7146d5356b0022c19552b092584af5826867f0651fc`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe77d699370afccc90ead8288bd77dccc002b736cd359e99e968ca637b9a2bcf`  
		Last Modified: Tue, 10 Oct 2017 01:57:51 GMT  
		Size: 985.1 KB (985140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2dc1dca46bb95661f36d38d6f0f612c71a0bc784444af164b752fa852e707e`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 7.1 MB (7112916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355ccacf41c56e595a2c71e18414f06b44a5f783fe0ec22b3053d5e6740f9f55`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b1581b93b4f4a794f1f8ca9ff1ac175d25c2d88b929d3824e8b9b43c537fe`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2750bfbf9e9260271295499c62d53dd71afaa41912bcc16e6154d7343f378`  
		Last Modified: Tue, 10 Oct 2017 01:58:08 GMT  
		Size: 43.4 MB (43409772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53d44bda70c0a76b7e06fcc294bcc03a3c287c37cb589571319c5f04404c9e4`  
		Last Modified: Tue, 10 Oct 2017 01:57:48 GMT  
		Size: 7.1 KB (7102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434e93d2134c757e65fc6526c82106d0bf5333345cf766e7a6e01a91ef537ccc`  
		Last Modified: Tue, 10 Oct 2017 01:57:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e045e82a2f26da72de39ce4068005b7508a66a3614e16e93376c2fdf145bba1d`  
		Last Modified: Thu, 12 Oct 2017 22:07:36 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a67efda883b947993487bdbc0d19d702850d794cbc1fb1c1f532fc52b678b03`  
		Last Modified: Thu, 12 Oct 2017 22:07:36 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c883ae91b811df84c6c378439886e5cfdce1af6af747dadb10a54f30f55d1c`  
		Last Modified: Thu, 12 Oct 2017 22:07:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v5

```console
$ docker pull postgres@sha256:3164e29fe5a42d18c71aa71775501474fb496521a6e15c12d93801047fc77f2e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96589634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ffdd68675a8a105b922ef13d834f761448ef96f4ebded279a390d17ea2641b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:57:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:57:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:57:59 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:58:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:59:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:59:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:59:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:59:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:59:44 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 22:59:44 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 23:20:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:20:21 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:20:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:38:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 06:38:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:38:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:38:40 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:38:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:38:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:38:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:38:41 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:38:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f2ea4c35241e9c0d1e612a52e13531a3038fd1d613ccff10f323dbe9977408`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8820953bbb96c5191977d54f962b3147a124c2713b4575f6feeffd1fe7c49f`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 974.6 KB (974649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ded5820b04e0af13a27b346ad4482b18ad0accae84ec9f47c53853c6f8d6d8`  
		Last Modified: Tue, 10 Oct 2017 00:16:16 GMT  
		Size: 7.1 MB (7112800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be442bd996b1c7dde35df775e18f56c9d6d82cfb24d2c1dcf7bdc6d4506a5e47`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790432ad2fedb6ed859cb022b531be4c7264e3f0564322c93b9a86309481919`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d62f5d58db7138001c21f6d62ed538dfe19a7cb8fcc93467db88e687e4e8631`  
		Last Modified: Tue, 10 Oct 2017 00:16:25 GMT  
		Size: 37.6 MB (37606204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992a0d975ab8b34a21a6672cbd2a29b7be3c15198b8b7f4fd6f2a4d2930fc08c`  
		Last Modified: Tue, 10 Oct 2017 00:16:11 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e880913788d1d2eee60d47f812d6e5399067ca0b21b0bfd8467727051992fc`  
		Last Modified: Tue, 10 Oct 2017 00:16:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff252d609a2eba0d5de59b01c8bfbe5d32610fcba5f5ba5df14649935700e1`  
		Last Modified: Fri, 13 Oct 2017 06:39:33 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a66b05389a6223ff7b6930f2d7b8121b4ed21cb291e1b97e9e422e7ad724444`  
		Last Modified: Fri, 13 Oct 2017 06:39:32 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0af11fd2e86582a660e8761d853e5c901f993f3a70c2ce15fbaa933e712959`  
		Last Modified: Fri, 13 Oct 2017 06:39:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v7

```console
$ docker pull postgres@sha256:e62caf43b8ca0de28479165f9c9b1a94e3d1ea14edcad237c091a68b256386f3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93183748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac721121fecb995d01042babe07464ed5130a5284f1e679882c120a2dfdaa36b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:33:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:33:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:33:52 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:34:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:35:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:35:19 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:35:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:35:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:35:29 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 23:35:29 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 23:53:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:53:40 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:53:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:38:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 03:38:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:38:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:38:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:38:47 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:38:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:38:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:38:49 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:38:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e796fed7e772e65e95ed4c8f0089c9c0a6ee0e98c85189b7bafbcc47de0aee`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953f0e725d183cb5a74c0e2daab0224ed4045eb55967bf6179f6176cc57e74e`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 959.5 KB (959478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371a1407f29895404ec62d6f3e6c2885aa84f261a14ae415b29541f52278f4e4`  
		Last Modified: Tue, 10 Oct 2017 00:46:20 GMT  
		Size: 7.1 MB (7112846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fb6412c8826b372095343b6942a570850ae08c66652750fc8842bf955bf34`  
		Last Modified: Tue, 10 Oct 2017 00:46:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3fe6e8cb381f129f9c7cbfff277a94ef945be8764bead6874d488a46adfdf0`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a7eeb642144c116dd12ed853f702a1298f657ac5836975e934b55c8abec17`  
		Last Modified: Tue, 10 Oct 2017 00:46:32 GMT  
		Size: 36.4 MB (36409025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e5992bcaec9861b5334fd494adc685d8ac38c9879a72c47ce0b1205b80ee43`  
		Last Modified: Tue, 10 Oct 2017 00:46:15 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090778b5f1186cc64a7d0ba553b281e38da4d6495d01ccf5cf9d28aafcc928c3`  
		Last Modified: Tue, 10 Oct 2017 00:46:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af32ceb68f0dbd9fdf7f92dd55e93fba3e635b894075c930dba1e643d4b48db`  
		Last Modified: Fri, 13 Oct 2017 03:39:53 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e102b1f694cc2711b6e42bf56b9b282258c6480b89870ba993a6adb8877d1db8`  
		Last Modified: Fri, 13 Oct 2017 03:39:53 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3823ba1090129ff8b1fed08fe9f9a751c4ff200995a9c8d11a50235653dd2e1`  
		Last Modified: Fri, 13 Oct 2017 03:39:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:8c6897bb55366ad64c2c3923acb172471aa349e867570a81e817937d63b3d16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95156932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfbe7fd4d6a46c28e71649d6e6c236007decf51e87fe5b88dfe750d4a29d6cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:46:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:46:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:46:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:48:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:48:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:48:52 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:48:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:48:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 02:49:00 GMT
ENV PG_MAJOR=9.6
# Tue, 10 Oct 2017 02:49:01 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Tue, 10 Oct 2017 03:30:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 03:30:15 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 03:30:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:21:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 14:21:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:21:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:21:37 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:21:37 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:21:40 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:21:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d269ac3366aed392a2a44b85beade574131d53ba59160192a6b0b260530bfd78`  
		Last Modified: Tue, 10 Oct 2017 05:17:42 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7096c714db8e8e099b8fd5bd0fabc9cd768e602ceac3a221d6fe6e088fbc123f`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 952.0 KB (952017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051485f6d630f721f32a814324f208ac476b291d66688d3a8478c9f0692f7b17`  
		Last Modified: Tue, 10 Oct 2017 05:17:44 GMT  
		Size: 7.1 MB (7112960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc74eb62f3b0d967a9cded11bb78bf4e0831d184b65657cb1aa11c219c4a58c6`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf385dd31a98a4aee7da147c97929b09d9ed7ad8475cf090d8b10e3ddb4205c`  
		Last Modified: Tue, 10 Oct 2017 05:17:40 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25580eeedc5e1c8c5c79d552325c4fb8b675920a86e1fd55254ef14af04c970e`  
		Last Modified: Tue, 10 Oct 2017 05:17:55 GMT  
		Size: 37.1 MB (37146608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d853c44725bb744ca827ec7856d83ed34b8836bee18842b21ffaf961e54e51f2`  
		Last Modified: Tue, 10 Oct 2017 05:17:37 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16fefe55ce9240278947fad1626c668dfd879e38f738cff2e9d416a73d5e2cc`  
		Last Modified: Tue, 10 Oct 2017 05:17:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8133f7773ca276c67bfc31e8ff3657587eb5fdde7f666fe8fec451c97ae249cd`  
		Last Modified: Fri, 13 Oct 2017 14:23:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e620fb024ee50b36b9458f643a09f8347f53dbede2f0cea78da45c350d08d4de`  
		Last Modified: Fri, 13 Oct 2017 14:23:43 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd4de48096ff9ff3cad446cdb82ebaf84c3ed4cbb6ecaa2358d703170569f89`  
		Last Modified: Fri, 13 Oct 2017 14:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; 386

```console
$ docker pull postgres@sha256:8cfbffb070719556f942302a1e96f3a05e67c85780c33fdad920a2484c2327bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106085954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db00a385ee2a383204811e80412cc0ab903ea829831d4ba92485ccd2b67b02e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:07:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:07:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:07:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:07:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:08:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:08:21 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:08:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:08:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:08:31 GMT
ENV PG_MAJOR=9.6
# Tue, 10 Oct 2017 00:08:31 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Tue, 10 Oct 2017 00:10:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:10:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:10:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:05:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 14:05:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:05:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:05:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:05:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:09 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1f516577d1143f05867c50ef1dbd146eee37bacc4512b8cc5edf667b8d7ec7`  
		Last Modified: Tue, 10 Oct 2017 00:27:34 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a01dc90ae2171a283eba2cba23263a5a9e449aaf50e22ab8f7373f213d97af`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 964.0 KB (964035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179a5434e549ef3dfc9b6ba8457e785ba25f645345cd91608d31535a137ab0c1`  
		Last Modified: Tue, 10 Oct 2017 00:27:36 GMT  
		Size: 7.1 MB (7112843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa700e01475a1430c730f7e21c0da3d7f887479d09ab1773c6aee4b09cef390`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495faa146ca9a1ed49c7876730103e9942be34d73cc682278592197d68e3d18`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fbcb6b07a3fbfbbf598a74b3dfecd8fdd52872818cd01bb2f68ea43039b00d`  
		Last Modified: Tue, 10 Oct 2017 00:27:46 GMT  
		Size: 45.2 MB (45219202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679704cbee6eb4fdbe4907bc3b332cde6e83fe9e90778aaf519c0250f8f62521`  
		Last Modified: Tue, 10 Oct 2017 00:27:32 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12c1e84c708d9ca4204ed6d0bb66e6bfc124c0970d917982cfa7e07d659b14a`  
		Last Modified: Tue, 10 Oct 2017 00:27:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d2c22b4697905841a462ff2373e1e1ab953fbe47418859b5887b39af793ed9`  
		Last Modified: Fri, 13 Oct 2017 14:06:06 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f141f73849d4cf6a6d28359603deb1d596696d288daca478210c7656ac72c8`  
		Last Modified: Fri, 13 Oct 2017 14:06:06 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1843edbda5707175c343c794ef7a2d87e093f087d4dcd5b618cf429826ad5f87`  
		Last Modified: Fri, 13 Oct 2017 14:06:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; ppc64le

```console
$ docker pull postgres@sha256:9ae0bce79139298b27e5bdc24c22a973b8894827ebe1e60128290b3a5a009ba4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102326310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed146a87abe16bedf146f4edc1bf47702c3d4932e2ef73f21835071cd4b8e381`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:11:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:11:45 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:15:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:16:25 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:16:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:16:50 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 22:16:52 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 22:28:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:28:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:28:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:02:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 12 Oct 2017 22:02:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:02:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:02:14 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:02:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:02:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:02:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:02:27 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:02:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6feeb37ce73a99209c70d76f88e2b8b98cc2dac509c0754ddf2992b949385e`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16860618575e311bce20466618cd71e379c0701571ba3c10a6ff7e138e882c9`  
		Last Modified: Mon, 09 Oct 2017 23:15:24 GMT  
		Size: 954.4 KB (954439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c5cbb229f9685c6de4348c4e53309a3f77880ac45bc144e2470c7b06e6155c`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 7.1 MB (7113381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4a7d0cc16d3392c10e725e66633f7348aac1d62300392ff7ad1322a9dad095`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d92e50c20e7f0d4bdee28d72b59ea1b1f193fe6a72c6dcb34f597b277f5ec`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478d1f463ec7e0a57fc10565e71024ac8ab8626ad8613a688fc571073ad3a4d`  
		Last Modified: Mon, 09 Oct 2017 23:15:32 GMT  
		Size: 42.4 MB (42432653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9af423a6f6239e0ff35d1b612561c69152073fea6a33901f3772a5a1926e208`  
		Last Modified: Mon, 09 Oct 2017 23:15:18 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743fffed80d55063b66af11ee298b7ef0c0fa3015a619cec52e60eb9d7a3b50e`  
		Last Modified: Mon, 09 Oct 2017 23:15:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b453a1e80cbd3bb00a6a965eca994fcea25596d5cb59e21bdf914cabc5deb`  
		Last Modified: Thu, 12 Oct 2017 22:04:55 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cb8b42809cf72d2e0dc2568dac64a6600b0f688ecedd156a4000da86f2ae9d`  
		Last Modified: Thu, 12 Oct 2017 22:04:56 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914e4a590217444849c243951b7a1172e38de757513fa919f78563ebf7029a01`  
		Last Modified: Thu, 12 Oct 2017 22:04:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; s390x

```console
$ docker pull postgres@sha256:cd7d0febae25381f39fe470536390395acc66e2037bf65cfa1f7350d28f95942
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100568219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6759a01cb8b47f700e002945296dd514c30514f76881fadf5c8f9febce9ccb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:07:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:07:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:07:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:07:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:07:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:07:32 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 23:07:33 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 23:16:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:16:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:16:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:25:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 09:25:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:25:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:25:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:25:43 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:25:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:25:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:25:44 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:25:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6047e028c2374e4b2f2846f6e23506d6424d8ce67a2a973e57d005007a2da1b`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e4246c65d329e68db93b3669fcff5a15f212ff2b5983b19592090694b35f8`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 970.2 KB (970247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c307cff99a2946ae5c9f303ffa4ca390f1596e36d1d2a6aa9552446c652396`  
		Last Modified: Mon, 09 Oct 2017 23:43:21 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1942f0fc876a052768b69b3c959cf244aac0cb99d22b3fee650772edcd2c3426`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35245b24c4e062e2e7ccfd64b259f04526c2c6b43ef44254f2960f555eca65`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ad1b1e3a683e9dffcb535b310fabfe94eeed64407185344970b11360ad6215`  
		Last Modified: Mon, 09 Oct 2017 23:43:28 GMT  
		Size: 39.7 MB (39661894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7ef37b24c545a4f274937db76e5998cf82d97e7474d4601a6645c7c87690fd`  
		Last Modified: Mon, 09 Oct 2017 23:43:18 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0965a4c8053599eeae5a0c830e2cada2ca0a873962b95572e6d9df508ba7e4cf`  
		Last Modified: Mon, 09 Oct 2017 23:43:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361510b4570375fa9bf3dc36883faba2f896d7a80f52515cdcfae64c3f4f7571`  
		Last Modified: Fri, 13 Oct 2017 09:26:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d595a0db3eea49804541de474554f703b4db6e7522e22052632078dec878acf3`  
		Last Modified: Fri, 13 Oct 2017 09:26:34 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748dfa5cee4df755122df10dda733d79a41bc66ae5898ae4fa71e6859f640553`  
		Last Modified: Fri, 13 Oct 2017 09:26:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:7b85113a7c1e231bd327248699a32e3b62fc7c2ea155e257341a9039cf2b1242
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
$ docker pull postgres@sha256:2c7158a572f77134f801695524118ce1b2f8dc6f959507b303f65fc73b8be0af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102867442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffce5b1cb222bde8af46650eb548897a1e39e3fa067bdc7f7bccf5b271c589c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:45:23 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:45:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:46:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:46:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:46:37 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:46:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:46:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:51:32 GMT
ENV PG_MAJOR=9.3
# Tue, 10 Oct 2017 01:51:32 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 10 Oct 2017 01:52:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:52:44 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:52:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:05:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 12 Oct 2017 22:05:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:05:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:05:55 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:05:55 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:05:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:05:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:05:57 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:05:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f30b0e3b3b9a6ad13b6c7146d5356b0022c19552b092584af5826867f0651fc`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe77d699370afccc90ead8288bd77dccc002b736cd359e99e968ca637b9a2bcf`  
		Last Modified: Tue, 10 Oct 2017 01:57:51 GMT  
		Size: 985.1 KB (985140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2dc1dca46bb95661f36d38d6f0f612c71a0bc784444af164b752fa852e707e`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 7.1 MB (7112916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355ccacf41c56e595a2c71e18414f06b44a5f783fe0ec22b3053d5e6740f9f55`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b1581b93b4f4a794f1f8ca9ff1ac175d25c2d88b929d3824e8b9b43c537fe`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7c9cfe51a6bf47c6ff083fb07026f0092a6bcee372aaabe5a36d1900e87b7b`  
		Last Modified: Tue, 10 Oct 2017 02:00:39 GMT  
		Size: 42.2 MB (42158822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f843fa4362277550c80c87ee84ae77ec13f6b3a9861b044c311c27f087394d5`  
		Last Modified: Tue, 10 Oct 2017 02:00:23 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac037a825db073ed9b5125729ad9ef8fe4cc94e62c62091b3ecfa79fb882d313`  
		Last Modified: Tue, 10 Oct 2017 02:00:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8c28329cba0efb453845f73db3db8d7071621eb8b85437d42fcde01e2ac55`  
		Last Modified: Thu, 12 Oct 2017 22:10:46 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fabac2151c818f4313caf828acde6e3f02148a51d52e6134f6265ef2eb808b`  
		Last Modified: Thu, 12 Oct 2017 22:10:46 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f433abbec773492fdc1ea3d193f47d57648dcc148aa10f8f7a818911b0be5c60`  
		Last Modified: Thu, 12 Oct 2017 22:10:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm variant v5

```console
$ docker pull postgres@sha256:8d223e93e129398f828443b44ba6ca1c4100f75cd1aa6c6cd2544530530b2b82
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95401790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2d244afd58d005967d105b9bfa634406f09845dc316b30e7973b79f768efe9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:57:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:57:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:57:59 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:58:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:59:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:59:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:59:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:59:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:57:56 GMT
ENV PG_MAJOR=9.3
# Mon, 09 Oct 2017 23:57:56 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 10 Oct 2017 00:15:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:15:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:15:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:39:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 13 Oct 2017 06:39:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:39:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:39:06 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:39:06 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:39:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:39:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:39:07 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:39:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f2ea4c35241e9c0d1e612a52e13531a3038fd1d613ccff10f323dbe9977408`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8820953bbb96c5191977d54f962b3147a124c2713b4575f6feeffd1fe7c49f`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 974.6 KB (974649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ded5820b04e0af13a27b346ad4482b18ad0accae84ec9f47c53853c6f8d6d8`  
		Last Modified: Tue, 10 Oct 2017 00:16:16 GMT  
		Size: 7.1 MB (7112800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be442bd996b1c7dde35df775e18f56c9d6d82cfb24d2c1dcf7bdc6d4506a5e47`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790432ad2fedb6ed859cb022b531be4c7264e3f0564322c93b9a86309481919`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6020814d8bf942b07860c96dd81337a29da943fcc4023a92a6ba103f75e86ccc`  
		Last Modified: Tue, 10 Oct 2017 00:17:36 GMT  
		Size: 36.4 MB (36418960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb1ea8b1f1fb4ef66b394404bed63c19b7781a84b21fe53819314baf4690ef1`  
		Last Modified: Tue, 10 Oct 2017 00:17:23 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e915b9ea38080b5c4c550d6aa59b2a83906c6ad7f7a1a26f6aed59d3077bc0e0`  
		Last Modified: Tue, 10 Oct 2017 00:17:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0755027797c79411a44365de6503fd66ed35818534cbd5e667451d7cb31805fb`  
		Last Modified: Fri, 13 Oct 2017 06:40:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d2904f6e7efa4f042cbb20ff5eb3025f1e6db68dcc545236ef2d31bd2122`  
		Last Modified: Fri, 13 Oct 2017 06:40:06 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf02587424db72bb824c47da7496171b5517c7f435da003693849f0d1fe7c28`  
		Last Modified: Fri, 13 Oct 2017 06:40:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm variant v7

```console
$ docker pull postgres@sha256:b78ea5150a223c0fbeddbc7ea99baf0f49a4a770e7b5d6b0b721be25fbcb9561
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92054574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e3102437f29a00ce76d551f646a97546a67da6d2ec6adc2f00d95dc325c35b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:33:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:33:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:33:52 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:34:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:35:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:35:19 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:35:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:35:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:28:06 GMT
ENV PG_MAJOR=9.3
# Tue, 10 Oct 2017 00:28:06 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 10 Oct 2017 00:45:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:45:06 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:45:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:39:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 13 Oct 2017 03:39:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:39:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:39:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:39:19 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:39:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:39:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:39:20 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:39:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e796fed7e772e65e95ed4c8f0089c9c0a6ee0e98c85189b7bafbcc47de0aee`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953f0e725d183cb5a74c0e2daab0224ed4045eb55967bf6179f6176cc57e74e`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 959.5 KB (959478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371a1407f29895404ec62d6f3e6c2885aa84f261a14ae415b29541f52278f4e4`  
		Last Modified: Tue, 10 Oct 2017 00:46:20 GMT  
		Size: 7.1 MB (7112846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fb6412c8826b372095343b6942a570850ae08c66652750fc8842bf955bf34`  
		Last Modified: Tue, 10 Oct 2017 00:46:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3fe6e8cb381f129f9c7cbfff277a94ef945be8764bead6874d488a46adfdf0`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42cf17745e496ec9146e1866bfcfb9c5eb9a31639599bd991bec4a6b71c8111`  
		Last Modified: Tue, 10 Oct 2017 00:47:52 GMT  
		Size: 35.3 MB (35280457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa183549703b860af07173521155d7e3c6e8166c15ddc44f3c5044e36db77eb`  
		Last Modified: Tue, 10 Oct 2017 00:47:39 GMT  
		Size: 6.5 KB (6504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62078fd6ea8508b363348aec2fffe8827172dbacfabbc41283baf7c0693a7d92`  
		Last Modified: Tue, 10 Oct 2017 00:47:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d5d5f65b232d952fd2d10be00b4039f6a2b2915838eafd0da62c9ba947487d`  
		Last Modified: Fri, 13 Oct 2017 03:40:44 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca0aceb9531e96ef079178b0f0707a0593a0b7a7e493a22c94379f695711abb`  
		Last Modified: Fri, 13 Oct 2017 03:40:44 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179fc3008aaf880db32152ddeed06d0ee6d7fe6b0796d1f5648178c5ba45a0ac`  
		Last Modified: Fri, 13 Oct 2017 03:40:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:4da7bb6422ab96f9b062bf7671f84afe1195c3972363c3e696451f9bf8df8e05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93978499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:253cf8547a1eec1ab32b9e6aa8410a30e697e415bf4c3d4c88ca9df83a215a60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:46:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:46:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:46:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:48:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:48:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:48:52 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:48:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:48:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 04:44:49 GMT
ENV PG_MAJOR=9.3
# Tue, 10 Oct 2017 04:44:50 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 10 Oct 2017 05:15:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 05:15:12 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 05:15:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:22:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 13 Oct 2017 14:22:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:22:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:22:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:22:39 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:22:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:22:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:22:42 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:22:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d269ac3366aed392a2a44b85beade574131d53ba59160192a6b0b260530bfd78`  
		Last Modified: Tue, 10 Oct 2017 05:17:42 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7096c714db8e8e099b8fd5bd0fabc9cd768e602ceac3a221d6fe6e088fbc123f`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 952.0 KB (952017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051485f6d630f721f32a814324f208ac476b291d66688d3a8478c9f0692f7b17`  
		Last Modified: Tue, 10 Oct 2017 05:17:44 GMT  
		Size: 7.1 MB (7112960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc74eb62f3b0d967a9cded11bb78bf4e0831d184b65657cb1aa11c219c4a58c6`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf385dd31a98a4aee7da147c97929b09d9ed7ad8475cf090d8b10e3ddb4205c`  
		Last Modified: Tue, 10 Oct 2017 05:17:40 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f082906eee7d455bc14dd7545b5a6ed8a0ddbb25e9743a44594e1d8e3204d53`  
		Last Modified: Tue, 10 Oct 2017 05:20:28 GMT  
		Size: 36.0 MB (35968768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9a1eec2aa1f03062c0445558f0193204c98e01c7f717b7f19a036bcd52e07a`  
		Last Modified: Tue, 10 Oct 2017 05:20:12 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f108f4ef6a654e43f6de790ff3b40bb7b0f7bbd35740f01feef7215310c1b2`  
		Last Modified: Tue, 10 Oct 2017 05:20:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d8ca03fb7a71cc30c643fbc81509f43c435139373c98fb688012f3f6667edc`  
		Last Modified: Fri, 13 Oct 2017 14:25:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f454b4bd37d4166058e066ca5b4b61c44665b072881ff870a421761367c39fa6`  
		Last Modified: Fri, 13 Oct 2017 14:25:43 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289dab80606924bdab2b446ff31d1dbed693e0cbacf93b0d480c40da43bb23dc`  
		Last Modified: Fri, 13 Oct 2017 14:25:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; 386

```console
$ docker pull postgres@sha256:719ea21fb4a96c781ce5eba848c4fa65d6483cd64ec217ab0e54b02f619bd6db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104825821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3edae54980b2f5e5bb99739df4acd51e458847484366939926c37fb1ffb933ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:07:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:07:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:07:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:07:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:08:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:08:21 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:08:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:08:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:20:06 GMT
ENV PG_MAJOR=9.3
# Tue, 10 Oct 2017 00:20:06 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 10 Oct 2017 00:21:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:21:56 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:21:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:05:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 13 Oct 2017 14:05:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:05:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:05:32 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:05:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:33 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1f516577d1143f05867c50ef1dbd146eee37bacc4512b8cc5edf667b8d7ec7`  
		Last Modified: Tue, 10 Oct 2017 00:27:34 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a01dc90ae2171a283eba2cba23263a5a9e449aaf50e22ab8f7373f213d97af`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 964.0 KB (964035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179a5434e549ef3dfc9b6ba8457e785ba25f645345cd91608d31535a137ab0c1`  
		Last Modified: Tue, 10 Oct 2017 00:27:36 GMT  
		Size: 7.1 MB (7112843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa700e01475a1430c730f7e21c0da3d7f887479d09ab1773c6aee4b09cef390`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495faa146ca9a1ed49c7876730103e9942be34d73cc682278592197d68e3d18`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3057d5a5ec7e0826e6b9109cf1525659e93b875cb8f5ef2c02c285e8bfc851f9`  
		Last Modified: Tue, 10 Oct 2017 00:32:53 GMT  
		Size: 44.0 MB (43959669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7cb2c2c0ec33938f37e80c8556b2163c0bb70238735be130b89e3dc9ccce473`  
		Last Modified: Tue, 10 Oct 2017 00:32:41 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686e6f5dc6d87e938864eefa905ac85aaa449d059f337efea6d3cbfc15303161`  
		Last Modified: Tue, 10 Oct 2017 00:32:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfb42f8e02b43e4b35d85fc26b5f0689a81ad5e9683f9c1221219181b736b54`  
		Last Modified: Fri, 13 Oct 2017 14:07:00 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2dbedb968203fab6dfb5bd9051e473415dd07132ed3f08192ea90b136ec1df`  
		Last Modified: Fri, 13 Oct 2017 14:07:00 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5032a13d221c304629e19a1d90513a5b97fead1ab01a22edc07099e90724d6`  
		Last Modified: Fri, 13 Oct 2017 14:07:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; ppc64le

```console
$ docker pull postgres@sha256:27064566d68b7fb3520e9b25e80a42aa7b4bd467c9c0b4778b6fa71a32769047
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101111958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:634c191a829e6d7dcb1ce01bf76672b382712db203a268c44a18820adcb7280c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:11:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:11:45 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:15:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:16:25 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:16:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:58:28 GMT
ENV PG_MAJOR=9.3
# Mon, 09 Oct 2017 22:58:33 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Mon, 09 Oct 2017 23:12:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:13:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:13:15 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:03:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 12 Oct 2017 22:03:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:03:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:03:58 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:04:01 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:04:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:04:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:04:13 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:04:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6feeb37ce73a99209c70d76f88e2b8b98cc2dac509c0754ddf2992b949385e`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16860618575e311bce20466618cd71e379c0701571ba3c10a6ff7e138e882c9`  
		Last Modified: Mon, 09 Oct 2017 23:15:24 GMT  
		Size: 954.4 KB (954439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c5cbb229f9685c6de4348c4e53309a3f77880ac45bc144e2470c7b06e6155c`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 7.1 MB (7113381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4a7d0cc16d3392c10e725e66633f7348aac1d62300392ff7ad1322a9dad095`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d92e50c20e7f0d4bdee28d72b59ea1b1f193fe6a72c6dcb34f597b277f5ec`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb42efe02e303cd6e12934685a157d998bdb90a90ca057a52f9f0da533a08926`  
		Last Modified: Mon, 09 Oct 2017 23:17:19 GMT  
		Size: 41.2 MB (41218902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992da194ec74d5e13d63316c7eb947084508ec530b543a28d47fd500ef7d0af`  
		Last Modified: Mon, 09 Oct 2017 23:17:03 GMT  
		Size: 6.5 KB (6505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254a68767b6c3442b27cd27b94d3b4b176c72addac8f379da6c46936bd75d14f`  
		Last Modified: Mon, 09 Oct 2017 23:17:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5c50abc893484b67930ec4fef99e8005dc30e73a15444e0a4f3d101135b5a7`  
		Last Modified: Thu, 12 Oct 2017 22:05:45 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6345bc3cc84413c9d42187d86c37680f0600516cc3f2fdbf8853778baf10cee5`  
		Last Modified: Thu, 12 Oct 2017 22:05:47 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67d8abe6a8fcbf56dcd8e024e847736f2868725a81f3293392e1398b66d0da`  
		Last Modified: Thu, 12 Oct 2017 22:05:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; s390x

```console
$ docker pull postgres@sha256:1aa63fcb91db58a69e4ed9b10778c71c7b7b0efeabd012e39fdb6a675f944155
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99291890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ad3af2e9905575f35a66125d5de4da1bfd619a4f52a83a172ed62fdc866bcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:07:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:07:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:07:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:07:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:07:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:35:13 GMT
ENV PG_MAJOR=9.3
# Mon, 09 Oct 2017 23:35:13 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Mon, 09 Oct 2017 23:43:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:43:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:43:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:26:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 13 Oct 2017 09:26:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:26:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:26:09 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:26:09 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:26:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:26:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:26:10 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:26:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6047e028c2374e4b2f2846f6e23506d6424d8ce67a2a973e57d005007a2da1b`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e4246c65d329e68db93b3669fcff5a15f212ff2b5983b19592090694b35f8`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 970.2 KB (970247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c307cff99a2946ae5c9f303ffa4ca390f1596e36d1d2a6aa9552446c652396`  
		Last Modified: Mon, 09 Oct 2017 23:43:21 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1942f0fc876a052768b69b3c959cf244aac0cb99d22b3fee650772edcd2c3426`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35245b24c4e062e2e7ccfd64b259f04526c2c6b43ef44254f2960f555eca65`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e12d794116e504eebaa5455185d3ad7329153cb825a6af9af081ebc7fffcc1b`  
		Last Modified: Mon, 09 Oct 2017 23:44:34 GMT  
		Size: 38.4 MB (38386167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ee1d92733db5d547c9b296e7011274ad152b1eeae9099db4572632accc477c`  
		Last Modified: Mon, 09 Oct 2017 23:44:25 GMT  
		Size: 6.5 KB (6504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e817a4604e9a60929725387b400f61aa2bced92c8ed8f442d025a590878aa33b`  
		Last Modified: Mon, 09 Oct 2017 23:44:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95055399049174298d1fc7d29ce019df547d24038eec57b51eff5376db7e9ba5`  
		Last Modified: Fri, 13 Oct 2017 09:27:07 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b720d4abc97a15366106d4a753c926d0dee137373ac9c7762162e5b5b84a8979`  
		Last Modified: Fri, 13 Oct 2017 09:27:07 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05f49694b21cd50e5880b7dc6aa65630879ab10b9537f169428aa778af36fc2`  
		Last Modified: Fri, 13 Oct 2017 09:27:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.19`

```console
$ docker pull postgres@sha256:7b85113a7c1e231bd327248699a32e3b62fc7c2ea155e257341a9039cf2b1242
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
$ docker pull postgres@sha256:2c7158a572f77134f801695524118ce1b2f8dc6f959507b303f65fc73b8be0af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102867442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffce5b1cb222bde8af46650eb548897a1e39e3fa067bdc7f7bccf5b271c589c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:45:23 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:45:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:46:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:46:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:46:37 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:46:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:46:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:51:32 GMT
ENV PG_MAJOR=9.3
# Tue, 10 Oct 2017 01:51:32 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 10 Oct 2017 01:52:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:52:44 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:52:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:05:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 12 Oct 2017 22:05:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:05:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:05:55 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:05:55 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:05:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:05:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:05:57 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:05:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f30b0e3b3b9a6ad13b6c7146d5356b0022c19552b092584af5826867f0651fc`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe77d699370afccc90ead8288bd77dccc002b736cd359e99e968ca637b9a2bcf`  
		Last Modified: Tue, 10 Oct 2017 01:57:51 GMT  
		Size: 985.1 KB (985140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2dc1dca46bb95661f36d38d6f0f612c71a0bc784444af164b752fa852e707e`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 7.1 MB (7112916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355ccacf41c56e595a2c71e18414f06b44a5f783fe0ec22b3053d5e6740f9f55`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b1581b93b4f4a794f1f8ca9ff1ac175d25c2d88b929d3824e8b9b43c537fe`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7c9cfe51a6bf47c6ff083fb07026f0092a6bcee372aaabe5a36d1900e87b7b`  
		Last Modified: Tue, 10 Oct 2017 02:00:39 GMT  
		Size: 42.2 MB (42158822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f843fa4362277550c80c87ee84ae77ec13f6b3a9861b044c311c27f087394d5`  
		Last Modified: Tue, 10 Oct 2017 02:00:23 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac037a825db073ed9b5125729ad9ef8fe4cc94e62c62091b3ecfa79fb882d313`  
		Last Modified: Tue, 10 Oct 2017 02:00:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8c28329cba0efb453845f73db3db8d7071621eb8b85437d42fcde01e2ac55`  
		Last Modified: Thu, 12 Oct 2017 22:10:46 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fabac2151c818f4313caf828acde6e3f02148a51d52e6134f6265ef2eb808b`  
		Last Modified: Thu, 12 Oct 2017 22:10:46 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f433abbec773492fdc1ea3d193f47d57648dcc148aa10f8f7a818911b0be5c60`  
		Last Modified: Thu, 12 Oct 2017 22:10:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; arm variant v5

```console
$ docker pull postgres@sha256:8d223e93e129398f828443b44ba6ca1c4100f75cd1aa6c6cd2544530530b2b82
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95401790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2d244afd58d005967d105b9bfa634406f09845dc316b30e7973b79f768efe9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:57:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:57:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:57:59 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:58:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:59:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:59:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:59:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:59:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:57:56 GMT
ENV PG_MAJOR=9.3
# Mon, 09 Oct 2017 23:57:56 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 10 Oct 2017 00:15:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:15:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:15:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:39:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 13 Oct 2017 06:39:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:39:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:39:06 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:39:06 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:39:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:39:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:39:07 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:39:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f2ea4c35241e9c0d1e612a52e13531a3038fd1d613ccff10f323dbe9977408`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8820953bbb96c5191977d54f962b3147a124c2713b4575f6feeffd1fe7c49f`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 974.6 KB (974649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ded5820b04e0af13a27b346ad4482b18ad0accae84ec9f47c53853c6f8d6d8`  
		Last Modified: Tue, 10 Oct 2017 00:16:16 GMT  
		Size: 7.1 MB (7112800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be442bd996b1c7dde35df775e18f56c9d6d82cfb24d2c1dcf7bdc6d4506a5e47`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790432ad2fedb6ed859cb022b531be4c7264e3f0564322c93b9a86309481919`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6020814d8bf942b07860c96dd81337a29da943fcc4023a92a6ba103f75e86ccc`  
		Last Modified: Tue, 10 Oct 2017 00:17:36 GMT  
		Size: 36.4 MB (36418960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb1ea8b1f1fb4ef66b394404bed63c19b7781a84b21fe53819314baf4690ef1`  
		Last Modified: Tue, 10 Oct 2017 00:17:23 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e915b9ea38080b5c4c550d6aa59b2a83906c6ad7f7a1a26f6aed59d3077bc0e0`  
		Last Modified: Tue, 10 Oct 2017 00:17:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0755027797c79411a44365de6503fd66ed35818534cbd5e667451d7cb31805fb`  
		Last Modified: Fri, 13 Oct 2017 06:40:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d2904f6e7efa4f042cbb20ff5eb3025f1e6db68dcc545236ef2d31bd2122`  
		Last Modified: Fri, 13 Oct 2017 06:40:06 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf02587424db72bb824c47da7496171b5517c7f435da003693849f0d1fe7c28`  
		Last Modified: Fri, 13 Oct 2017 06:40:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; arm variant v7

```console
$ docker pull postgres@sha256:b78ea5150a223c0fbeddbc7ea99baf0f49a4a770e7b5d6b0b721be25fbcb9561
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92054574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e3102437f29a00ce76d551f646a97546a67da6d2ec6adc2f00d95dc325c35b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:33:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:33:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:33:52 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:34:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:35:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:35:19 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:35:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:35:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:28:06 GMT
ENV PG_MAJOR=9.3
# Tue, 10 Oct 2017 00:28:06 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 10 Oct 2017 00:45:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:45:06 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:45:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:39:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 13 Oct 2017 03:39:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:39:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:39:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:39:19 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:39:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:39:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:39:20 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:39:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e796fed7e772e65e95ed4c8f0089c9c0a6ee0e98c85189b7bafbcc47de0aee`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953f0e725d183cb5a74c0e2daab0224ed4045eb55967bf6179f6176cc57e74e`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 959.5 KB (959478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371a1407f29895404ec62d6f3e6c2885aa84f261a14ae415b29541f52278f4e4`  
		Last Modified: Tue, 10 Oct 2017 00:46:20 GMT  
		Size: 7.1 MB (7112846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fb6412c8826b372095343b6942a570850ae08c66652750fc8842bf955bf34`  
		Last Modified: Tue, 10 Oct 2017 00:46:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3fe6e8cb381f129f9c7cbfff277a94ef945be8764bead6874d488a46adfdf0`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42cf17745e496ec9146e1866bfcfb9c5eb9a31639599bd991bec4a6b71c8111`  
		Last Modified: Tue, 10 Oct 2017 00:47:52 GMT  
		Size: 35.3 MB (35280457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa183549703b860af07173521155d7e3c6e8166c15ddc44f3c5044e36db77eb`  
		Last Modified: Tue, 10 Oct 2017 00:47:39 GMT  
		Size: 6.5 KB (6504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62078fd6ea8508b363348aec2fffe8827172dbacfabbc41283baf7c0693a7d92`  
		Last Modified: Tue, 10 Oct 2017 00:47:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d5d5f65b232d952fd2d10be00b4039f6a2b2915838eafd0da62c9ba947487d`  
		Last Modified: Fri, 13 Oct 2017 03:40:44 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca0aceb9531e96ef079178b0f0707a0593a0b7a7e493a22c94379f695711abb`  
		Last Modified: Fri, 13 Oct 2017 03:40:44 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179fc3008aaf880db32152ddeed06d0ee6d7fe6b0796d1f5648178c5ba45a0ac`  
		Last Modified: Fri, 13 Oct 2017 03:40:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:4da7bb6422ab96f9b062bf7671f84afe1195c3972363c3e696451f9bf8df8e05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93978499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:253cf8547a1eec1ab32b9e6aa8410a30e697e415bf4c3d4c88ca9df83a215a60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:46:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:46:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:46:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:48:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:48:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:48:52 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:48:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:48:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 04:44:49 GMT
ENV PG_MAJOR=9.3
# Tue, 10 Oct 2017 04:44:50 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 10 Oct 2017 05:15:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 05:15:12 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 05:15:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:22:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 13 Oct 2017 14:22:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:22:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:22:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:22:39 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:22:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:22:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:22:42 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:22:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d269ac3366aed392a2a44b85beade574131d53ba59160192a6b0b260530bfd78`  
		Last Modified: Tue, 10 Oct 2017 05:17:42 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7096c714db8e8e099b8fd5bd0fabc9cd768e602ceac3a221d6fe6e088fbc123f`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 952.0 KB (952017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051485f6d630f721f32a814324f208ac476b291d66688d3a8478c9f0692f7b17`  
		Last Modified: Tue, 10 Oct 2017 05:17:44 GMT  
		Size: 7.1 MB (7112960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc74eb62f3b0d967a9cded11bb78bf4e0831d184b65657cb1aa11c219c4a58c6`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf385dd31a98a4aee7da147c97929b09d9ed7ad8475cf090d8b10e3ddb4205c`  
		Last Modified: Tue, 10 Oct 2017 05:17:40 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f082906eee7d455bc14dd7545b5a6ed8a0ddbb25e9743a44594e1d8e3204d53`  
		Last Modified: Tue, 10 Oct 2017 05:20:28 GMT  
		Size: 36.0 MB (35968768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9a1eec2aa1f03062c0445558f0193204c98e01c7f717b7f19a036bcd52e07a`  
		Last Modified: Tue, 10 Oct 2017 05:20:12 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f108f4ef6a654e43f6de790ff3b40bb7b0f7bbd35740f01feef7215310c1b2`  
		Last Modified: Tue, 10 Oct 2017 05:20:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d8ca03fb7a71cc30c643fbc81509f43c435139373c98fb688012f3f6667edc`  
		Last Modified: Fri, 13 Oct 2017 14:25:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f454b4bd37d4166058e066ca5b4b61c44665b072881ff870a421761367c39fa6`  
		Last Modified: Fri, 13 Oct 2017 14:25:43 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289dab80606924bdab2b446ff31d1dbed693e0cbacf93b0d480c40da43bb23dc`  
		Last Modified: Fri, 13 Oct 2017 14:25:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; 386

```console
$ docker pull postgres@sha256:719ea21fb4a96c781ce5eba848c4fa65d6483cd64ec217ab0e54b02f619bd6db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104825821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3edae54980b2f5e5bb99739df4acd51e458847484366939926c37fb1ffb933ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:07:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:07:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:07:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:07:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:08:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:08:21 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:08:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:08:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:20:06 GMT
ENV PG_MAJOR=9.3
# Tue, 10 Oct 2017 00:20:06 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Tue, 10 Oct 2017 00:21:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:21:56 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:21:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:05:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 13 Oct 2017 14:05:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:05:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:05:32 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:05:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:33 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1f516577d1143f05867c50ef1dbd146eee37bacc4512b8cc5edf667b8d7ec7`  
		Last Modified: Tue, 10 Oct 2017 00:27:34 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a01dc90ae2171a283eba2cba23263a5a9e449aaf50e22ab8f7373f213d97af`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 964.0 KB (964035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179a5434e549ef3dfc9b6ba8457e785ba25f645345cd91608d31535a137ab0c1`  
		Last Modified: Tue, 10 Oct 2017 00:27:36 GMT  
		Size: 7.1 MB (7112843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa700e01475a1430c730f7e21c0da3d7f887479d09ab1773c6aee4b09cef390`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495faa146ca9a1ed49c7876730103e9942be34d73cc682278592197d68e3d18`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3057d5a5ec7e0826e6b9109cf1525659e93b875cb8f5ef2c02c285e8bfc851f9`  
		Last Modified: Tue, 10 Oct 2017 00:32:53 GMT  
		Size: 44.0 MB (43959669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7cb2c2c0ec33938f37e80c8556b2163c0bb70238735be130b89e3dc9ccce473`  
		Last Modified: Tue, 10 Oct 2017 00:32:41 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686e6f5dc6d87e938864eefa905ac85aaa449d059f337efea6d3cbfc15303161`  
		Last Modified: Tue, 10 Oct 2017 00:32:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfb42f8e02b43e4b35d85fc26b5f0689a81ad5e9683f9c1221219181b736b54`  
		Last Modified: Fri, 13 Oct 2017 14:07:00 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2dbedb968203fab6dfb5bd9051e473415dd07132ed3f08192ea90b136ec1df`  
		Last Modified: Fri, 13 Oct 2017 14:07:00 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5032a13d221c304629e19a1d90513a5b97fead1ab01a22edc07099e90724d6`  
		Last Modified: Fri, 13 Oct 2017 14:07:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; ppc64le

```console
$ docker pull postgres@sha256:27064566d68b7fb3520e9b25e80a42aa7b4bd467c9c0b4778b6fa71a32769047
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101111958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:634c191a829e6d7dcb1ce01bf76672b382712db203a268c44a18820adcb7280c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:11:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:11:45 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:15:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:16:25 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:16:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:58:28 GMT
ENV PG_MAJOR=9.3
# Mon, 09 Oct 2017 22:58:33 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Mon, 09 Oct 2017 23:12:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:13:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:13:15 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:03:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 12 Oct 2017 22:03:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:03:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:03:58 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:04:01 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:04:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:04:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:04:13 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:04:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6feeb37ce73a99209c70d76f88e2b8b98cc2dac509c0754ddf2992b949385e`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16860618575e311bce20466618cd71e379c0701571ba3c10a6ff7e138e882c9`  
		Last Modified: Mon, 09 Oct 2017 23:15:24 GMT  
		Size: 954.4 KB (954439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c5cbb229f9685c6de4348c4e53309a3f77880ac45bc144e2470c7b06e6155c`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 7.1 MB (7113381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4a7d0cc16d3392c10e725e66633f7348aac1d62300392ff7ad1322a9dad095`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d92e50c20e7f0d4bdee28d72b59ea1b1f193fe6a72c6dcb34f597b277f5ec`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb42efe02e303cd6e12934685a157d998bdb90a90ca057a52f9f0da533a08926`  
		Last Modified: Mon, 09 Oct 2017 23:17:19 GMT  
		Size: 41.2 MB (41218902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992da194ec74d5e13d63316c7eb947084508ec530b543a28d47fd500ef7d0af`  
		Last Modified: Mon, 09 Oct 2017 23:17:03 GMT  
		Size: 6.5 KB (6505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254a68767b6c3442b27cd27b94d3b4b176c72addac8f379da6c46936bd75d14f`  
		Last Modified: Mon, 09 Oct 2017 23:17:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5c50abc893484b67930ec4fef99e8005dc30e73a15444e0a4f3d101135b5a7`  
		Last Modified: Thu, 12 Oct 2017 22:05:45 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6345bc3cc84413c9d42187d86c37680f0600516cc3f2fdbf8853778baf10cee5`  
		Last Modified: Thu, 12 Oct 2017 22:05:47 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67d8abe6a8fcbf56dcd8e024e847736f2868725a81f3293392e1398b66d0da`  
		Last Modified: Thu, 12 Oct 2017 22:05:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.19` - linux; s390x

```console
$ docker pull postgres@sha256:1aa63fcb91db58a69e4ed9b10778c71c7b7b0efeabd012e39fdb6a675f944155
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99291890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ad3af2e9905575f35a66125d5de4da1bfd619a4f52a83a172ed62fdc866bcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:07:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:07:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:07:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:07:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:07:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:35:13 GMT
ENV PG_MAJOR=9.3
# Mon, 09 Oct 2017 23:35:13 GMT
ENV PG_VERSION=9.3.19-1.pgdg80+1
# Mon, 09 Oct 2017 23:43:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:43:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:43:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:26:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 13 Oct 2017 09:26:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:26:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:26:09 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:26:09 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:26:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:26:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:26:10 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:26:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6047e028c2374e4b2f2846f6e23506d6424d8ce67a2a973e57d005007a2da1b`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e4246c65d329e68db93b3669fcff5a15f212ff2b5983b19592090694b35f8`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 970.2 KB (970247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c307cff99a2946ae5c9f303ffa4ca390f1596e36d1d2a6aa9552446c652396`  
		Last Modified: Mon, 09 Oct 2017 23:43:21 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1942f0fc876a052768b69b3c959cf244aac0cb99d22b3fee650772edcd2c3426`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35245b24c4e062e2e7ccfd64b259f04526c2c6b43ef44254f2960f555eca65`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e12d794116e504eebaa5455185d3ad7329153cb825a6af9af081ebc7fffcc1b`  
		Last Modified: Mon, 09 Oct 2017 23:44:34 GMT  
		Size: 38.4 MB (38386167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ee1d92733db5d547c9b296e7011274ad152b1eeae9099db4572632accc477c`  
		Last Modified: Mon, 09 Oct 2017 23:44:25 GMT  
		Size: 6.5 KB (6504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e817a4604e9a60929725387b400f61aa2bced92c8ed8f442d025a590878aa33b`  
		Last Modified: Mon, 09 Oct 2017 23:44:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95055399049174298d1fc7d29ce019df547d24038eec57b51eff5376db7e9ba5`  
		Last Modified: Fri, 13 Oct 2017 09:27:07 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b720d4abc97a15366106d4a753c926d0dee137373ac9c7762162e5b5b84a8979`  
		Last Modified: Fri, 13 Oct 2017 09:27:07 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05f49694b21cd50e5880b7dc6aa65630879ab10b9537f169428aa778af36fc2`  
		Last Modified: Fri, 13 Oct 2017 09:27:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.19-alpine`

```console
$ docker pull postgres@sha256:dae687c3f6947423a6e6a650c36fd33ee1316534040e5f0fc299ffae46b6afc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3.19-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f9df4d89b62a4e6f4e83a8a65f9d98b0ab1a2c457f6af5d5f9fe12bdbf68784a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13972681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bac648738dc6da25f1578bc68fd5af5644ee72a24d49b1d14fd77c454b33ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:36:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:36:43 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:36:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:51:51 GMT
ENV PG_MAJOR=9.3
# Thu, 26 Oct 2017 02:51:51 GMT
ENV PG_VERSION=9.3.19
# Thu, 26 Oct 2017 02:51:52 GMT
ENV PG_SHA256=fb9e872cd9e927ba331690d86bc63dcb5a596acb7a536fa0518a3c7d43ac2fb5
# Thu, 26 Oct 2017 02:51:52 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Thu, 26 Oct 2017 02:51:52 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Thu, 26 Oct 2017 02:53:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:57:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:57:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:57:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:57:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:57:55 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:57:55 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:57:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:57:56 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:57:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e3d7aa49539d4f2ca481fae9141528e2a702cb0b2c20b1dcff938b97b0f831`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cd16d74403c16ea5beffdc195cf56a80f2ca4282097410c0521133d91798`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251de39feaf6a0905826241314c35b129c8df027306f1619b4932ad5d5a928f5`  
		Last Modified: Thu, 26 Oct 2017 03:01:29 GMT  
		Size: 12.0 MB (11993459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900e5730396ecc825f2d1a715d272ae4cf381b2765ed1f9bf917f8efde6d2aa0`  
		Last Modified: Thu, 26 Oct 2017 03:01:25 GMT  
		Size: 6.5 KB (6478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f069bd81b7a7621c119549ca7d961bf1c174940b0c5464d9d63ca296eeddc9`  
		Last Modified: Thu, 26 Oct 2017 03:01:25 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66740e81c7926c872baaa8559433b548eac51a1020de164a9e9fbf59d71698d`  
		Last Modified: Thu, 26 Oct 2017 03:01:25 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d885177bd6020c3159f0b17d784dda81e41531ad7c83a8f874602cb40e3c831a`  
		Last Modified: Thu, 26 Oct 2017 03:01:24 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e350a9324ff373973d8349a1f2c3a1fc242089af15913f9dab76b3e5b0d415a`  
		Last Modified: Thu, 26 Oct 2017 03:01:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:dae687c3f6947423a6e6a650c36fd33ee1316534040e5f0fc299ffae46b6afc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f9df4d89b62a4e6f4e83a8a65f9d98b0ab1a2c457f6af5d5f9fe12bdbf68784a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13972681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bac648738dc6da25f1578bc68fd5af5644ee72a24d49b1d14fd77c454b33ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:36:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:36:43 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:36:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:51:51 GMT
ENV PG_MAJOR=9.3
# Thu, 26 Oct 2017 02:51:51 GMT
ENV PG_VERSION=9.3.19
# Thu, 26 Oct 2017 02:51:52 GMT
ENV PG_SHA256=fb9e872cd9e927ba331690d86bc63dcb5a596acb7a536fa0518a3c7d43ac2fb5
# Thu, 26 Oct 2017 02:51:52 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Thu, 26 Oct 2017 02:51:52 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Thu, 26 Oct 2017 02:53:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:57:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:57:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:57:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:57:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:57:55 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:57:55 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:57:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:57:56 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:57:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e3d7aa49539d4f2ca481fae9141528e2a702cb0b2c20b1dcff938b97b0f831`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cd16d74403c16ea5beffdc195cf56a80f2ca4282097410c0521133d91798`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251de39feaf6a0905826241314c35b129c8df027306f1619b4932ad5d5a928f5`  
		Last Modified: Thu, 26 Oct 2017 03:01:29 GMT  
		Size: 12.0 MB (11993459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900e5730396ecc825f2d1a715d272ae4cf381b2765ed1f9bf917f8efde6d2aa0`  
		Last Modified: Thu, 26 Oct 2017 03:01:25 GMT  
		Size: 6.5 KB (6478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f069bd81b7a7621c119549ca7d961bf1c174940b0c5464d9d63ca296eeddc9`  
		Last Modified: Thu, 26 Oct 2017 03:01:25 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66740e81c7926c872baaa8559433b548eac51a1020de164a9e9fbf59d71698d`  
		Last Modified: Thu, 26 Oct 2017 03:01:25 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d885177bd6020c3159f0b17d784dda81e41531ad7c83a8f874602cb40e3c831a`  
		Last Modified: Thu, 26 Oct 2017 03:01:24 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e350a9324ff373973d8349a1f2c3a1fc242089af15913f9dab76b3e5b0d415a`  
		Last Modified: Thu, 26 Oct 2017 03:01:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:a4629b4b84d656ffd18b67c1f3badecb678e5eb6c822f56df426939d795eb732
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
$ docker pull postgres@sha256:b9552c8a07ed85f6a9b01f0efb0f40c0d442d343e7fd7adbc6045dadc9117f6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103229441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13fff887b6fb2239e6d44877be41b8d2a64d5f54384d8b5104bbefa67cbce9af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:45:23 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:45:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:46:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:46:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:46:37 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:46:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:46:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:50:14 GMT
ENV PG_MAJOR=9.4
# Tue, 10 Oct 2017 01:50:14 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 10 Oct 2017 01:51:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:51:13 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:51:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 12 Oct 2017 22:05:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:05:14 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:05:19 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:05:20 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:05:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:05:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:05:26 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:05:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f30b0e3b3b9a6ad13b6c7146d5356b0022c19552b092584af5826867f0651fc`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe77d699370afccc90ead8288bd77dccc002b736cd359e99e968ca637b9a2bcf`  
		Last Modified: Tue, 10 Oct 2017 01:57:51 GMT  
		Size: 985.1 KB (985140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2dc1dca46bb95661f36d38d6f0f612c71a0bc784444af164b752fa852e707e`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 7.1 MB (7112916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355ccacf41c56e595a2c71e18414f06b44a5f783fe0ec22b3053d5e6740f9f55`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b1581b93b4f4a794f1f8ca9ff1ac175d25c2d88b929d3824e8b9b43c537fe`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a92bca9c98c83a61ff2b9abdfdad04a29459d5e4cea79045ba11bd7e4259a7d`  
		Last Modified: Tue, 10 Oct 2017 01:59:56 GMT  
		Size: 42.5 MB (42520640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad560d1f7d4bc57a488182e7d118007dbd6729d771c17bbe209b17bb97d8d17`  
		Last Modified: Tue, 10 Oct 2017 01:59:33 GMT  
		Size: 6.7 KB (6690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f9cc7d72e510a35813cdb7266bcd6c1bd969bbe48db6cf7f4006104f94cbe4`  
		Last Modified: Tue, 10 Oct 2017 01:59:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0a61c74dafbeb2169685ee5d310e7f01f869b4047bd1fd5cedaac5643654d2`  
		Last Modified: Thu, 12 Oct 2017 22:10:03 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae5ce42c8d9d8b6f485ce00f124d97362ffe73e0bc5a459b5c739b2d95c93a9`  
		Last Modified: Thu, 12 Oct 2017 22:10:03 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf14f06aa291312e54fdd291715c79d3352a408378b324c26f03cfd81463f827`  
		Last Modified: Thu, 12 Oct 2017 22:10:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v5

```console
$ docker pull postgres@sha256:d6d78c4486d063bfd0fd22e3d75a0aca5492c93b09bca9f3740c19788ab10b7f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95747149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477d7728e707c418c13488bd219cfc266481f2e2102927732378d4d4089e5619`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:57:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:57:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:57:59 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:58:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:59:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:59:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:59:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:59:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:39:46 GMT
ENV PG_MAJOR=9.4
# Mon, 09 Oct 2017 23:39:46 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Mon, 09 Oct 2017 23:57:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:57:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:57:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:38:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 13 Oct 2017 06:38:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:38:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:38:57 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:38:58 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:38:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:38:59 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:38:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f2ea4c35241e9c0d1e612a52e13531a3038fd1d613ccff10f323dbe9977408`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8820953bbb96c5191977d54f962b3147a124c2713b4575f6feeffd1fe7c49f`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 974.6 KB (974649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ded5820b04e0af13a27b346ad4482b18ad0accae84ec9f47c53853c6f8d6d8`  
		Last Modified: Tue, 10 Oct 2017 00:16:16 GMT  
		Size: 7.1 MB (7112800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be442bd996b1c7dde35df775e18f56c9d6d82cfb24d2c1dcf7bdc6d4506a5e47`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790432ad2fedb6ed859cb022b531be4c7264e3f0564322c93b9a86309481919`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54d16079fb588851c1c703fc203b85d73c32d0bdbc3209f9c0a00ae971058fc`  
		Last Modified: Tue, 10 Oct 2017 00:17:13 GMT  
		Size: 36.8 MB (36764142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d784cb77b3a07f3169c0588c6b3facf10620bc9021bb10740382146c4e3a0620`  
		Last Modified: Tue, 10 Oct 2017 00:17:00 GMT  
		Size: 6.7 KB (6689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc669e11a2343f56ca28bed0e5a35aad5e9545667d8ade0b6d62589a0b74e3ea`  
		Last Modified: Tue, 10 Oct 2017 00:17:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5615cbaaa9a09ebb0a6c98c282f35c9e6d7af0c8fb2af7e790f93dc4be6d0a3a`  
		Last Modified: Fri, 13 Oct 2017 06:39:56 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117fee63220f394dd1ac3f7fbc1fdd69fb34c76203022827c3e293fba05f4f58`  
		Last Modified: Fri, 13 Oct 2017 06:39:56 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a44d98b4ff5459ced89542e5de8c682b9481f5d351392e3c2fcbf419e8edee5`  
		Last Modified: Fri, 13 Oct 2017 06:39:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v7

```console
$ docker pull postgres@sha256:ae37994f06ea1f6b1e88829447e10028b86cffe6e2fa2762373c78f0e7a88f41
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92384473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da619d2c6651014e0ee889792c642d8afa91740cbce078f432f4e0089cb54c84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:33:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:33:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:33:52 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:34:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:35:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:35:19 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:35:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:35:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:11:21 GMT
ENV PG_MAJOR=9.4
# Tue, 10 Oct 2017 00:11:21 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 10 Oct 2017 00:27:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:27:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:27:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:39:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 13 Oct 2017 03:39:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:39:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:39:08 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:39:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:39:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:39:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:39:09 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:39:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e796fed7e772e65e95ed4c8f0089c9c0a6ee0e98c85189b7bafbcc47de0aee`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953f0e725d183cb5a74c0e2daab0224ed4045eb55967bf6179f6176cc57e74e`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 959.5 KB (959478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371a1407f29895404ec62d6f3e6c2885aa84f261a14ae415b29541f52278f4e4`  
		Last Modified: Tue, 10 Oct 2017 00:46:20 GMT  
		Size: 7.1 MB (7112846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fb6412c8826b372095343b6942a570850ae08c66652750fc8842bf955bf34`  
		Last Modified: Tue, 10 Oct 2017 00:46:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3fe6e8cb381f129f9c7cbfff277a94ef945be8764bead6874d488a46adfdf0`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4548d0e890ab001bd606b3fc9c42ccd9a71d9a56a455a85db8c29cdcefb03f`  
		Last Modified: Tue, 10 Oct 2017 00:47:27 GMT  
		Size: 35.6 MB (35610171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2a164c39629734a8d0e8bae02b802aac50f78b9667b0323c4b7b01f1dae74b`  
		Last Modified: Tue, 10 Oct 2017 00:47:15 GMT  
		Size: 6.7 KB (6688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6666cf77b1db998c5d47c8cb4f4dcefd269f915936d188efeeb25863b19195c`  
		Last Modified: Tue, 10 Oct 2017 00:47:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efb973878b8ace4da7ad1031f28e83cdc09825faabb4deb518708ad8b360f64`  
		Last Modified: Fri, 13 Oct 2017 03:40:30 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85345a20a0d00e5532a2120ac76596aa68b22d568adaa6e9e707a6bc05268e51`  
		Last Modified: Fri, 13 Oct 2017 03:40:30 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deaacb2d0bd1da4f4fad6a7b0cc7e5cf406f92d033a6f5ece8b3914336db7f1`  
		Last Modified: Fri, 13 Oct 2017 03:40:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:b876a2c6d3fe5f7404b9bc16a44e0392492018d74a3257d0e27df07c602c31ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94319927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeab60fdfed36ee8620b14adecf5541a01d1a197435f69ccb8e3c964c109bbf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:46:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:46:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:46:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:48:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:48:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:48:52 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:48:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:48:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 04:10:27 GMT
ENV PG_MAJOR=9.4
# Tue, 10 Oct 2017 04:10:28 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 10 Oct 2017 04:44:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 04:44:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 04:44:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:22:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 13 Oct 2017 14:22:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:22:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:22:15 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:22:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:22:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:22:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:22:19 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:22:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d269ac3366aed392a2a44b85beade574131d53ba59160192a6b0b260530bfd78`  
		Last Modified: Tue, 10 Oct 2017 05:17:42 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7096c714db8e8e099b8fd5bd0fabc9cd768e602ceac3a221d6fe6e088fbc123f`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 952.0 KB (952017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051485f6d630f721f32a814324f208ac476b291d66688d3a8478c9f0692f7b17`  
		Last Modified: Tue, 10 Oct 2017 05:17:44 GMT  
		Size: 7.1 MB (7112960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc74eb62f3b0d967a9cded11bb78bf4e0831d184b65657cb1aa11c219c4a58c6`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf385dd31a98a4aee7da147c97929b09d9ed7ad8475cf090d8b10e3ddb4205c`  
		Last Modified: Tue, 10 Oct 2017 05:17:40 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317910bb0e396e56f9a8f0ba1e160d391a2558f76ef8ef7f6a4734f607bd11d`  
		Last Modified: Tue, 10 Oct 2017 05:19:45 GMT  
		Size: 36.3 MB (36310015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9daec90964aec74fed0018855b9259a0ed67abf465d230b24f996a261c8b4c8`  
		Last Modified: Tue, 10 Oct 2017 05:19:28 GMT  
		Size: 6.7 KB (6688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c53de41f2c0b1253471e338fc994ca5941c60af436787a3f8335f3310b0c8`  
		Last Modified: Tue, 10 Oct 2017 05:19:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b340e62a8d1d07d892000d78b1ff26f38494bf07a7b8949643182199be029cb`  
		Last Modified: Fri, 13 Oct 2017 14:25:16 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cadba61376b9a4b451c5db508b05de8f4e39dfe67fca6b6dc6c562c08fad37`  
		Last Modified: Fri, 13 Oct 2017 14:25:16 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1d41576f37ecd8179b877fb7dd6de8e4f0aa74033dbe58e11389f830bef0c2`  
		Last Modified: Fri, 13 Oct 2017 14:25:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; 386

```console
$ docker pull postgres@sha256:48dce1cfebcfbdf4b8af11c53fbcf8afd954b67a722397a7cb50957abfea803d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105196523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edfabfc367997194f4b1be48ed7473e62ad3feeb86a8fc2a0f4906d78c20692`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:07:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:07:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:07:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:07:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:08:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:08:21 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:08:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:08:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:17:41 GMT
ENV PG_MAJOR=9.4
# Tue, 10 Oct 2017 00:17:41 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 10 Oct 2017 00:19:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:19:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:19:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:05:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 13 Oct 2017 14:05:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:05:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:05:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:05:24 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:25 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1f516577d1143f05867c50ef1dbd146eee37bacc4512b8cc5edf667b8d7ec7`  
		Last Modified: Tue, 10 Oct 2017 00:27:34 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a01dc90ae2171a283eba2cba23263a5a9e449aaf50e22ab8f7373f213d97af`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 964.0 KB (964035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179a5434e549ef3dfc9b6ba8457e785ba25f645345cd91608d31535a137ab0c1`  
		Last Modified: Tue, 10 Oct 2017 00:27:36 GMT  
		Size: 7.1 MB (7112843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa700e01475a1430c730f7e21c0da3d7f887479d09ab1773c6aee4b09cef390`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495faa146ca9a1ed49c7876730103e9942be34d73cc682278592197d68e3d18`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c705dcaa5217dbb21cf29db621d923d3a1118fd3d3fdb2127358975d0a629083`  
		Last Modified: Tue, 10 Oct 2017 00:28:58 GMT  
		Size: 44.3 MB (44330187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534bf1dda53d584fac2de756dc6d8c0fda1bb4c7afe7037f8970d56b576a12d9`  
		Last Modified: Tue, 10 Oct 2017 00:28:42 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1e71cb89d974b2b77036b5a48b56bfa369a3aeb131b352d99f16ea00749512`  
		Last Modified: Tue, 10 Oct 2017 00:28:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a89b9f1c8391bcf165b1f872c872381bba5241f89d9a44acef7a572a75670f`  
		Last Modified: Fri, 13 Oct 2017 14:06:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd08e214dc47236a2eb800c614fba280a17eb3103b37aa8f8312c5fa5ac384c1`  
		Last Modified: Fri, 13 Oct 2017 14:06:44 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86dc5c131ebcfcde330c0b67ce91b6111b3e12c5364ea2bacfb18b035f2fb5a`  
		Last Modified: Fri, 13 Oct 2017 14:06:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; ppc64le

```console
$ docker pull postgres@sha256:0810347be8bd604c7d7a5aae08f42993374757016b2c99e4f9c296e5a2428bb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101472664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044b5d9cd05e3d47e03fdcd4869c2b95d21a0a5fb9fcf871cc98f026d2590c85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:11:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:11:45 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:15:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:16:25 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:16:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:43:54 GMT
ENV PG_MAJOR=9.4
# Mon, 09 Oct 2017 22:43:58 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Mon, 09 Oct 2017 22:57:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:57:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:57:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:03:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 12 Oct 2017 22:03:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:03:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:03:20 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:03:23 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:03:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:03:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:03:34 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:03:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6feeb37ce73a99209c70d76f88e2b8b98cc2dac509c0754ddf2992b949385e`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16860618575e311bce20466618cd71e379c0701571ba3c10a6ff7e138e882c9`  
		Last Modified: Mon, 09 Oct 2017 23:15:24 GMT  
		Size: 954.4 KB (954439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c5cbb229f9685c6de4348c4e53309a3f77880ac45bc144e2470c7b06e6155c`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 7.1 MB (7113381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4a7d0cc16d3392c10e725e66633f7348aac1d62300392ff7ad1322a9dad095`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d92e50c20e7f0d4bdee28d72b59ea1b1f193fe6a72c6dcb34f597b277f5ec`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f49023bda8e27df39eb3a177c1c208c11df6c4b6c4fc22dbd0dee31f597ace`  
		Last Modified: Mon, 09 Oct 2017 23:16:46 GMT  
		Size: 41.6 MB (41579418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f4906ec576f7fc301ba75ac4ba5ccc1a35963807f31ca5fc5b8d2f03155ac0`  
		Last Modified: Mon, 09 Oct 2017 23:16:31 GMT  
		Size: 6.7 KB (6693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beec7e79df3628c9c6d7ea6837b5a416ff4ca936b925dc3e05065e6e3732cd6`  
		Last Modified: Mon, 09 Oct 2017 23:16:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d0f9c6699c53e0a97c3e10ea38239ff5c5c21a1008239108eff343e744bc47`  
		Last Modified: Thu, 12 Oct 2017 22:05:30 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e1d04fa8b4cca6b4d91b365af53bbbfc0b39fd18e3bd6f12e4676128930392`  
		Last Modified: Thu, 12 Oct 2017 22:05:31 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7049b51a370dbd9f380a24afe77cc126bcd9500bc16ceb76f44cd2dfe84ac4`  
		Last Modified: Thu, 12 Oct 2017 22:05:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; s390x

```console
$ docker pull postgres@sha256:bbf462ed0835118aeb3954a5a4325441b35612b44186a4b04241160ffd734168
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99641453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a7e7eba478e26cc4cd6ea6d5a31e765b13f4102237df2da82c08287c2e446b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:07:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:07:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:07:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:07:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:07:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:26:28 GMT
ENV PG_MAJOR=9.4
# Mon, 09 Oct 2017 23:26:29 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Mon, 09 Oct 2017 23:34:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:34:58 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:34:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:25:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 13 Oct 2017 09:25:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:26:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:26:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:26:00 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:26:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:26:01 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:26:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6047e028c2374e4b2f2846f6e23506d6424d8ce67a2a973e57d005007a2da1b`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e4246c65d329e68db93b3669fcff5a15f212ff2b5983b19592090694b35f8`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 970.2 KB (970247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c307cff99a2946ae5c9f303ffa4ca390f1596e36d1d2a6aa9552446c652396`  
		Last Modified: Mon, 09 Oct 2017 23:43:21 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1942f0fc876a052768b69b3c959cf244aac0cb99d22b3fee650772edcd2c3426`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35245b24c4e062e2e7ccfd64b259f04526c2c6b43ef44254f2960f555eca65`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f30b5458d8231f12a25941875f4929843a632f0c088235bc1a24ba82b5e0e3`  
		Last Modified: Mon, 09 Oct 2017 23:44:16 GMT  
		Size: 38.7 MB (38735543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3538a6a0e133479cceac1a5b11b99a2b0bf6b79d9b81b5e46ee46dd24c85b8dd`  
		Last Modified: Mon, 09 Oct 2017 23:44:07 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45db79bacdd1c913b646b9de6c9875cf3097ab968b28c126576ab2154cb28a4`  
		Last Modified: Mon, 09 Oct 2017 23:44:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41063c2efc89ac01b2d939d23daf11c42fecd0b753b822b0170dc61bf7a5651d`  
		Last Modified: Fri, 13 Oct 2017 09:26:57 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9920fd2dc5136842c1f892eb0e61b4d6b017d8ab314662f9f5e3d8b550d828`  
		Last Modified: Fri, 13 Oct 2017 09:26:57 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdee083ef98207404f458371f617b892dcae84be491cbcb72f4ac7988cac6ae`  
		Last Modified: Fri, 13 Oct 2017 09:26:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.14`

```console
$ docker pull postgres@sha256:a4629b4b84d656ffd18b67c1f3badecb678e5eb6c822f56df426939d795eb732
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
$ docker pull postgres@sha256:b9552c8a07ed85f6a9b01f0efb0f40c0d442d343e7fd7adbc6045dadc9117f6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103229441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13fff887b6fb2239e6d44877be41b8d2a64d5f54384d8b5104bbefa67cbce9af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:45:23 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:45:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:46:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:46:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:46:37 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:46:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:46:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:50:14 GMT
ENV PG_MAJOR=9.4
# Tue, 10 Oct 2017 01:50:14 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 10 Oct 2017 01:51:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:51:13 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:51:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 12 Oct 2017 22:05:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:05:14 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:05:19 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:05:20 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:05:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:05:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:05:26 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:05:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f30b0e3b3b9a6ad13b6c7146d5356b0022c19552b092584af5826867f0651fc`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe77d699370afccc90ead8288bd77dccc002b736cd359e99e968ca637b9a2bcf`  
		Last Modified: Tue, 10 Oct 2017 01:57:51 GMT  
		Size: 985.1 KB (985140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2dc1dca46bb95661f36d38d6f0f612c71a0bc784444af164b752fa852e707e`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 7.1 MB (7112916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355ccacf41c56e595a2c71e18414f06b44a5f783fe0ec22b3053d5e6740f9f55`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b1581b93b4f4a794f1f8ca9ff1ac175d25c2d88b929d3824e8b9b43c537fe`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a92bca9c98c83a61ff2b9abdfdad04a29459d5e4cea79045ba11bd7e4259a7d`  
		Last Modified: Tue, 10 Oct 2017 01:59:56 GMT  
		Size: 42.5 MB (42520640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad560d1f7d4bc57a488182e7d118007dbd6729d771c17bbe209b17bb97d8d17`  
		Last Modified: Tue, 10 Oct 2017 01:59:33 GMT  
		Size: 6.7 KB (6690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f9cc7d72e510a35813cdb7266bcd6c1bd969bbe48db6cf7f4006104f94cbe4`  
		Last Modified: Tue, 10 Oct 2017 01:59:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0a61c74dafbeb2169685ee5d310e7f01f869b4047bd1fd5cedaac5643654d2`  
		Last Modified: Thu, 12 Oct 2017 22:10:03 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae5ce42c8d9d8b6f485ce00f124d97362ffe73e0bc5a459b5c739b2d95c93a9`  
		Last Modified: Thu, 12 Oct 2017 22:10:03 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf14f06aa291312e54fdd291715c79d3352a408378b324c26f03cfd81463f827`  
		Last Modified: Thu, 12 Oct 2017 22:10:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; arm variant v5

```console
$ docker pull postgres@sha256:d6d78c4486d063bfd0fd22e3d75a0aca5492c93b09bca9f3740c19788ab10b7f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95747149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477d7728e707c418c13488bd219cfc266481f2e2102927732378d4d4089e5619`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:57:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:57:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:57:59 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:58:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:59:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:59:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:59:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:59:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:39:46 GMT
ENV PG_MAJOR=9.4
# Mon, 09 Oct 2017 23:39:46 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Mon, 09 Oct 2017 23:57:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:57:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:57:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:38:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 13 Oct 2017 06:38:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:38:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:38:57 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:38:58 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:38:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:38:59 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:38:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f2ea4c35241e9c0d1e612a52e13531a3038fd1d613ccff10f323dbe9977408`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8820953bbb96c5191977d54f962b3147a124c2713b4575f6feeffd1fe7c49f`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 974.6 KB (974649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ded5820b04e0af13a27b346ad4482b18ad0accae84ec9f47c53853c6f8d6d8`  
		Last Modified: Tue, 10 Oct 2017 00:16:16 GMT  
		Size: 7.1 MB (7112800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be442bd996b1c7dde35df775e18f56c9d6d82cfb24d2c1dcf7bdc6d4506a5e47`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790432ad2fedb6ed859cb022b531be4c7264e3f0564322c93b9a86309481919`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54d16079fb588851c1c703fc203b85d73c32d0bdbc3209f9c0a00ae971058fc`  
		Last Modified: Tue, 10 Oct 2017 00:17:13 GMT  
		Size: 36.8 MB (36764142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d784cb77b3a07f3169c0588c6b3facf10620bc9021bb10740382146c4e3a0620`  
		Last Modified: Tue, 10 Oct 2017 00:17:00 GMT  
		Size: 6.7 KB (6689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc669e11a2343f56ca28bed0e5a35aad5e9545667d8ade0b6d62589a0b74e3ea`  
		Last Modified: Tue, 10 Oct 2017 00:17:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5615cbaaa9a09ebb0a6c98c282f35c9e6d7af0c8fb2af7e790f93dc4be6d0a3a`  
		Last Modified: Fri, 13 Oct 2017 06:39:56 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117fee63220f394dd1ac3f7fbc1fdd69fb34c76203022827c3e293fba05f4f58`  
		Last Modified: Fri, 13 Oct 2017 06:39:56 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a44d98b4ff5459ced89542e5de8c682b9481f5d351392e3c2fcbf419e8edee5`  
		Last Modified: Fri, 13 Oct 2017 06:39:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; arm variant v7

```console
$ docker pull postgres@sha256:ae37994f06ea1f6b1e88829447e10028b86cffe6e2fa2762373c78f0e7a88f41
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92384473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da619d2c6651014e0ee889792c642d8afa91740cbce078f432f4e0089cb54c84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:33:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:33:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:33:52 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:34:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:35:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:35:19 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:35:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:35:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:11:21 GMT
ENV PG_MAJOR=9.4
# Tue, 10 Oct 2017 00:11:21 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 10 Oct 2017 00:27:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:27:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:27:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:39:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 13 Oct 2017 03:39:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:39:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:39:08 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:39:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:39:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:39:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:39:09 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:39:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e796fed7e772e65e95ed4c8f0089c9c0a6ee0e98c85189b7bafbcc47de0aee`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953f0e725d183cb5a74c0e2daab0224ed4045eb55967bf6179f6176cc57e74e`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 959.5 KB (959478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371a1407f29895404ec62d6f3e6c2885aa84f261a14ae415b29541f52278f4e4`  
		Last Modified: Tue, 10 Oct 2017 00:46:20 GMT  
		Size: 7.1 MB (7112846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fb6412c8826b372095343b6942a570850ae08c66652750fc8842bf955bf34`  
		Last Modified: Tue, 10 Oct 2017 00:46:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3fe6e8cb381f129f9c7cbfff277a94ef945be8764bead6874d488a46adfdf0`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4548d0e890ab001bd606b3fc9c42ccd9a71d9a56a455a85db8c29cdcefb03f`  
		Last Modified: Tue, 10 Oct 2017 00:47:27 GMT  
		Size: 35.6 MB (35610171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2a164c39629734a8d0e8bae02b802aac50f78b9667b0323c4b7b01f1dae74b`  
		Last Modified: Tue, 10 Oct 2017 00:47:15 GMT  
		Size: 6.7 KB (6688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6666cf77b1db998c5d47c8cb4f4dcefd269f915936d188efeeb25863b19195c`  
		Last Modified: Tue, 10 Oct 2017 00:47:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efb973878b8ace4da7ad1031f28e83cdc09825faabb4deb518708ad8b360f64`  
		Last Modified: Fri, 13 Oct 2017 03:40:30 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85345a20a0d00e5532a2120ac76596aa68b22d568adaa6e9e707a6bc05268e51`  
		Last Modified: Fri, 13 Oct 2017 03:40:30 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deaacb2d0bd1da4f4fad6a7b0cc7e5cf406f92d033a6f5ece8b3914336db7f1`  
		Last Modified: Fri, 13 Oct 2017 03:40:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:b876a2c6d3fe5f7404b9bc16a44e0392492018d74a3257d0e27df07c602c31ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94319927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeab60fdfed36ee8620b14adecf5541a01d1a197435f69ccb8e3c964c109bbf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:46:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:46:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:46:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:48:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:48:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:48:52 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:48:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:48:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 04:10:27 GMT
ENV PG_MAJOR=9.4
# Tue, 10 Oct 2017 04:10:28 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 10 Oct 2017 04:44:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 04:44:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 04:44:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:22:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 13 Oct 2017 14:22:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:22:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:22:15 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:22:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:22:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:22:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:22:19 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:22:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d269ac3366aed392a2a44b85beade574131d53ba59160192a6b0b260530bfd78`  
		Last Modified: Tue, 10 Oct 2017 05:17:42 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7096c714db8e8e099b8fd5bd0fabc9cd768e602ceac3a221d6fe6e088fbc123f`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 952.0 KB (952017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051485f6d630f721f32a814324f208ac476b291d66688d3a8478c9f0692f7b17`  
		Last Modified: Tue, 10 Oct 2017 05:17:44 GMT  
		Size: 7.1 MB (7112960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc74eb62f3b0d967a9cded11bb78bf4e0831d184b65657cb1aa11c219c4a58c6`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf385dd31a98a4aee7da147c97929b09d9ed7ad8475cf090d8b10e3ddb4205c`  
		Last Modified: Tue, 10 Oct 2017 05:17:40 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317910bb0e396e56f9a8f0ba1e160d391a2558f76ef8ef7f6a4734f607bd11d`  
		Last Modified: Tue, 10 Oct 2017 05:19:45 GMT  
		Size: 36.3 MB (36310015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9daec90964aec74fed0018855b9259a0ed67abf465d230b24f996a261c8b4c8`  
		Last Modified: Tue, 10 Oct 2017 05:19:28 GMT  
		Size: 6.7 KB (6688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c53de41f2c0b1253471e338fc994ca5941c60af436787a3f8335f3310b0c8`  
		Last Modified: Tue, 10 Oct 2017 05:19:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b340e62a8d1d07d892000d78b1ff26f38494bf07a7b8949643182199be029cb`  
		Last Modified: Fri, 13 Oct 2017 14:25:16 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cadba61376b9a4b451c5db508b05de8f4e39dfe67fca6b6dc6c562c08fad37`  
		Last Modified: Fri, 13 Oct 2017 14:25:16 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1d41576f37ecd8179b877fb7dd6de8e4f0aa74033dbe58e11389f830bef0c2`  
		Last Modified: Fri, 13 Oct 2017 14:25:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; 386

```console
$ docker pull postgres@sha256:48dce1cfebcfbdf4b8af11c53fbcf8afd954b67a722397a7cb50957abfea803d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105196523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edfabfc367997194f4b1be48ed7473e62ad3feeb86a8fc2a0f4906d78c20692`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:07:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:07:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:07:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:07:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:08:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:08:21 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:08:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:08:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:17:41 GMT
ENV PG_MAJOR=9.4
# Tue, 10 Oct 2017 00:17:41 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Tue, 10 Oct 2017 00:19:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:19:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:19:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:05:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 13 Oct 2017 14:05:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:05:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:05:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:05:24 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:25 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1f516577d1143f05867c50ef1dbd146eee37bacc4512b8cc5edf667b8d7ec7`  
		Last Modified: Tue, 10 Oct 2017 00:27:34 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a01dc90ae2171a283eba2cba23263a5a9e449aaf50e22ab8f7373f213d97af`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 964.0 KB (964035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179a5434e549ef3dfc9b6ba8457e785ba25f645345cd91608d31535a137ab0c1`  
		Last Modified: Tue, 10 Oct 2017 00:27:36 GMT  
		Size: 7.1 MB (7112843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa700e01475a1430c730f7e21c0da3d7f887479d09ab1773c6aee4b09cef390`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495faa146ca9a1ed49c7876730103e9942be34d73cc682278592197d68e3d18`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c705dcaa5217dbb21cf29db621d923d3a1118fd3d3fdb2127358975d0a629083`  
		Last Modified: Tue, 10 Oct 2017 00:28:58 GMT  
		Size: 44.3 MB (44330187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534bf1dda53d584fac2de756dc6d8c0fda1bb4c7afe7037f8970d56b576a12d9`  
		Last Modified: Tue, 10 Oct 2017 00:28:42 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1e71cb89d974b2b77036b5a48b56bfa369a3aeb131b352d99f16ea00749512`  
		Last Modified: Tue, 10 Oct 2017 00:28:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a89b9f1c8391bcf165b1f872c872381bba5241f89d9a44acef7a572a75670f`  
		Last Modified: Fri, 13 Oct 2017 14:06:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd08e214dc47236a2eb800c614fba280a17eb3103b37aa8f8312c5fa5ac384c1`  
		Last Modified: Fri, 13 Oct 2017 14:06:44 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86dc5c131ebcfcde330c0b67ce91b6111b3e12c5364ea2bacfb18b035f2fb5a`  
		Last Modified: Fri, 13 Oct 2017 14:06:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; ppc64le

```console
$ docker pull postgres@sha256:0810347be8bd604c7d7a5aae08f42993374757016b2c99e4f9c296e5a2428bb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101472664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044b5d9cd05e3d47e03fdcd4869c2b95d21a0a5fb9fcf871cc98f026d2590c85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:11:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:11:45 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:15:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:16:25 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:16:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:43:54 GMT
ENV PG_MAJOR=9.4
# Mon, 09 Oct 2017 22:43:58 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Mon, 09 Oct 2017 22:57:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:57:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:57:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:03:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 12 Oct 2017 22:03:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:03:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:03:20 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:03:23 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:03:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:03:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:03:34 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:03:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6feeb37ce73a99209c70d76f88e2b8b98cc2dac509c0754ddf2992b949385e`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16860618575e311bce20466618cd71e379c0701571ba3c10a6ff7e138e882c9`  
		Last Modified: Mon, 09 Oct 2017 23:15:24 GMT  
		Size: 954.4 KB (954439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c5cbb229f9685c6de4348c4e53309a3f77880ac45bc144e2470c7b06e6155c`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 7.1 MB (7113381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4a7d0cc16d3392c10e725e66633f7348aac1d62300392ff7ad1322a9dad095`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d92e50c20e7f0d4bdee28d72b59ea1b1f193fe6a72c6dcb34f597b277f5ec`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f49023bda8e27df39eb3a177c1c208c11df6c4b6c4fc22dbd0dee31f597ace`  
		Last Modified: Mon, 09 Oct 2017 23:16:46 GMT  
		Size: 41.6 MB (41579418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f4906ec576f7fc301ba75ac4ba5ccc1a35963807f31ca5fc5b8d2f03155ac0`  
		Last Modified: Mon, 09 Oct 2017 23:16:31 GMT  
		Size: 6.7 KB (6693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beec7e79df3628c9c6d7ea6837b5a416ff4ca936b925dc3e05065e6e3732cd6`  
		Last Modified: Mon, 09 Oct 2017 23:16:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d0f9c6699c53e0a97c3e10ea38239ff5c5c21a1008239108eff343e744bc47`  
		Last Modified: Thu, 12 Oct 2017 22:05:30 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e1d04fa8b4cca6b4d91b365af53bbbfc0b39fd18e3bd6f12e4676128930392`  
		Last Modified: Thu, 12 Oct 2017 22:05:31 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7049b51a370dbd9f380a24afe77cc126bcd9500bc16ceb76f44cd2dfe84ac4`  
		Last Modified: Thu, 12 Oct 2017 22:05:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.14` - linux; s390x

```console
$ docker pull postgres@sha256:bbf462ed0835118aeb3954a5a4325441b35612b44186a4b04241160ffd734168
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99641453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a7e7eba478e26cc4cd6ea6d5a31e765b13f4102237df2da82c08287c2e446b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:07:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:07:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:07:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:07:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:07:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:26:28 GMT
ENV PG_MAJOR=9.4
# Mon, 09 Oct 2017 23:26:29 GMT
ENV PG_VERSION=9.4.14-1.pgdg80+1
# Mon, 09 Oct 2017 23:34:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:34:58 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:34:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:25:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 13 Oct 2017 09:25:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:26:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:26:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:26:00 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:26:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:26:01 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:26:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6047e028c2374e4b2f2846f6e23506d6424d8ce67a2a973e57d005007a2da1b`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e4246c65d329e68db93b3669fcff5a15f212ff2b5983b19592090694b35f8`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 970.2 KB (970247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c307cff99a2946ae5c9f303ffa4ca390f1596e36d1d2a6aa9552446c652396`  
		Last Modified: Mon, 09 Oct 2017 23:43:21 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1942f0fc876a052768b69b3c959cf244aac0cb99d22b3fee650772edcd2c3426`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35245b24c4e062e2e7ccfd64b259f04526c2c6b43ef44254f2960f555eca65`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f30b5458d8231f12a25941875f4929843a632f0c088235bc1a24ba82b5e0e3`  
		Last Modified: Mon, 09 Oct 2017 23:44:16 GMT  
		Size: 38.7 MB (38735543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3538a6a0e133479cceac1a5b11b99a2b0bf6b79d9b81b5e46ee46dd24c85b8dd`  
		Last Modified: Mon, 09 Oct 2017 23:44:07 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45db79bacdd1c913b646b9de6c9875cf3097ab968b28c126576ab2154cb28a4`  
		Last Modified: Mon, 09 Oct 2017 23:44:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41063c2efc89ac01b2d939d23daf11c42fecd0b753b822b0170dc61bf7a5651d`  
		Last Modified: Fri, 13 Oct 2017 09:26:57 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9920fd2dc5136842c1f892eb0e61b4d6b017d8ab314662f9f5e3d8b550d828`  
		Last Modified: Fri, 13 Oct 2017 09:26:57 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdee083ef98207404f458371f617b892dcae84be491cbcb72f4ac7988cac6ae`  
		Last Modified: Fri, 13 Oct 2017 09:26:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.14-alpine`

```console
$ docker pull postgres@sha256:bc5a81b999185731ef477cb310ff08735a3e2db70b91dbcdb43d218e386bc5ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.14-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:7e09d3f2d838f9f46a2df1ac1ded8308e20b46832146bd12e775d1888bcfd75c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14261822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:748cfd2c8c4583ecb13e87d91d003cec16c7d48d1f4e8c70449c3d2e3395b8fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:36:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:36:43 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:36:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:47:19 GMT
ENV PG_MAJOR=9.4
# Thu, 26 Oct 2017 02:47:20 GMT
ENV PG_VERSION=9.4.14
# Thu, 26 Oct 2017 02:47:20 GMT
ENV PG_SHA256=8e7df23a104b057b360d03180ebcb67f645e198a4a0bee94bf56b2bc9505ec6b
# Thu, 26 Oct 2017 02:50:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:51:00 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:51:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:51:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:51:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:51:02 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:51:03 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:51:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:51:05 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:51:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e3d7aa49539d4f2ca481fae9141528e2a702cb0b2c20b1dcff938b97b0f831`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cd16d74403c16ea5beffdc195cf56a80f2ca4282097410c0521133d91798`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e96c0bb865b6d67cbd9c3af537ea889fac13ec8fbf9d521273e0e12d6db4b6`  
		Last Modified: Thu, 26 Oct 2017 03:00:54 GMT  
		Size: 12.3 MB (12282421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80401de0421e18e292a284ca946e3cb683fb48d811a884536271bcd916df87bf`  
		Last Modified: Thu, 26 Oct 2017 03:00:40 GMT  
		Size: 6.7 KB (6659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6469ce8b51d8ff506a1f13c5cbd66ba7f599ddba3d8b71e66d07878dba2b26a8`  
		Last Modified: Thu, 26 Oct 2017 03:00:39 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924afd7c732e821bbab924bc55d16b1390ba3e06faccbf153aff0e68de5ae17e`  
		Last Modified: Thu, 26 Oct 2017 03:00:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a55c47e32d54ff80d4c7c5ab044bfed892a7a0cd57017341a98d9c02ed879a7`  
		Last Modified: Thu, 26 Oct 2017 03:00:38 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1306d243b7f092dcd33b1b05198938c33ba9d9c4feb60f0e627edae8ca2999f`  
		Last Modified: Thu, 26 Oct 2017 03:00:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:bc5a81b999185731ef477cb310ff08735a3e2db70b91dbcdb43d218e386bc5ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:7e09d3f2d838f9f46a2df1ac1ded8308e20b46832146bd12e775d1888bcfd75c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14261822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:748cfd2c8c4583ecb13e87d91d003cec16c7d48d1f4e8c70449c3d2e3395b8fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:36:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:36:43 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:36:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:47:19 GMT
ENV PG_MAJOR=9.4
# Thu, 26 Oct 2017 02:47:20 GMT
ENV PG_VERSION=9.4.14
# Thu, 26 Oct 2017 02:47:20 GMT
ENV PG_SHA256=8e7df23a104b057b360d03180ebcb67f645e198a4a0bee94bf56b2bc9505ec6b
# Thu, 26 Oct 2017 02:50:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:51:00 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:51:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:51:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:51:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:51:02 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:51:03 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:51:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:51:05 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:51:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e3d7aa49539d4f2ca481fae9141528e2a702cb0b2c20b1dcff938b97b0f831`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cd16d74403c16ea5beffdc195cf56a80f2ca4282097410c0521133d91798`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e96c0bb865b6d67cbd9c3af537ea889fac13ec8fbf9d521273e0e12d6db4b6`  
		Last Modified: Thu, 26 Oct 2017 03:00:54 GMT  
		Size: 12.3 MB (12282421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80401de0421e18e292a284ca946e3cb683fb48d811a884536271bcd916df87bf`  
		Last Modified: Thu, 26 Oct 2017 03:00:40 GMT  
		Size: 6.7 KB (6659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6469ce8b51d8ff506a1f13c5cbd66ba7f599ddba3d8b71e66d07878dba2b26a8`  
		Last Modified: Thu, 26 Oct 2017 03:00:39 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924afd7c732e821bbab924bc55d16b1390ba3e06faccbf153aff0e68de5ae17e`  
		Last Modified: Thu, 26 Oct 2017 03:00:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a55c47e32d54ff80d4c7c5ab044bfed892a7a0cd57017341a98d9c02ed879a7`  
		Last Modified: Thu, 26 Oct 2017 03:00:38 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1306d243b7f092dcd33b1b05198938c33ba9d9c4feb60f0e627edae8ca2999f`  
		Last Modified: Thu, 26 Oct 2017 03:00:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:28ab0855df42ef6507202640cfed9a2cfe1109e36639a3232238a0ec5e4a662d
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
$ docker pull postgres@sha256:ec7637867835b4599e3c8431a580af974fc78ba8d9d2c08c872b80faf5bc16f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103568633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d09d16c13b20e076624144bbe7e8c78fc868f19a11a18d148e0fb8d4666879`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:45:23 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:45:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:46:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:46:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:46:37 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:46:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:46:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:49:09 GMT
ENV PG_MAJOR=9.5
# Tue, 10 Oct 2017 01:49:10 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 10 Oct 2017 01:50:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:50:01 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:50:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:04:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 12 Oct 2017 22:04:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:04:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:04:32 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:04:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:04:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:04:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:04:38 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:04:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f30b0e3b3b9a6ad13b6c7146d5356b0022c19552b092584af5826867f0651fc`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe77d699370afccc90ead8288bd77dccc002b736cd359e99e968ca637b9a2bcf`  
		Last Modified: Tue, 10 Oct 2017 01:57:51 GMT  
		Size: 985.1 KB (985140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2dc1dca46bb95661f36d38d6f0f612c71a0bc784444af164b752fa852e707e`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 7.1 MB (7112916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355ccacf41c56e595a2c71e18414f06b44a5f783fe0ec22b3053d5e6740f9f55`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b1581b93b4f4a794f1f8ca9ff1ac175d25c2d88b929d3824e8b9b43c537fe`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71a7117e516aa38e3fe66aab91bec959ff7e07b963fd4e391387c88f6b873e6`  
		Last Modified: Tue, 10 Oct 2017 01:59:05 GMT  
		Size: 42.9 MB (42859687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5748b0db1def4eb8fd3d336037a71da78cb724a21daf0ba518183e4a0d8cc81f`  
		Last Modified: Tue, 10 Oct 2017 01:58:47 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40c67bb1785863bceaeecbb0830ce50254cfcfe41d41ee120dcc295bfa09df0`  
		Last Modified: Tue, 10 Oct 2017 01:58:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a48a379b8911743a4bfaaa9594a736bf5574028240535ad26bad558d901052`  
		Last Modified: Thu, 12 Oct 2017 22:09:02 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cf943ddcbf875f788789ce98c1324cbe2c8e2e549be8b2026b47da1675ec1e`  
		Last Modified: Thu, 12 Oct 2017 22:09:02 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c157425fadc2201bee09a310a80246822b70b729cb8cef13a5ddceff9492424b`  
		Last Modified: Thu, 12 Oct 2017 22:09:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v5

```console
$ docker pull postgres@sha256:74cd3f3dd5617c6c6bf47e2b0c41ac39c375013dbd2c36f8628f966ebcc775da
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96068835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f72dc77f4ba1c7f93728a04ae9a059774d0d01fbbaeba630584f2249a69c17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:57:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:57:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:57:59 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:58:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:59:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:59:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:59:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:59:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:20:32 GMT
ENV PG_MAJOR=9.5
# Mon, 09 Oct 2017 23:20:33 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Mon, 09 Oct 2017 23:39:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:39:26 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:39:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:38:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 13 Oct 2017 06:38:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:38:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:38:49 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:38:49 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:38:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:38:50 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:38:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f2ea4c35241e9c0d1e612a52e13531a3038fd1d613ccff10f323dbe9977408`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8820953bbb96c5191977d54f962b3147a124c2713b4575f6feeffd1fe7c49f`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 974.6 KB (974649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ded5820b04e0af13a27b346ad4482b18ad0accae84ec9f47c53853c6f8d6d8`  
		Last Modified: Tue, 10 Oct 2017 00:16:16 GMT  
		Size: 7.1 MB (7112800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be442bd996b1c7dde35df775e18f56c9d6d82cfb24d2c1dcf7bdc6d4506a5e47`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790432ad2fedb6ed859cb022b531be4c7264e3f0564322c93b9a86309481919`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806a2e95a809d6a449c0eb2dd33fc0671b28737fa079608993422138934f5cc0`  
		Last Modified: Tue, 10 Oct 2017 00:16:50 GMT  
		Size: 37.1 MB (37085683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eaa90278a65fb6b490a4b634239c26ab86a8435c02f72a0d91b62620070dae2`  
		Last Modified: Tue, 10 Oct 2017 00:16:36 GMT  
		Size: 6.8 KB (6829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dbf5e36218532521a9fe1c6e292cfba0abc1e40db99f33704375ff3e70f46d`  
		Last Modified: Tue, 10 Oct 2017 00:16:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fdbdddbf097f92a91d1f82bba408192796717f754cfb093521a63170336486`  
		Last Modified: Fri, 13 Oct 2017 06:39:46 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513bb781cca1d5b0dd57e7ee190d441a9f022d1b46551dfa3d2d3ffdaeec3203`  
		Last Modified: Fri, 13 Oct 2017 06:39:46 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5312203858a8dd04b3d5db01d9ebd2651b23f02fe90d186eaadf8588786d9b74`  
		Last Modified: Fri, 13 Oct 2017 06:39:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v7

```console
$ docker pull postgres@sha256:9a751a5f295ad029fcdc493ad3b123f6f95fb46b0cec345124a4a804a8679fd0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92684585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc8f67ecfe81cca47416cc1ff5f4fe453d91b4a26065ed952167fa29683d40a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:33:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:33:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:33:52 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:34:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:35:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:35:19 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:35:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:35:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:53:52 GMT
ENV PG_MAJOR=9.5
# Mon, 09 Oct 2017 23:53:52 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 10 Oct 2017 00:11:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:11:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:11:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:38:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 13 Oct 2017 03:38:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:38:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:38:57 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:38:58 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:38:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:38:59 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:38:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e796fed7e772e65e95ed4c8f0089c9c0a6ee0e98c85189b7bafbcc47de0aee`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953f0e725d183cb5a74c0e2daab0224ed4045eb55967bf6179f6176cc57e74e`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 959.5 KB (959478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371a1407f29895404ec62d6f3e6c2885aa84f261a14ae415b29541f52278f4e4`  
		Last Modified: Tue, 10 Oct 2017 00:46:20 GMT  
		Size: 7.1 MB (7112846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fb6412c8826b372095343b6942a570850ae08c66652750fc8842bf955bf34`  
		Last Modified: Tue, 10 Oct 2017 00:46:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3fe6e8cb381f129f9c7cbfff277a94ef945be8764bead6874d488a46adfdf0`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9068d37333a205374cc3ac92caa6e38f38b04aefa2277c6a270f85e4a71dd08b`  
		Last Modified: Tue, 10 Oct 2017 00:47:02 GMT  
		Size: 35.9 MB (35910138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2785bf82c3106b05362877b8cf871d58fc7a10861257e111421bb8a6eeb49b64`  
		Last Modified: Tue, 10 Oct 2017 00:46:50 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7af3f9093e7b49c1f0fecb839f04c3e910097d499bbe5a76350cbec46b9fbb2`  
		Last Modified: Tue, 10 Oct 2017 00:46:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2231e1bc38531d0e74eacdc5f110d7b3b3f06f946efb176d01cb99226d2731f4`  
		Last Modified: Fri, 13 Oct 2017 03:40:14 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa14c2b2f09183961989191b2200da3c24b14a268f9b3b774706c0733d35da5`  
		Last Modified: Fri, 13 Oct 2017 03:40:14 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031204e5377a5343d7bc1b33836d77c1e2e66fd7ae090f7afd15d536fc881bc`  
		Last Modified: Fri, 13 Oct 2017 03:40:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:3abce4b0b88374d6962dedcfd3a24536f680fa171d8ad163a1dad89fc971995d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94636883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3eae8d2f5ffabdb6faba753c3f2fd1c0fced5bfefce6a9055644caf88a94941`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:46:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:46:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:46:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:48:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:48:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:48:52 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:48:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:48:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 03:30:57 GMT
ENV PG_MAJOR=9.5
# Tue, 10 Oct 2017 03:30:58 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 10 Oct 2017 04:09:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 04:09:55 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 04:09:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:21:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 13 Oct 2017 14:21:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:21:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:21:56 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:21:57 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:21:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:21:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:22:00 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:22:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d269ac3366aed392a2a44b85beade574131d53ba59160192a6b0b260530bfd78`  
		Last Modified: Tue, 10 Oct 2017 05:17:42 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7096c714db8e8e099b8fd5bd0fabc9cd768e602ceac3a221d6fe6e088fbc123f`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 952.0 KB (952017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051485f6d630f721f32a814324f208ac476b291d66688d3a8478c9f0692f7b17`  
		Last Modified: Tue, 10 Oct 2017 05:17:44 GMT  
		Size: 7.1 MB (7112960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc74eb62f3b0d967a9cded11bb78bf4e0831d184b65657cb1aa11c219c4a58c6`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf385dd31a98a4aee7da147c97929b09d9ed7ad8475cf090d8b10e3ddb4205c`  
		Last Modified: Tue, 10 Oct 2017 05:17:40 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625917c6be4230eb09e0d6033fabb13065c9526bb863ca59c02791a5add42a8b`  
		Last Modified: Tue, 10 Oct 2017 05:18:54 GMT  
		Size: 36.6 MB (36626824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615644cc66a88a4ad5e403ecb79384d4abd95c5d033798da050175f090347b1a`  
		Last Modified: Tue, 10 Oct 2017 05:18:37 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147feb91a3c1f605a4d5c099f56f2197b4283353f923f4b3feaf69a1928a003c`  
		Last Modified: Tue, 10 Oct 2017 05:18:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d489d8ddc29d4743d7c4888f17a5369f3a93ceb9e748d00eb1cfa0be01c04b7a`  
		Last Modified: Fri, 13 Oct 2017 14:24:48 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc5a8d8ffd9b6869c1541598814512f55e749d84000e0f34ff61425ef8dd27c`  
		Last Modified: Fri, 13 Oct 2017 14:24:48 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565827a41e4e4302a9464c096d5f7427bfc334590d2e60b6a76e96a944e6d306`  
		Last Modified: Fri, 13 Oct 2017 14:24:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; 386

```console
$ docker pull postgres@sha256:dd26983e1232dfe78c989704712d5b6ffc22dbd649f3db5f9bb989c9811ff60d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105549933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a9a29fe8e0c79f2360a4beae533d086dd53ce8b21ba34e29c34bdc983fe802`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:07:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:07:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:07:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:07:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:08:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:08:21 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:08:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:08:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:14:09 GMT
ENV PG_MAJOR=9.5
# Tue, 10 Oct 2017 00:14:09 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 10 Oct 2017 00:15:35 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:17:24 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:17:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:05:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 13 Oct 2017 14:05:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:05:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:05:16 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:05:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:17 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1f516577d1143f05867c50ef1dbd146eee37bacc4512b8cc5edf667b8d7ec7`  
		Last Modified: Tue, 10 Oct 2017 00:27:34 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a01dc90ae2171a283eba2cba23263a5a9e449aaf50e22ab8f7373f213d97af`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 964.0 KB (964035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179a5434e549ef3dfc9b6ba8457e785ba25f645345cd91608d31535a137ab0c1`  
		Last Modified: Tue, 10 Oct 2017 00:27:36 GMT  
		Size: 7.1 MB (7112843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa700e01475a1430c730f7e21c0da3d7f887479d09ab1773c6aee4b09cef390`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495faa146ca9a1ed49c7876730103e9942be34d73cc682278592197d68e3d18`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d117d719e609d57ed9c464ef5baac81f247811e50549efbfe8942b37b566c10`  
		Last Modified: Tue, 10 Oct 2017 00:28:22 GMT  
		Size: 44.7 MB (44683455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c3355f70e11438338cf41932df4d58c79234de281553d36a824529ee71e054`  
		Last Modified: Tue, 10 Oct 2017 00:28:10 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a6ad1f6fa5899649ea828a28ab27b4360160444097883b4189d2635d8bc88a`  
		Last Modified: Tue, 10 Oct 2017 00:28:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4565fca2de8d96f428ee0ca21afda146556b3f06461960269a699224414fcfbc`  
		Last Modified: Fri, 13 Oct 2017 14:06:28 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb977655a59ca2fc61b564cc4a9778f9c9d3474c607ea9d9f74e7bc0c727c4c`  
		Last Modified: Fri, 13 Oct 2017 14:06:28 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c43b7cf7212b1f29c165abae3c19c1fd0a67aa04881f902effe1b1091cba2`  
		Last Modified: Fri, 13 Oct 2017 14:06:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; ppc64le

```console
$ docker pull postgres@sha256:3a131a2bc4fbd9bbacc2442ffd4f38a97bec46572ba4bd78c01ea287814329db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101800823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adc0c576d2ba54f94989006ecbaeba13848df3e9fb3418329b453b9b27ef2b83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:11:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:11:45 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:15:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:16:25 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:16:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:29:51 GMT
ENV PG_MAJOR=9.5
# Mon, 09 Oct 2017 22:29:55 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Mon, 09 Oct 2017 22:42:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:42:30 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:42:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:02:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 12 Oct 2017 22:02:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:02:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:02:48 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:02:50 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:02:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:02:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:03:00 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:03:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6feeb37ce73a99209c70d76f88e2b8b98cc2dac509c0754ddf2992b949385e`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16860618575e311bce20466618cd71e379c0701571ba3c10a6ff7e138e882c9`  
		Last Modified: Mon, 09 Oct 2017 23:15:24 GMT  
		Size: 954.4 KB (954439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c5cbb229f9685c6de4348c4e53309a3f77880ac45bc144e2470c7b06e6155c`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 7.1 MB (7113381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4a7d0cc16d3392c10e725e66633f7348aac1d62300392ff7ad1322a9dad095`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d92e50c20e7f0d4bdee28d72b59ea1b1f193fe6a72c6dcb34f597b277f5ec`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc56b910146c413de162c78da1c0e7bd850014e6c94b0549e654a642d55268e3`  
		Last Modified: Mon, 09 Oct 2017 23:16:14 GMT  
		Size: 41.9 MB (41907435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9897a559ade05e160b2053a81c077640019f483f3ea6a7543de551de5f7903ba`  
		Last Modified: Mon, 09 Oct 2017 23:15:52 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfc084c57f17098de9c9ab2498b67277374d24a549dd61437e22103c7c63558`  
		Last Modified: Mon, 09 Oct 2017 23:15:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71c88ac519ae95a8f28a074e8b6135584fdd93055a5ceb762ba35e90d855d4d`  
		Last Modified: Thu, 12 Oct 2017 22:05:15 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766f1112ef8772d07ebc8b8cbe8917ccc5c4391edbd46b701ff30987f66177b7`  
		Last Modified: Thu, 12 Oct 2017 22:05:16 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c1d2a194036f97f4b4f5b7f6c8ce2c0b94bfa5020e82ef194839d8ed56c6e9`  
		Last Modified: Thu, 12 Oct 2017 22:05:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; s390x

```console
$ docker pull postgres@sha256:6d485b8c6f1815987e353b364a741fad88e9946effcffec58370e671414cc76f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100019352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9489a4c0bec86c939b69c004567f104283c1dfb2ea1147e69f6fc8555f9161`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:07:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:07:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:07:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:07:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:07:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:17:13 GMT
ENV PG_MAJOR=9.5
# Mon, 09 Oct 2017 23:17:13 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Mon, 09 Oct 2017 23:26:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:26:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:26:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:25:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 13 Oct 2017 09:25:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:25:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:25:52 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:25:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:25:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:25:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:25:53 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:25:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6047e028c2374e4b2f2846f6e23506d6424d8ce67a2a973e57d005007a2da1b`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e4246c65d329e68db93b3669fcff5a15f212ff2b5983b19592090694b35f8`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 970.2 KB (970247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c307cff99a2946ae5c9f303ffa4ca390f1596e36d1d2a6aa9552446c652396`  
		Last Modified: Mon, 09 Oct 2017 23:43:21 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1942f0fc876a052768b69b3c959cf244aac0cb99d22b3fee650772edcd2c3426`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35245b24c4e062e2e7ccfd64b259f04526c2c6b43ef44254f2960f555eca65`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a035be6a67d8e7e1f72ae4d4a48c3294c3c6f5fb06fc537d0e973386700862`  
		Last Modified: Mon, 09 Oct 2017 23:43:58 GMT  
		Size: 39.1 MB (39113302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d06df60ff6a9ff09669cac3d5d8f951ce76ea4a45b82980237528e13410991`  
		Last Modified: Mon, 09 Oct 2017 23:43:47 GMT  
		Size: 6.8 KB (6831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c189ee93041c538084b375e7b3b1aa6b0d589d33904112c920fb0d29ff24c785`  
		Last Modified: Mon, 09 Oct 2017 23:43:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc2e1f3d38c4fec0f017cd53fd6511229eb0fb2b05754d35ceb8c4029a157c1`  
		Last Modified: Fri, 13 Oct 2017 09:26:47 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be8a0cf19a9fbe824d44cf230d87994b1d2a7a639817a2f503851a97ef4ffcd`  
		Last Modified: Fri, 13 Oct 2017 09:26:47 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6411e071b3ac49a5fb7eaffea80cf340fc16c1d50dda3a8535b390940aec91bd`  
		Last Modified: Fri, 13 Oct 2017 09:26:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.9`

```console
$ docker pull postgres@sha256:28ab0855df42ef6507202640cfed9a2cfe1109e36639a3232238a0ec5e4a662d
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
$ docker pull postgres@sha256:ec7637867835b4599e3c8431a580af974fc78ba8d9d2c08c872b80faf5bc16f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103568633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d09d16c13b20e076624144bbe7e8c78fc868f19a11a18d148e0fb8d4666879`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:45:23 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:45:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:46:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:46:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:46:37 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:46:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:46:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:49:09 GMT
ENV PG_MAJOR=9.5
# Tue, 10 Oct 2017 01:49:10 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 10 Oct 2017 01:50:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:50:01 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:50:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:04:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 12 Oct 2017 22:04:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:04:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:04:32 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:04:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:04:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:04:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:04:38 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:04:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f30b0e3b3b9a6ad13b6c7146d5356b0022c19552b092584af5826867f0651fc`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe77d699370afccc90ead8288bd77dccc002b736cd359e99e968ca637b9a2bcf`  
		Last Modified: Tue, 10 Oct 2017 01:57:51 GMT  
		Size: 985.1 KB (985140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2dc1dca46bb95661f36d38d6f0f612c71a0bc784444af164b752fa852e707e`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 7.1 MB (7112916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355ccacf41c56e595a2c71e18414f06b44a5f783fe0ec22b3053d5e6740f9f55`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b1581b93b4f4a794f1f8ca9ff1ac175d25c2d88b929d3824e8b9b43c537fe`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71a7117e516aa38e3fe66aab91bec959ff7e07b963fd4e391387c88f6b873e6`  
		Last Modified: Tue, 10 Oct 2017 01:59:05 GMT  
		Size: 42.9 MB (42859687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5748b0db1def4eb8fd3d336037a71da78cb724a21daf0ba518183e4a0d8cc81f`  
		Last Modified: Tue, 10 Oct 2017 01:58:47 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40c67bb1785863bceaeecbb0830ce50254cfcfe41d41ee120dcc295bfa09df0`  
		Last Modified: Tue, 10 Oct 2017 01:58:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a48a379b8911743a4bfaaa9594a736bf5574028240535ad26bad558d901052`  
		Last Modified: Thu, 12 Oct 2017 22:09:02 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cf943ddcbf875f788789ce98c1324cbe2c8e2e549be8b2026b47da1675ec1e`  
		Last Modified: Thu, 12 Oct 2017 22:09:02 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c157425fadc2201bee09a310a80246822b70b729cb8cef13a5ddceff9492424b`  
		Last Modified: Thu, 12 Oct 2017 22:09:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; arm variant v5

```console
$ docker pull postgres@sha256:74cd3f3dd5617c6c6bf47e2b0c41ac39c375013dbd2c36f8628f966ebcc775da
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96068835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f72dc77f4ba1c7f93728a04ae9a059774d0d01fbbaeba630584f2249a69c17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:57:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:57:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:57:59 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:58:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:59:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:59:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:59:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:59:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:20:32 GMT
ENV PG_MAJOR=9.5
# Mon, 09 Oct 2017 23:20:33 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Mon, 09 Oct 2017 23:39:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:39:26 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:39:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:38:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 13 Oct 2017 06:38:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:38:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:38:49 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:38:49 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:38:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:38:50 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:38:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f2ea4c35241e9c0d1e612a52e13531a3038fd1d613ccff10f323dbe9977408`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8820953bbb96c5191977d54f962b3147a124c2713b4575f6feeffd1fe7c49f`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 974.6 KB (974649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ded5820b04e0af13a27b346ad4482b18ad0accae84ec9f47c53853c6f8d6d8`  
		Last Modified: Tue, 10 Oct 2017 00:16:16 GMT  
		Size: 7.1 MB (7112800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be442bd996b1c7dde35df775e18f56c9d6d82cfb24d2c1dcf7bdc6d4506a5e47`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790432ad2fedb6ed859cb022b531be4c7264e3f0564322c93b9a86309481919`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806a2e95a809d6a449c0eb2dd33fc0671b28737fa079608993422138934f5cc0`  
		Last Modified: Tue, 10 Oct 2017 00:16:50 GMT  
		Size: 37.1 MB (37085683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eaa90278a65fb6b490a4b634239c26ab86a8435c02f72a0d91b62620070dae2`  
		Last Modified: Tue, 10 Oct 2017 00:16:36 GMT  
		Size: 6.8 KB (6829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dbf5e36218532521a9fe1c6e292cfba0abc1e40db99f33704375ff3e70f46d`  
		Last Modified: Tue, 10 Oct 2017 00:16:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fdbdddbf097f92a91d1f82bba408192796717f754cfb093521a63170336486`  
		Last Modified: Fri, 13 Oct 2017 06:39:46 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513bb781cca1d5b0dd57e7ee190d441a9f022d1b46551dfa3d2d3ffdaeec3203`  
		Last Modified: Fri, 13 Oct 2017 06:39:46 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5312203858a8dd04b3d5db01d9ebd2651b23f02fe90d186eaadf8588786d9b74`  
		Last Modified: Fri, 13 Oct 2017 06:39:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; arm variant v7

```console
$ docker pull postgres@sha256:9a751a5f295ad029fcdc493ad3b123f6f95fb46b0cec345124a4a804a8679fd0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92684585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc8f67ecfe81cca47416cc1ff5f4fe453d91b4a26065ed952167fa29683d40a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:33:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:33:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:33:52 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:34:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:35:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:35:19 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:35:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:35:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:53:52 GMT
ENV PG_MAJOR=9.5
# Mon, 09 Oct 2017 23:53:52 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 10 Oct 2017 00:11:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:11:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:11:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:38:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 13 Oct 2017 03:38:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:38:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:38:57 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:38:58 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:38:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:38:59 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:38:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e796fed7e772e65e95ed4c8f0089c9c0a6ee0e98c85189b7bafbcc47de0aee`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953f0e725d183cb5a74c0e2daab0224ed4045eb55967bf6179f6176cc57e74e`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 959.5 KB (959478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371a1407f29895404ec62d6f3e6c2885aa84f261a14ae415b29541f52278f4e4`  
		Last Modified: Tue, 10 Oct 2017 00:46:20 GMT  
		Size: 7.1 MB (7112846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fb6412c8826b372095343b6942a570850ae08c66652750fc8842bf955bf34`  
		Last Modified: Tue, 10 Oct 2017 00:46:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3fe6e8cb381f129f9c7cbfff277a94ef945be8764bead6874d488a46adfdf0`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9068d37333a205374cc3ac92caa6e38f38b04aefa2277c6a270f85e4a71dd08b`  
		Last Modified: Tue, 10 Oct 2017 00:47:02 GMT  
		Size: 35.9 MB (35910138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2785bf82c3106b05362877b8cf871d58fc7a10861257e111421bb8a6eeb49b64`  
		Last Modified: Tue, 10 Oct 2017 00:46:50 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7af3f9093e7b49c1f0fecb839f04c3e910097d499bbe5a76350cbec46b9fbb2`  
		Last Modified: Tue, 10 Oct 2017 00:46:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2231e1bc38531d0e74eacdc5f110d7b3b3f06f946efb176d01cb99226d2731f4`  
		Last Modified: Fri, 13 Oct 2017 03:40:14 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa14c2b2f09183961989191b2200da3c24b14a268f9b3b774706c0733d35da5`  
		Last Modified: Fri, 13 Oct 2017 03:40:14 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031204e5377a5343d7bc1b33836d77c1e2e66fd7ae090f7afd15d536fc881bc`  
		Last Modified: Fri, 13 Oct 2017 03:40:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:3abce4b0b88374d6962dedcfd3a24536f680fa171d8ad163a1dad89fc971995d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94636883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3eae8d2f5ffabdb6faba753c3f2fd1c0fced5bfefce6a9055644caf88a94941`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:46:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:46:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:46:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:48:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:48:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:48:52 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:48:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:48:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 03:30:57 GMT
ENV PG_MAJOR=9.5
# Tue, 10 Oct 2017 03:30:58 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 10 Oct 2017 04:09:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 04:09:55 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 04:09:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:21:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 13 Oct 2017 14:21:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:21:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:21:56 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:21:57 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:21:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:21:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:22:00 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:22:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d269ac3366aed392a2a44b85beade574131d53ba59160192a6b0b260530bfd78`  
		Last Modified: Tue, 10 Oct 2017 05:17:42 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7096c714db8e8e099b8fd5bd0fabc9cd768e602ceac3a221d6fe6e088fbc123f`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 952.0 KB (952017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051485f6d630f721f32a814324f208ac476b291d66688d3a8478c9f0692f7b17`  
		Last Modified: Tue, 10 Oct 2017 05:17:44 GMT  
		Size: 7.1 MB (7112960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc74eb62f3b0d967a9cded11bb78bf4e0831d184b65657cb1aa11c219c4a58c6`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf385dd31a98a4aee7da147c97929b09d9ed7ad8475cf090d8b10e3ddb4205c`  
		Last Modified: Tue, 10 Oct 2017 05:17:40 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625917c6be4230eb09e0d6033fabb13065c9526bb863ca59c02791a5add42a8b`  
		Last Modified: Tue, 10 Oct 2017 05:18:54 GMT  
		Size: 36.6 MB (36626824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615644cc66a88a4ad5e403ecb79384d4abd95c5d033798da050175f090347b1a`  
		Last Modified: Tue, 10 Oct 2017 05:18:37 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147feb91a3c1f605a4d5c099f56f2197b4283353f923f4b3feaf69a1928a003c`  
		Last Modified: Tue, 10 Oct 2017 05:18:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d489d8ddc29d4743d7c4888f17a5369f3a93ceb9e748d00eb1cfa0be01c04b7a`  
		Last Modified: Fri, 13 Oct 2017 14:24:48 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc5a8d8ffd9b6869c1541598814512f55e749d84000e0f34ff61425ef8dd27c`  
		Last Modified: Fri, 13 Oct 2017 14:24:48 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565827a41e4e4302a9464c096d5f7427bfc334590d2e60b6a76e96a944e6d306`  
		Last Modified: Fri, 13 Oct 2017 14:24:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; 386

```console
$ docker pull postgres@sha256:dd26983e1232dfe78c989704712d5b6ffc22dbd649f3db5f9bb989c9811ff60d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105549933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a9a29fe8e0c79f2360a4beae533d086dd53ce8b21ba34e29c34bdc983fe802`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:07:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:07:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:07:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:07:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:08:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:08:21 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:08:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:08:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:14:09 GMT
ENV PG_MAJOR=9.5
# Tue, 10 Oct 2017 00:14:09 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Tue, 10 Oct 2017 00:15:35 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:17:24 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:17:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:05:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 13 Oct 2017 14:05:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:05:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:05:16 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:05:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:17 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1f516577d1143f05867c50ef1dbd146eee37bacc4512b8cc5edf667b8d7ec7`  
		Last Modified: Tue, 10 Oct 2017 00:27:34 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a01dc90ae2171a283eba2cba23263a5a9e449aaf50e22ab8f7373f213d97af`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 964.0 KB (964035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179a5434e549ef3dfc9b6ba8457e785ba25f645345cd91608d31535a137ab0c1`  
		Last Modified: Tue, 10 Oct 2017 00:27:36 GMT  
		Size: 7.1 MB (7112843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa700e01475a1430c730f7e21c0da3d7f887479d09ab1773c6aee4b09cef390`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495faa146ca9a1ed49c7876730103e9942be34d73cc682278592197d68e3d18`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d117d719e609d57ed9c464ef5baac81f247811e50549efbfe8942b37b566c10`  
		Last Modified: Tue, 10 Oct 2017 00:28:22 GMT  
		Size: 44.7 MB (44683455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c3355f70e11438338cf41932df4d58c79234de281553d36a824529ee71e054`  
		Last Modified: Tue, 10 Oct 2017 00:28:10 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a6ad1f6fa5899649ea828a28ab27b4360160444097883b4189d2635d8bc88a`  
		Last Modified: Tue, 10 Oct 2017 00:28:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4565fca2de8d96f428ee0ca21afda146556b3f06461960269a699224414fcfbc`  
		Last Modified: Fri, 13 Oct 2017 14:06:28 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb977655a59ca2fc61b564cc4a9778f9c9d3474c607ea9d9f74e7bc0c727c4c`  
		Last Modified: Fri, 13 Oct 2017 14:06:28 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c43b7cf7212b1f29c165abae3c19c1fd0a67aa04881f902effe1b1091cba2`  
		Last Modified: Fri, 13 Oct 2017 14:06:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; ppc64le

```console
$ docker pull postgres@sha256:3a131a2bc4fbd9bbacc2442ffd4f38a97bec46572ba4bd78c01ea287814329db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101800823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adc0c576d2ba54f94989006ecbaeba13848df3e9fb3418329b453b9b27ef2b83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:11:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:11:45 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:15:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:16:25 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:16:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:29:51 GMT
ENV PG_MAJOR=9.5
# Mon, 09 Oct 2017 22:29:55 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Mon, 09 Oct 2017 22:42:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:42:30 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:42:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:02:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 12 Oct 2017 22:02:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:02:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:02:48 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:02:50 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:02:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:02:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:03:00 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:03:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6feeb37ce73a99209c70d76f88e2b8b98cc2dac509c0754ddf2992b949385e`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16860618575e311bce20466618cd71e379c0701571ba3c10a6ff7e138e882c9`  
		Last Modified: Mon, 09 Oct 2017 23:15:24 GMT  
		Size: 954.4 KB (954439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c5cbb229f9685c6de4348c4e53309a3f77880ac45bc144e2470c7b06e6155c`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 7.1 MB (7113381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4a7d0cc16d3392c10e725e66633f7348aac1d62300392ff7ad1322a9dad095`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d92e50c20e7f0d4bdee28d72b59ea1b1f193fe6a72c6dcb34f597b277f5ec`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc56b910146c413de162c78da1c0e7bd850014e6c94b0549e654a642d55268e3`  
		Last Modified: Mon, 09 Oct 2017 23:16:14 GMT  
		Size: 41.9 MB (41907435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9897a559ade05e160b2053a81c077640019f483f3ea6a7543de551de5f7903ba`  
		Last Modified: Mon, 09 Oct 2017 23:15:52 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfc084c57f17098de9c9ab2498b67277374d24a549dd61437e22103c7c63558`  
		Last Modified: Mon, 09 Oct 2017 23:15:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71c88ac519ae95a8f28a074e8b6135584fdd93055a5ceb762ba35e90d855d4d`  
		Last Modified: Thu, 12 Oct 2017 22:05:15 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766f1112ef8772d07ebc8b8cbe8917ccc5c4391edbd46b701ff30987f66177b7`  
		Last Modified: Thu, 12 Oct 2017 22:05:16 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c1d2a194036f97f4b4f5b7f6c8ce2c0b94bfa5020e82ef194839d8ed56c6e9`  
		Last Modified: Thu, 12 Oct 2017 22:05:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.9` - linux; s390x

```console
$ docker pull postgres@sha256:6d485b8c6f1815987e353b364a741fad88e9946effcffec58370e671414cc76f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100019352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9489a4c0bec86c939b69c004567f104283c1dfb2ea1147e69f6fc8555f9161`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:07:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:07:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:07:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:07:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:07:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:17:13 GMT
ENV PG_MAJOR=9.5
# Mon, 09 Oct 2017 23:17:13 GMT
ENV PG_VERSION=9.5.9-1.pgdg80+1
# Mon, 09 Oct 2017 23:26:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:26:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:26:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:25:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 13 Oct 2017 09:25:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:25:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:25:52 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:25:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:25:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:25:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:25:53 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:25:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6047e028c2374e4b2f2846f6e23506d6424d8ce67a2a973e57d005007a2da1b`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e4246c65d329e68db93b3669fcff5a15f212ff2b5983b19592090694b35f8`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 970.2 KB (970247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c307cff99a2946ae5c9f303ffa4ca390f1596e36d1d2a6aa9552446c652396`  
		Last Modified: Mon, 09 Oct 2017 23:43:21 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1942f0fc876a052768b69b3c959cf244aac0cb99d22b3fee650772edcd2c3426`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35245b24c4e062e2e7ccfd64b259f04526c2c6b43ef44254f2960f555eca65`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a035be6a67d8e7e1f72ae4d4a48c3294c3c6f5fb06fc537d0e973386700862`  
		Last Modified: Mon, 09 Oct 2017 23:43:58 GMT  
		Size: 39.1 MB (39113302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d06df60ff6a9ff09669cac3d5d8f951ce76ea4a45b82980237528e13410991`  
		Last Modified: Mon, 09 Oct 2017 23:43:47 GMT  
		Size: 6.8 KB (6831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c189ee93041c538084b375e7b3b1aa6b0d589d33904112c920fb0d29ff24c785`  
		Last Modified: Mon, 09 Oct 2017 23:43:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc2e1f3d38c4fec0f017cd53fd6511229eb0fb2b05754d35ceb8c4029a157c1`  
		Last Modified: Fri, 13 Oct 2017 09:26:47 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be8a0cf19a9fbe824d44cf230d87994b1d2a7a639817a2f503851a97ef4ffcd`  
		Last Modified: Fri, 13 Oct 2017 09:26:47 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6411e071b3ac49a5fb7eaffea80cf340fc16c1d50dda3a8535b390940aec91bd`  
		Last Modified: Fri, 13 Oct 2017 09:26:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.9-alpine`

```console
$ docker pull postgres@sha256:900e68344972922b64ac23c042e2160e92a30da7c0c5f5b573430d5e0e7bb029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:206de5c3ca50aaf9638f40b784c2134e7c12c63ef7a4c9776f2cf169653bd27e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14400918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547d85eeb569c14b2104b534fd8b1fbb50549a4389c78d41adc6ad1d5826637e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:36:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:36:43 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:36:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:40:49 GMT
ENV PG_MAJOR=9.5
# Thu, 26 Oct 2017 02:40:49 GMT
ENV PG_VERSION=9.5.9
# Thu, 26 Oct 2017 02:40:49 GMT
ENV PG_SHA256=e98cd5c664ab5a05cb83618ba8078647815cb71f7a60437f0322c7518727cdd4
# Thu, 26 Oct 2017 02:43:44 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:47:07 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:47:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:47:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:47:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:47:09 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:47:09 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:47:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:47:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:47:10 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:47:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e3d7aa49539d4f2ca481fae9141528e2a702cb0b2c20b1dcff938b97b0f831`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cd16d74403c16ea5beffdc195cf56a80f2ca4282097410c0521133d91798`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1141035616861b086fbe463aadca34fb0dfa57675d1afb3f0e2b1c8b9de9814e`  
		Last Modified: Thu, 26 Oct 2017 03:00:02 GMT  
		Size: 12.4 MB (12421369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e090c44fda5d371c368389a179faca626bafcb764038f144c6f40fa41188481e`  
		Last Modified: Thu, 26 Oct 2017 02:59:54 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fbf9abadef9a96fe7d92e12f8d14b50d9c291ef13e2c46a484362ccc142211`  
		Last Modified: Thu, 26 Oct 2017 02:59:54 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf6fe8f452b1b456d87ee9d6e6e476d7a3e703eb316b595d383c328c7edebf3`  
		Last Modified: Thu, 26 Oct 2017 02:59:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e90a2fc67d1f2312489ce38081fe3864d61e78057bdfa1b89f41ff7ba8267a`  
		Last Modified: Thu, 26 Oct 2017 02:59:54 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8224bebe38774ef647855ab37f8d81ec761f7905e61eac95118121deaab8c8be`  
		Last Modified: Thu, 26 Oct 2017 02:59:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:900e68344972922b64ac23c042e2160e92a30da7c0c5f5b573430d5e0e7bb029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:206de5c3ca50aaf9638f40b784c2134e7c12c63ef7a4c9776f2cf169653bd27e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14400918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547d85eeb569c14b2104b534fd8b1fbb50549a4389c78d41adc6ad1d5826637e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:36:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:36:43 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:36:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:40:49 GMT
ENV PG_MAJOR=9.5
# Thu, 26 Oct 2017 02:40:49 GMT
ENV PG_VERSION=9.5.9
# Thu, 26 Oct 2017 02:40:49 GMT
ENV PG_SHA256=e98cd5c664ab5a05cb83618ba8078647815cb71f7a60437f0322c7518727cdd4
# Thu, 26 Oct 2017 02:43:44 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:47:07 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:47:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:47:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:47:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:47:09 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:47:09 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:47:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:47:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:47:10 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:47:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e3d7aa49539d4f2ca481fae9141528e2a702cb0b2c20b1dcff938b97b0f831`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cd16d74403c16ea5beffdc195cf56a80f2ca4282097410c0521133d91798`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1141035616861b086fbe463aadca34fb0dfa57675d1afb3f0e2b1c8b9de9814e`  
		Last Modified: Thu, 26 Oct 2017 03:00:02 GMT  
		Size: 12.4 MB (12421369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e090c44fda5d371c368389a179faca626bafcb764038f144c6f40fa41188481e`  
		Last Modified: Thu, 26 Oct 2017 02:59:54 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fbf9abadef9a96fe7d92e12f8d14b50d9c291ef13e2c46a484362ccc142211`  
		Last Modified: Thu, 26 Oct 2017 02:59:54 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf6fe8f452b1b456d87ee9d6e6e476d7a3e703eb316b595d383c328c7edebf3`  
		Last Modified: Thu, 26 Oct 2017 02:59:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e90a2fc67d1f2312489ce38081fe3864d61e78057bdfa1b89f41ff7ba8267a`  
		Last Modified: Thu, 26 Oct 2017 02:59:54 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8224bebe38774ef647855ab37f8d81ec761f7905e61eac95118121deaab8c8be`  
		Last Modified: Thu, 26 Oct 2017 02:59:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:318757ed6291e6a1ef86312ac453b9b4a67b48495b59ca2dece909cb0c688c53
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
$ docker pull postgres@sha256:f2233fcd705f396694ffbb3ce9b6491aad57c814b5d4892f4409b934ec8b72cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104118983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d7834a2df3a323807d0b97aba3230c2ed7f41f990c971ebf78442649d814aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:45:23 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:45:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:46:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:46:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:46:37 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:46:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:46:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:46:46 GMT
ENV PG_MAJOR=9.6
# Tue, 10 Oct 2017 01:46:46 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Tue, 10 Oct 2017 01:47:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:47:58 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:47:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:03:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 12 Oct 2017 22:03:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:03:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:03:55 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:03:55 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:03:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:04:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:04:01 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:04:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f30b0e3b3b9a6ad13b6c7146d5356b0022c19552b092584af5826867f0651fc`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe77d699370afccc90ead8288bd77dccc002b736cd359e99e968ca637b9a2bcf`  
		Last Modified: Tue, 10 Oct 2017 01:57:51 GMT  
		Size: 985.1 KB (985140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2dc1dca46bb95661f36d38d6f0f612c71a0bc784444af164b752fa852e707e`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 7.1 MB (7112916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355ccacf41c56e595a2c71e18414f06b44a5f783fe0ec22b3053d5e6740f9f55`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b1581b93b4f4a794f1f8ca9ff1ac175d25c2d88b929d3824e8b9b43c537fe`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2750bfbf9e9260271295499c62d53dd71afaa41912bcc16e6154d7343f378`  
		Last Modified: Tue, 10 Oct 2017 01:58:08 GMT  
		Size: 43.4 MB (43409772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53d44bda70c0a76b7e06fcc294bcc03a3c287c37cb589571319c5f04404c9e4`  
		Last Modified: Tue, 10 Oct 2017 01:57:48 GMT  
		Size: 7.1 KB (7102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434e93d2134c757e65fc6526c82106d0bf5333345cf766e7a6e01a91ef537ccc`  
		Last Modified: Tue, 10 Oct 2017 01:57:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e045e82a2f26da72de39ce4068005b7508a66a3614e16e93376c2fdf145bba1d`  
		Last Modified: Thu, 12 Oct 2017 22:07:36 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a67efda883b947993487bdbc0d19d702850d794cbc1fb1c1f532fc52b678b03`  
		Last Modified: Thu, 12 Oct 2017 22:07:36 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c883ae91b811df84c6c378439886e5cfdce1af6af747dadb10a54f30f55d1c`  
		Last Modified: Thu, 12 Oct 2017 22:07:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v5

```console
$ docker pull postgres@sha256:3164e29fe5a42d18c71aa71775501474fb496521a6e15c12d93801047fc77f2e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96589634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ffdd68675a8a105b922ef13d834f761448ef96f4ebded279a390d17ea2641b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:57:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:57:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:57:59 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:58:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:59:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:59:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:59:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:59:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:59:44 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 22:59:44 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 23:20:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:20:21 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:20:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:38:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 06:38:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:38:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:38:40 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:38:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:38:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:38:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:38:41 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:38:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f2ea4c35241e9c0d1e612a52e13531a3038fd1d613ccff10f323dbe9977408`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8820953bbb96c5191977d54f962b3147a124c2713b4575f6feeffd1fe7c49f`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 974.6 KB (974649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ded5820b04e0af13a27b346ad4482b18ad0accae84ec9f47c53853c6f8d6d8`  
		Last Modified: Tue, 10 Oct 2017 00:16:16 GMT  
		Size: 7.1 MB (7112800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be442bd996b1c7dde35df775e18f56c9d6d82cfb24d2c1dcf7bdc6d4506a5e47`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790432ad2fedb6ed859cb022b531be4c7264e3f0564322c93b9a86309481919`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d62f5d58db7138001c21f6d62ed538dfe19a7cb8fcc93467db88e687e4e8631`  
		Last Modified: Tue, 10 Oct 2017 00:16:25 GMT  
		Size: 37.6 MB (37606204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992a0d975ab8b34a21a6672cbd2a29b7be3c15198b8b7f4fd6f2a4d2930fc08c`  
		Last Modified: Tue, 10 Oct 2017 00:16:11 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e880913788d1d2eee60d47f812d6e5399067ca0b21b0bfd8467727051992fc`  
		Last Modified: Tue, 10 Oct 2017 00:16:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff252d609a2eba0d5de59b01c8bfbe5d32610fcba5f5ba5df14649935700e1`  
		Last Modified: Fri, 13 Oct 2017 06:39:33 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a66b05389a6223ff7b6930f2d7b8121b4ed21cb291e1b97e9e422e7ad724444`  
		Last Modified: Fri, 13 Oct 2017 06:39:32 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0af11fd2e86582a660e8761d853e5c901f993f3a70c2ce15fbaa933e712959`  
		Last Modified: Fri, 13 Oct 2017 06:39:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v7

```console
$ docker pull postgres@sha256:e62caf43b8ca0de28479165f9c9b1a94e3d1ea14edcad237c091a68b256386f3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93183748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac721121fecb995d01042babe07464ed5130a5284f1e679882c120a2dfdaa36b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:33:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:33:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:33:52 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:34:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:35:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:35:19 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:35:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:35:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:35:29 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 23:35:29 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 23:53:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:53:40 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:53:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:38:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 03:38:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:38:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:38:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:38:47 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:38:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:38:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:38:49 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:38:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e796fed7e772e65e95ed4c8f0089c9c0a6ee0e98c85189b7bafbcc47de0aee`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953f0e725d183cb5a74c0e2daab0224ed4045eb55967bf6179f6176cc57e74e`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 959.5 KB (959478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371a1407f29895404ec62d6f3e6c2885aa84f261a14ae415b29541f52278f4e4`  
		Last Modified: Tue, 10 Oct 2017 00:46:20 GMT  
		Size: 7.1 MB (7112846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fb6412c8826b372095343b6942a570850ae08c66652750fc8842bf955bf34`  
		Last Modified: Tue, 10 Oct 2017 00:46:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3fe6e8cb381f129f9c7cbfff277a94ef945be8764bead6874d488a46adfdf0`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a7eeb642144c116dd12ed853f702a1298f657ac5836975e934b55c8abec17`  
		Last Modified: Tue, 10 Oct 2017 00:46:32 GMT  
		Size: 36.4 MB (36409025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e5992bcaec9861b5334fd494adc685d8ac38c9879a72c47ce0b1205b80ee43`  
		Last Modified: Tue, 10 Oct 2017 00:46:15 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090778b5f1186cc64a7d0ba553b281e38da4d6495d01ccf5cf9d28aafcc928c3`  
		Last Modified: Tue, 10 Oct 2017 00:46:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af32ceb68f0dbd9fdf7f92dd55e93fba3e635b894075c930dba1e643d4b48db`  
		Last Modified: Fri, 13 Oct 2017 03:39:53 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e102b1f694cc2711b6e42bf56b9b282258c6480b89870ba993a6adb8877d1db8`  
		Last Modified: Fri, 13 Oct 2017 03:39:53 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3823ba1090129ff8b1fed08fe9f9a751c4ff200995a9c8d11a50235653dd2e1`  
		Last Modified: Fri, 13 Oct 2017 03:39:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:8c6897bb55366ad64c2c3923acb172471aa349e867570a81e817937d63b3d16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95156932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfbe7fd4d6a46c28e71649d6e6c236007decf51e87fe5b88dfe750d4a29d6cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:46:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:46:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:46:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:48:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:48:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:48:52 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:48:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:48:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 02:49:00 GMT
ENV PG_MAJOR=9.6
# Tue, 10 Oct 2017 02:49:01 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Tue, 10 Oct 2017 03:30:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 03:30:15 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 03:30:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:21:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 14:21:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:21:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:21:37 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:21:37 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:21:40 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:21:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d269ac3366aed392a2a44b85beade574131d53ba59160192a6b0b260530bfd78`  
		Last Modified: Tue, 10 Oct 2017 05:17:42 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7096c714db8e8e099b8fd5bd0fabc9cd768e602ceac3a221d6fe6e088fbc123f`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 952.0 KB (952017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051485f6d630f721f32a814324f208ac476b291d66688d3a8478c9f0692f7b17`  
		Last Modified: Tue, 10 Oct 2017 05:17:44 GMT  
		Size: 7.1 MB (7112960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc74eb62f3b0d967a9cded11bb78bf4e0831d184b65657cb1aa11c219c4a58c6`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf385dd31a98a4aee7da147c97929b09d9ed7ad8475cf090d8b10e3ddb4205c`  
		Last Modified: Tue, 10 Oct 2017 05:17:40 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25580eeedc5e1c8c5c79d552325c4fb8b675920a86e1fd55254ef14af04c970e`  
		Last Modified: Tue, 10 Oct 2017 05:17:55 GMT  
		Size: 37.1 MB (37146608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d853c44725bb744ca827ec7856d83ed34b8836bee18842b21ffaf961e54e51f2`  
		Last Modified: Tue, 10 Oct 2017 05:17:37 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16fefe55ce9240278947fad1626c668dfd879e38f738cff2e9d416a73d5e2cc`  
		Last Modified: Tue, 10 Oct 2017 05:17:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8133f7773ca276c67bfc31e8ff3657587eb5fdde7f666fe8fec451c97ae249cd`  
		Last Modified: Fri, 13 Oct 2017 14:23:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e620fb024ee50b36b9458f643a09f8347f53dbede2f0cea78da45c350d08d4de`  
		Last Modified: Fri, 13 Oct 2017 14:23:43 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd4de48096ff9ff3cad446cdb82ebaf84c3ed4cbb6ecaa2358d703170569f89`  
		Last Modified: Fri, 13 Oct 2017 14:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; 386

```console
$ docker pull postgres@sha256:8cfbffb070719556f942302a1e96f3a05e67c85780c33fdad920a2484c2327bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106085954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db00a385ee2a383204811e80412cc0ab903ea829831d4ba92485ccd2b67b02e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:07:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:07:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:07:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:07:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:08:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:08:21 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:08:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:08:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:08:31 GMT
ENV PG_MAJOR=9.6
# Tue, 10 Oct 2017 00:08:31 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Tue, 10 Oct 2017 00:10:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:10:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:10:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:05:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 14:05:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:05:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:05:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:05:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:09 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1f516577d1143f05867c50ef1dbd146eee37bacc4512b8cc5edf667b8d7ec7`  
		Last Modified: Tue, 10 Oct 2017 00:27:34 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a01dc90ae2171a283eba2cba23263a5a9e449aaf50e22ab8f7373f213d97af`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 964.0 KB (964035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179a5434e549ef3dfc9b6ba8457e785ba25f645345cd91608d31535a137ab0c1`  
		Last Modified: Tue, 10 Oct 2017 00:27:36 GMT  
		Size: 7.1 MB (7112843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa700e01475a1430c730f7e21c0da3d7f887479d09ab1773c6aee4b09cef390`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495faa146ca9a1ed49c7876730103e9942be34d73cc682278592197d68e3d18`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fbcb6b07a3fbfbbf598a74b3dfecd8fdd52872818cd01bb2f68ea43039b00d`  
		Last Modified: Tue, 10 Oct 2017 00:27:46 GMT  
		Size: 45.2 MB (45219202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679704cbee6eb4fdbe4907bc3b332cde6e83fe9e90778aaf519c0250f8f62521`  
		Last Modified: Tue, 10 Oct 2017 00:27:32 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12c1e84c708d9ca4204ed6d0bb66e6bfc124c0970d917982cfa7e07d659b14a`  
		Last Modified: Tue, 10 Oct 2017 00:27:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d2c22b4697905841a462ff2373e1e1ab953fbe47418859b5887b39af793ed9`  
		Last Modified: Fri, 13 Oct 2017 14:06:06 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f141f73849d4cf6a6d28359603deb1d596696d288daca478210c7656ac72c8`  
		Last Modified: Fri, 13 Oct 2017 14:06:06 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1843edbda5707175c343c794ef7a2d87e093f087d4dcd5b618cf429826ad5f87`  
		Last Modified: Fri, 13 Oct 2017 14:06:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; ppc64le

```console
$ docker pull postgres@sha256:9ae0bce79139298b27e5bdc24c22a973b8894827ebe1e60128290b3a5a009ba4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102326310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed146a87abe16bedf146f4edc1bf47702c3d4932e2ef73f21835071cd4b8e381`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:11:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:11:45 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:15:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:16:25 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:16:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:16:50 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 22:16:52 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 22:28:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:28:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:28:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:02:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 12 Oct 2017 22:02:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:02:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:02:14 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:02:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:02:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:02:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:02:27 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:02:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6feeb37ce73a99209c70d76f88e2b8b98cc2dac509c0754ddf2992b949385e`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16860618575e311bce20466618cd71e379c0701571ba3c10a6ff7e138e882c9`  
		Last Modified: Mon, 09 Oct 2017 23:15:24 GMT  
		Size: 954.4 KB (954439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c5cbb229f9685c6de4348c4e53309a3f77880ac45bc144e2470c7b06e6155c`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 7.1 MB (7113381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4a7d0cc16d3392c10e725e66633f7348aac1d62300392ff7ad1322a9dad095`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d92e50c20e7f0d4bdee28d72b59ea1b1f193fe6a72c6dcb34f597b277f5ec`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478d1f463ec7e0a57fc10565e71024ac8ab8626ad8613a688fc571073ad3a4d`  
		Last Modified: Mon, 09 Oct 2017 23:15:32 GMT  
		Size: 42.4 MB (42432653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9af423a6f6239e0ff35d1b612561c69152073fea6a33901f3772a5a1926e208`  
		Last Modified: Mon, 09 Oct 2017 23:15:18 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743fffed80d55063b66af11ee298b7ef0c0fa3015a619cec52e60eb9d7a3b50e`  
		Last Modified: Mon, 09 Oct 2017 23:15:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b453a1e80cbd3bb00a6a965eca994fcea25596d5cb59e21bdf914cabc5deb`  
		Last Modified: Thu, 12 Oct 2017 22:04:55 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cb8b42809cf72d2e0dc2568dac64a6600b0f688ecedd156a4000da86f2ae9d`  
		Last Modified: Thu, 12 Oct 2017 22:04:56 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914e4a590217444849c243951b7a1172e38de757513fa919f78563ebf7029a01`  
		Last Modified: Thu, 12 Oct 2017 22:04:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; s390x

```console
$ docker pull postgres@sha256:cd7d0febae25381f39fe470536390395acc66e2037bf65cfa1f7350d28f95942
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100568219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6759a01cb8b47f700e002945296dd514c30514f76881fadf5c8f9febce9ccb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:07:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:07:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:07:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:07:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:07:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:07:32 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 23:07:33 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 23:16:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:16:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:16:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:25:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 09:25:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:25:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:25:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:25:43 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:25:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:25:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:25:44 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:25:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6047e028c2374e4b2f2846f6e23506d6424d8ce67a2a973e57d005007a2da1b`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e4246c65d329e68db93b3669fcff5a15f212ff2b5983b19592090694b35f8`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 970.2 KB (970247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c307cff99a2946ae5c9f303ffa4ca390f1596e36d1d2a6aa9552446c652396`  
		Last Modified: Mon, 09 Oct 2017 23:43:21 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1942f0fc876a052768b69b3c959cf244aac0cb99d22b3fee650772edcd2c3426`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35245b24c4e062e2e7ccfd64b259f04526c2c6b43ef44254f2960f555eca65`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ad1b1e3a683e9dffcb535b310fabfe94eeed64407185344970b11360ad6215`  
		Last Modified: Mon, 09 Oct 2017 23:43:28 GMT  
		Size: 39.7 MB (39661894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7ef37b24c545a4f274937db76e5998cf82d97e7474d4601a6645c7c87690fd`  
		Last Modified: Mon, 09 Oct 2017 23:43:18 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0965a4c8053599eeae5a0c830e2cada2ca0a873962b95572e6d9df508ba7e4cf`  
		Last Modified: Mon, 09 Oct 2017 23:43:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361510b4570375fa9bf3dc36883faba2f896d7a80f52515cdcfae64c3f4f7571`  
		Last Modified: Fri, 13 Oct 2017 09:26:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d595a0db3eea49804541de474554f703b4db6e7522e22052632078dec878acf3`  
		Last Modified: Fri, 13 Oct 2017 09:26:34 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748dfa5cee4df755122df10dda733d79a41bc66ae5898ae4fa71e6859f640553`  
		Last Modified: Fri, 13 Oct 2017 09:26:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.5`

```console
$ docker pull postgres@sha256:318757ed6291e6a1ef86312ac453b9b4a67b48495b59ca2dece909cb0c688c53
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
$ docker pull postgres@sha256:f2233fcd705f396694ffbb3ce9b6491aad57c814b5d4892f4409b934ec8b72cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104118983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d7834a2df3a323807d0b97aba3230c2ed7f41f990c971ebf78442649d814aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:45:23 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:45:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:46:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:46:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:46:37 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:46:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:46:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:46:46 GMT
ENV PG_MAJOR=9.6
# Tue, 10 Oct 2017 01:46:46 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Tue, 10 Oct 2017 01:47:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:47:58 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:47:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:03:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 12 Oct 2017 22:03:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:03:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:03:55 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:03:55 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:03:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:04:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:04:01 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:04:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f30b0e3b3b9a6ad13b6c7146d5356b0022c19552b092584af5826867f0651fc`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe77d699370afccc90ead8288bd77dccc002b736cd359e99e968ca637b9a2bcf`  
		Last Modified: Tue, 10 Oct 2017 01:57:51 GMT  
		Size: 985.1 KB (985140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2dc1dca46bb95661f36d38d6f0f612c71a0bc784444af164b752fa852e707e`  
		Last Modified: Tue, 10 Oct 2017 01:57:53 GMT  
		Size: 7.1 MB (7112916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355ccacf41c56e595a2c71e18414f06b44a5f783fe0ec22b3053d5e6740f9f55`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b1581b93b4f4a794f1f8ca9ff1ac175d25c2d88b929d3824e8b9b43c537fe`  
		Last Modified: Tue, 10 Oct 2017 01:57:50 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2750bfbf9e9260271295499c62d53dd71afaa41912bcc16e6154d7343f378`  
		Last Modified: Tue, 10 Oct 2017 01:58:08 GMT  
		Size: 43.4 MB (43409772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53d44bda70c0a76b7e06fcc294bcc03a3c287c37cb589571319c5f04404c9e4`  
		Last Modified: Tue, 10 Oct 2017 01:57:48 GMT  
		Size: 7.1 KB (7102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434e93d2134c757e65fc6526c82106d0bf5333345cf766e7a6e01a91ef537ccc`  
		Last Modified: Tue, 10 Oct 2017 01:57:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e045e82a2f26da72de39ce4068005b7508a66a3614e16e93376c2fdf145bba1d`  
		Last Modified: Thu, 12 Oct 2017 22:07:36 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a67efda883b947993487bdbc0d19d702850d794cbc1fb1c1f532fc52b678b03`  
		Last Modified: Thu, 12 Oct 2017 22:07:36 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c883ae91b811df84c6c378439886e5cfdce1af6af747dadb10a54f30f55d1c`  
		Last Modified: Thu, 12 Oct 2017 22:07:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; arm variant v5

```console
$ docker pull postgres@sha256:3164e29fe5a42d18c71aa71775501474fb496521a6e15c12d93801047fc77f2e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96589634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ffdd68675a8a105b922ef13d834f761448ef96f4ebded279a390d17ea2641b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:57:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:57:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:57:59 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:58:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:59:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:59:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:59:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:59:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:59:44 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 22:59:44 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 23:20:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:20:21 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:20:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:38:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 06:38:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:38:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:38:40 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:38:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:38:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:38:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:38:41 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:38:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f2ea4c35241e9c0d1e612a52e13531a3038fd1d613ccff10f323dbe9977408`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8820953bbb96c5191977d54f962b3147a124c2713b4575f6feeffd1fe7c49f`  
		Last Modified: Tue, 10 Oct 2017 00:16:13 GMT  
		Size: 974.6 KB (974649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ded5820b04e0af13a27b346ad4482b18ad0accae84ec9f47c53853c6f8d6d8`  
		Last Modified: Tue, 10 Oct 2017 00:16:16 GMT  
		Size: 7.1 MB (7112800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be442bd996b1c7dde35df775e18f56c9d6d82cfb24d2c1dcf7bdc6d4506a5e47`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790432ad2fedb6ed859cb022b531be4c7264e3f0564322c93b9a86309481919`  
		Last Modified: Tue, 10 Oct 2017 00:16:12 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d62f5d58db7138001c21f6d62ed538dfe19a7cb8fcc93467db88e687e4e8631`  
		Last Modified: Tue, 10 Oct 2017 00:16:25 GMT  
		Size: 37.6 MB (37606204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992a0d975ab8b34a21a6672cbd2a29b7be3c15198b8b7f4fd6f2a4d2930fc08c`  
		Last Modified: Tue, 10 Oct 2017 00:16:11 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e880913788d1d2eee60d47f812d6e5399067ca0b21b0bfd8467727051992fc`  
		Last Modified: Tue, 10 Oct 2017 00:16:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff252d609a2eba0d5de59b01c8bfbe5d32610fcba5f5ba5df14649935700e1`  
		Last Modified: Fri, 13 Oct 2017 06:39:33 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a66b05389a6223ff7b6930f2d7b8121b4ed21cb291e1b97e9e422e7ad724444`  
		Last Modified: Fri, 13 Oct 2017 06:39:32 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0af11fd2e86582a660e8761d853e5c901f993f3a70c2ce15fbaa933e712959`  
		Last Modified: Fri, 13 Oct 2017 06:39:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; arm variant v7

```console
$ docker pull postgres@sha256:e62caf43b8ca0de28479165f9c9b1a94e3d1ea14edcad237c091a68b256386f3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93183748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac721121fecb995d01042babe07464ed5130a5284f1e679882c120a2dfdaa36b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:33:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:33:51 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:33:52 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:34:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:35:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:35:19 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:35:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:35:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:35:29 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 23:35:29 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 23:53:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:53:40 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:53:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:38:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 03:38:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:38:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:38:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:38:47 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:38:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:38:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:38:49 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:38:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e796fed7e772e65e95ed4c8f0089c9c0a6ee0e98c85189b7bafbcc47de0aee`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953f0e725d183cb5a74c0e2daab0224ed4045eb55967bf6179f6176cc57e74e`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 959.5 KB (959478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371a1407f29895404ec62d6f3e6c2885aa84f261a14ae415b29541f52278f4e4`  
		Last Modified: Tue, 10 Oct 2017 00:46:20 GMT  
		Size: 7.1 MB (7112846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fb6412c8826b372095343b6942a570850ae08c66652750fc8842bf955bf34`  
		Last Modified: Tue, 10 Oct 2017 00:46:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3fe6e8cb381f129f9c7cbfff277a94ef945be8764bead6874d488a46adfdf0`  
		Last Modified: Tue, 10 Oct 2017 00:46:17 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a7eeb642144c116dd12ed853f702a1298f657ac5836975e934b55c8abec17`  
		Last Modified: Tue, 10 Oct 2017 00:46:32 GMT  
		Size: 36.4 MB (36409025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e5992bcaec9861b5334fd494adc685d8ac38c9879a72c47ce0b1205b80ee43`  
		Last Modified: Tue, 10 Oct 2017 00:46:15 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090778b5f1186cc64a7d0ba553b281e38da4d6495d01ccf5cf9d28aafcc928c3`  
		Last Modified: Tue, 10 Oct 2017 00:46:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af32ceb68f0dbd9fdf7f92dd55e93fba3e635b894075c930dba1e643d4b48db`  
		Last Modified: Fri, 13 Oct 2017 03:39:53 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e102b1f694cc2711b6e42bf56b9b282258c6480b89870ba993a6adb8877d1db8`  
		Last Modified: Fri, 13 Oct 2017 03:39:53 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3823ba1090129ff8b1fed08fe9f9a751c4ff200995a9c8d11a50235653dd2e1`  
		Last Modified: Fri, 13 Oct 2017 03:39:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:8c6897bb55366ad64c2c3923acb172471aa349e867570a81e817937d63b3d16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95156932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfbe7fd4d6a46c28e71649d6e6c236007decf51e87fe5b88dfe750d4a29d6cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:46:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:46:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:46:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:48:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:48:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:48:52 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:48:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:48:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 02:49:00 GMT
ENV PG_MAJOR=9.6
# Tue, 10 Oct 2017 02:49:01 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Tue, 10 Oct 2017 03:30:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 03:30:15 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 03:30:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:21:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 14:21:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:21:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:21:37 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:21:37 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:21:40 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:21:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d269ac3366aed392a2a44b85beade574131d53ba59160192a6b0b260530bfd78`  
		Last Modified: Tue, 10 Oct 2017 05:17:42 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7096c714db8e8e099b8fd5bd0fabc9cd768e602ceac3a221d6fe6e088fbc123f`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 952.0 KB (952017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051485f6d630f721f32a814324f208ac476b291d66688d3a8478c9f0692f7b17`  
		Last Modified: Tue, 10 Oct 2017 05:17:44 GMT  
		Size: 7.1 MB (7112960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc74eb62f3b0d967a9cded11bb78bf4e0831d184b65657cb1aa11c219c4a58c6`  
		Last Modified: Tue, 10 Oct 2017 05:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf385dd31a98a4aee7da147c97929b09d9ed7ad8475cf090d8b10e3ddb4205c`  
		Last Modified: Tue, 10 Oct 2017 05:17:40 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25580eeedc5e1c8c5c79d552325c4fb8b675920a86e1fd55254ef14af04c970e`  
		Last Modified: Tue, 10 Oct 2017 05:17:55 GMT  
		Size: 37.1 MB (37146608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d853c44725bb744ca827ec7856d83ed34b8836bee18842b21ffaf961e54e51f2`  
		Last Modified: Tue, 10 Oct 2017 05:17:37 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16fefe55ce9240278947fad1626c668dfd879e38f738cff2e9d416a73d5e2cc`  
		Last Modified: Tue, 10 Oct 2017 05:17:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8133f7773ca276c67bfc31e8ff3657587eb5fdde7f666fe8fec451c97ae249cd`  
		Last Modified: Fri, 13 Oct 2017 14:23:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e620fb024ee50b36b9458f643a09f8347f53dbede2f0cea78da45c350d08d4de`  
		Last Modified: Fri, 13 Oct 2017 14:23:43 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd4de48096ff9ff3cad446cdb82ebaf84c3ed4cbb6ecaa2358d703170569f89`  
		Last Modified: Fri, 13 Oct 2017 14:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; 386

```console
$ docker pull postgres@sha256:8cfbffb070719556f942302a1e96f3a05e67c85780c33fdad920a2484c2327bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106085954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db00a385ee2a383204811e80412cc0ab903ea829831d4ba92485ccd2b67b02e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:07:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:07:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:07:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:07:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:08:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:08:21 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:08:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:08:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:08:31 GMT
ENV PG_MAJOR=9.6
# Tue, 10 Oct 2017 00:08:31 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Tue, 10 Oct 2017 00:10:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:10:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:10:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:05:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 14:05:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:05:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:05:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:05:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:09 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1f516577d1143f05867c50ef1dbd146eee37bacc4512b8cc5edf667b8d7ec7`  
		Last Modified: Tue, 10 Oct 2017 00:27:34 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a01dc90ae2171a283eba2cba23263a5a9e449aaf50e22ab8f7373f213d97af`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 964.0 KB (964035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179a5434e549ef3dfc9b6ba8457e785ba25f645345cd91608d31535a137ab0c1`  
		Last Modified: Tue, 10 Oct 2017 00:27:36 GMT  
		Size: 7.1 MB (7112843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa700e01475a1430c730f7e21c0da3d7f887479d09ab1773c6aee4b09cef390`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495faa146ca9a1ed49c7876730103e9942be34d73cc682278592197d68e3d18`  
		Last Modified: Tue, 10 Oct 2017 00:27:33 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fbcb6b07a3fbfbbf598a74b3dfecd8fdd52872818cd01bb2f68ea43039b00d`  
		Last Modified: Tue, 10 Oct 2017 00:27:46 GMT  
		Size: 45.2 MB (45219202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679704cbee6eb4fdbe4907bc3b332cde6e83fe9e90778aaf519c0250f8f62521`  
		Last Modified: Tue, 10 Oct 2017 00:27:32 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12c1e84c708d9ca4204ed6d0bb66e6bfc124c0970d917982cfa7e07d659b14a`  
		Last Modified: Tue, 10 Oct 2017 00:27:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d2c22b4697905841a462ff2373e1e1ab953fbe47418859b5887b39af793ed9`  
		Last Modified: Fri, 13 Oct 2017 14:06:06 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f141f73849d4cf6a6d28359603deb1d596696d288daca478210c7656ac72c8`  
		Last Modified: Fri, 13 Oct 2017 14:06:06 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1843edbda5707175c343c794ef7a2d87e093f087d4dcd5b618cf429826ad5f87`  
		Last Modified: Fri, 13 Oct 2017 14:06:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; ppc64le

```console
$ docker pull postgres@sha256:9ae0bce79139298b27e5bdc24c22a973b8894827ebe1e60128290b3a5a009ba4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102326310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed146a87abe16bedf146f4edc1bf47702c3d4932e2ef73f21835071cd4b8e381`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:11:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:11:45 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:15:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:21 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:16:25 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:16:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:16:50 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 22:16:52 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 22:28:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:28:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:28:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:02:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 12 Oct 2017 22:02:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:02:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:02:14 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:02:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:02:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:02:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:02:27 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:02:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6feeb37ce73a99209c70d76f88e2b8b98cc2dac509c0754ddf2992b949385e`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16860618575e311bce20466618cd71e379c0701571ba3c10a6ff7e138e882c9`  
		Last Modified: Mon, 09 Oct 2017 23:15:24 GMT  
		Size: 954.4 KB (954439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c5cbb229f9685c6de4348c4e53309a3f77880ac45bc144e2470c7b06e6155c`  
		Last Modified: Mon, 09 Oct 2017 23:15:25 GMT  
		Size: 7.1 MB (7113381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4a7d0cc16d3392c10e725e66633f7348aac1d62300392ff7ad1322a9dad095`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d92e50c20e7f0d4bdee28d72b59ea1b1f193fe6a72c6dcb34f597b277f5ec`  
		Last Modified: Mon, 09 Oct 2017 23:15:22 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478d1f463ec7e0a57fc10565e71024ac8ab8626ad8613a688fc571073ad3a4d`  
		Last Modified: Mon, 09 Oct 2017 23:15:32 GMT  
		Size: 42.4 MB (42432653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9af423a6f6239e0ff35d1b612561c69152073fea6a33901f3772a5a1926e208`  
		Last Modified: Mon, 09 Oct 2017 23:15:18 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743fffed80d55063b66af11ee298b7ef0c0fa3015a619cec52e60eb9d7a3b50e`  
		Last Modified: Mon, 09 Oct 2017 23:15:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b453a1e80cbd3bb00a6a965eca994fcea25596d5cb59e21bdf914cabc5deb`  
		Last Modified: Thu, 12 Oct 2017 22:04:55 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cb8b42809cf72d2e0dc2568dac64a6600b0f688ecedd156a4000da86f2ae9d`  
		Last Modified: Thu, 12 Oct 2017 22:04:56 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914e4a590217444849c243951b7a1172e38de757513fa919f78563ebf7029a01`  
		Last Modified: Thu, 12 Oct 2017 22:04:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.5` - linux; s390x

```console
$ docker pull postgres@sha256:cd7d0febae25381f39fe470536390395acc66e2037bf65cfa1f7350d28f95942
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100568219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6759a01cb8b47f700e002945296dd514c30514f76881fadf5c8f9febce9ccb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:07:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:07:29 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:07:29 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:07:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:07:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:07:32 GMT
ENV PG_MAJOR=9.6
# Mon, 09 Oct 2017 23:07:33 GMT
ENV PG_VERSION=9.6.5-1.pgdg80+2
# Mon, 09 Oct 2017 23:16:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:16:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:16:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:25:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 13 Oct 2017 09:25:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:25:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:25:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:25:43 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:25:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:25:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:25:44 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:25:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6047e028c2374e4b2f2846f6e23506d6424d8ce67a2a973e57d005007a2da1b`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e4246c65d329e68db93b3669fcff5a15f212ff2b5983b19592090694b35f8`  
		Last Modified: Mon, 09 Oct 2017 23:43:20 GMT  
		Size: 970.2 KB (970247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c307cff99a2946ae5c9f303ffa4ca390f1596e36d1d2a6aa9552446c652396`  
		Last Modified: Mon, 09 Oct 2017 23:43:21 GMT  
		Size: 7.1 MB (7131177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1942f0fc876a052768b69b3c959cf244aac0cb99d22b3fee650772edcd2c3426`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e35245b24c4e062e2e7ccfd64b259f04526c2c6b43ef44254f2960f555eca65`  
		Last Modified: Mon, 09 Oct 2017 23:43:19 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ad1b1e3a683e9dffcb535b310fabfe94eeed64407185344970b11360ad6215`  
		Last Modified: Mon, 09 Oct 2017 23:43:28 GMT  
		Size: 39.7 MB (39661894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7ef37b24c545a4f274937db76e5998cf82d97e7474d4601a6645c7c87690fd`  
		Last Modified: Mon, 09 Oct 2017 23:43:18 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0965a4c8053599eeae5a0c830e2cada2ca0a873962b95572e6d9df508ba7e4cf`  
		Last Modified: Mon, 09 Oct 2017 23:43:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361510b4570375fa9bf3dc36883faba2f896d7a80f52515cdcfae64c3f4f7571`  
		Last Modified: Fri, 13 Oct 2017 09:26:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d595a0db3eea49804541de474554f703b4db6e7522e22052632078dec878acf3`  
		Last Modified: Fri, 13 Oct 2017 09:26:34 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748dfa5cee4df755122df10dda733d79a41bc66ae5898ae4fa71e6859f640553`  
		Last Modified: Fri, 13 Oct 2017 09:26:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.5-alpine`

```console
$ docker pull postgres@sha256:ec0f88333a348894528df30bc3a01ff0c8e846a3893a99142459cb56296bf021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:874dbebc36b08071c535a588dfeb0dd20196a769b821f1a05691494fec7e74ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14685587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0299cbfbd597ed0f836058dd58421f60bebe0ff9bc977d82e3f44689b177ab6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:36:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:36:43 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:36:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:36:43 GMT
ENV PG_MAJOR=9.6
# Thu, 26 Oct 2017 02:36:44 GMT
ENV PG_VERSION=9.6.5
# Thu, 26 Oct 2017 02:36:44 GMT
ENV PG_SHA256=06da12a7e3dddeb803962af8309fa06da9d6989f49e22865335f0a14bad0744c
# Thu, 26 Oct 2017 02:40:24 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:40:25 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:40:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:40:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:40:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:40:28 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:40:28 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:40:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:40:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:40:30 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:40:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e3d7aa49539d4f2ca481fae9141528e2a702cb0b2c20b1dcff938b97b0f831`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cd16d74403c16ea5beffdc195cf56a80f2ca4282097410c0521133d91798`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef66ba4f564816d439cf4a619e2c432806d05eae41d539d206c99754e9bce4e`  
		Last Modified: Thu, 26 Oct 2017 02:59:08 GMT  
		Size: 12.7 MB (12705775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1ea85d499cf747a42420798332587286b6cecdb187a6c6c5ff307189d13f72`  
		Last Modified: Thu, 26 Oct 2017 02:59:01 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d0f405f2bc36ffd9c263414710bbd8337ae3b0f675bdb67d66b5acdf9bb196`  
		Last Modified: Thu, 26 Oct 2017 02:59:01 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130846b1785c38892c86501f3e51d53ab6ed700eebb0714660622ede917fa9bb`  
		Last Modified: Thu, 26 Oct 2017 02:59:00 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2978c9bf83fc07ed6f74ca88dcff2dbce575c21cb84f3fb521282f2b034a5e4`  
		Last Modified: Thu, 26 Oct 2017 02:59:00 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a7663773f3efbde8988a7b36ab284657678b0d99141ffe1efda5ca6fd9ac89`  
		Last Modified: Thu, 26 Oct 2017 02:59:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:ec0f88333a348894528df30bc3a01ff0c8e846a3893a99142459cb56296bf021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:874dbebc36b08071c535a588dfeb0dd20196a769b821f1a05691494fec7e74ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14685587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0299cbfbd597ed0f836058dd58421f60bebe0ff9bc977d82e3f44689b177ab6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:36:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:36:43 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:36:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:36:43 GMT
ENV PG_MAJOR=9.6
# Thu, 26 Oct 2017 02:36:44 GMT
ENV PG_VERSION=9.6.5
# Thu, 26 Oct 2017 02:36:44 GMT
ENV PG_SHA256=06da12a7e3dddeb803962af8309fa06da9d6989f49e22865335f0a14bad0744c
# Thu, 26 Oct 2017 02:40:24 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:40:25 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:40:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:40:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:40:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:40:28 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:40:28 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:40:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:40:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:40:30 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:40:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e3d7aa49539d4f2ca481fae9141528e2a702cb0b2c20b1dcff938b97b0f831`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cd16d74403c16ea5beffdc195cf56a80f2ca4282097410c0521133d91798`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef66ba4f564816d439cf4a619e2c432806d05eae41d539d206c99754e9bce4e`  
		Last Modified: Thu, 26 Oct 2017 02:59:08 GMT  
		Size: 12.7 MB (12705775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1ea85d499cf747a42420798332587286b6cecdb187a6c6c5ff307189d13f72`  
		Last Modified: Thu, 26 Oct 2017 02:59:01 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d0f405f2bc36ffd9c263414710bbd8337ae3b0f675bdb67d66b5acdf9bb196`  
		Last Modified: Thu, 26 Oct 2017 02:59:01 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130846b1785c38892c86501f3e51d53ab6ed700eebb0714660622ede917fa9bb`  
		Last Modified: Thu, 26 Oct 2017 02:59:00 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2978c9bf83fc07ed6f74ca88dcff2dbce575c21cb84f3fb521282f2b034a5e4`  
		Last Modified: Thu, 26 Oct 2017 02:59:00 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a7663773f3efbde8988a7b36ab284657678b0d99141ffe1efda5ca6fd9ac89`  
		Last Modified: Thu, 26 Oct 2017 02:59:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:ec0f88333a348894528df30bc3a01ff0c8e846a3893a99142459cb56296bf021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:874dbebc36b08071c535a588dfeb0dd20196a769b821f1a05691494fec7e74ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14685587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0299cbfbd597ed0f836058dd58421f60bebe0ff9bc977d82e3f44689b177ab6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:36:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:36:43 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:36:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:36:43 GMT
ENV PG_MAJOR=9.6
# Thu, 26 Oct 2017 02:36:44 GMT
ENV PG_VERSION=9.6.5
# Thu, 26 Oct 2017 02:36:44 GMT
ENV PG_SHA256=06da12a7e3dddeb803962af8309fa06da9d6989f49e22865335f0a14bad0744c
# Thu, 26 Oct 2017 02:40:24 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:40:25 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:40:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:40:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:40:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:40:28 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:40:28 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:40:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:40:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:40:30 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:40:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e3d7aa49539d4f2ca481fae9141528e2a702cb0b2c20b1dcff938b97b0f831`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cd16d74403c16ea5beffdc195cf56a80f2ca4282097410c0521133d91798`  
		Last Modified: Thu, 26 Oct 2017 02:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef66ba4f564816d439cf4a619e2c432806d05eae41d539d206c99754e9bce4e`  
		Last Modified: Thu, 26 Oct 2017 02:59:08 GMT  
		Size: 12.7 MB (12705775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1ea85d499cf747a42420798332587286b6cecdb187a6c6c5ff307189d13f72`  
		Last Modified: Thu, 26 Oct 2017 02:59:01 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d0f405f2bc36ffd9c263414710bbd8337ae3b0f675bdb67d66b5acdf9bb196`  
		Last Modified: Thu, 26 Oct 2017 02:59:01 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130846b1785c38892c86501f3e51d53ab6ed700eebb0714660622ede917fa9bb`  
		Last Modified: Thu, 26 Oct 2017 02:59:00 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2978c9bf83fc07ed6f74ca88dcff2dbce575c21cb84f3fb521282f2b034a5e4`  
		Last Modified: Thu, 26 Oct 2017 02:59:00 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a7663773f3efbde8988a7b36ab284657678b0d99141ffe1efda5ca6fd9ac89`  
		Last Modified: Thu, 26 Oct 2017 02:59:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:155e0c5a077947a886c6af3a68b4feff14c91d9e5946f16a25b4bbab81efc58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:c272bb77c3c29063de59b968b5469b9d6fe715778515aa959936aac2579defb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14352066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5dcfe010b3e326df4be42c8e3bc772b6bad07393826fe364b832cf7ce4ec704`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:29:26 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:29:26 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:29:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_MAJOR=10
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_VERSION=10.0
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_SHA256=712f5592e27b81c5b454df96b258c14d94b6b03836831e015c65d6deeae57fd1
# Thu, 26 Oct 2017 02:31:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:36:22 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:36:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:36:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:36:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:36:23 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:36:24 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:36:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:36:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:36:25 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:36:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f78960b1ff7ba58dc829a2527fe6fd833775dc07d3c8b4edf0f6b1afd98e85`  
		Last Modified: Thu, 26 Oct 2017 02:58:15 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a941631c705f3f6cdb43afe8b24d6ff4ff18419841fb2b64c9714683bcaf6b`  
		Last Modified: Thu, 26 Oct 2017 02:58:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a38a77554d5a4767b7746cbb9024f69dcfa567d056efe1a376829b2fcdfed76`  
		Last Modified: Thu, 26 Oct 2017 02:58:24 GMT  
		Size: 12.4 MB (12350858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f4d638f9f5d714481621d02496d21e62f6829d86ce0c9ac763ff8a85bbae29`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fa56e3a8f6c2f2575cca393637ae5b8b9dd929beb4b36034126a71d010fbce`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb4d89b1ac4951a65c57fbce576fdac1ef5922357f31b1e8f7208cdd55c0a56`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3086735e41846d87c6f6a7d0f84688214641d28795315b1004be8d20b10b6da`  
		Last Modified: Thu, 26 Oct 2017 02:58:12 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c457d5fffc9eb9183235c18a07407f112f8b410291adf435d0d0a5ae9f01284f`  
		Last Modified: Thu, 26 Oct 2017 02:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:73a1c4e98fb961bb4a5c55ad6428470a3303bd3966abc442fe937814f6bbc002
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
$ docker pull postgres@sha256:36f2ee8f0b3239d998a7bbef1eedb1fe321ba95f11709449423e9027ef8ecadb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116995021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b106d5a0dc75f330cee9a1c9681ca674846235c04c8c084c5c9de7566990d635`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:44:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:44:13 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 01:44:13 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 01:44:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 01:44:30 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 01:44:30 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 01:44:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 01:44:41 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 01:44:42 GMT
ENV PG_MAJOR=10
# Tue, 10 Oct 2017 01:44:42 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Tue, 10 Oct 2017 01:45:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 01:45:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 01:45:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:03:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 12 Oct 2017 22:03:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:03:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:03:09 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:03:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:03:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:03:16 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:03:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d89ae9a47e49744bd3d4f7132219541b8a8b0256ec635dade1ce61b15eaba33`  
		Last Modified: Tue, 10 Oct 2017 01:57:06 GMT  
		Size: 7.2 MB (7218239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7726fda7efeb130ae36befad4bd86810218811b70531667453aa7fbed3c54fa`  
		Last Modified: Tue, 10 Oct 2017 01:57:04 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1838499bd8f5b0b128cb251a4989adb30f592e2c64ba4e0e906b5f6de381c3b`  
		Last Modified: Tue, 10 Oct 2017 01:57:03 GMT  
		Size: 956.6 KB (956621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ec5aa60735b62cd36bbcd1ccf8ec87bd41950dcfd819c1b2d5a03a4a385699`  
		Last Modified: Tue, 10 Oct 2017 01:57:04 GMT  
		Size: 6.6 MB (6577590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1571d7170291ace31aaefd471d6c57afb27a552307f1f584c7d79f141c2081c6`  
		Last Modified: Tue, 10 Oct 2017 01:57:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6e41e1373282c2ef96d8f7c49a92505407c9f858d6e74e7d454d4d2e371b6e`  
		Last Modified: Tue, 10 Oct 2017 01:57:02 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787e3c45a9bbc93265062c8adb43a46a62c3b205d6421e35c1e867b3f7b0c3ce`  
		Last Modified: Tue, 10 Oct 2017 01:57:21 GMT  
		Size: 57.1 MB (57097620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b234cf83b224c2f0eb7ee3e7c0afb0c76ccdeb118a741a7ead15da8a3ce2e24`  
		Last Modified: Tue, 10 Oct 2017 01:56:59 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8ad2440289b65a4e89b3e3457b3cb6f11472a507ef10a5c796567c5f5cea20`  
		Last Modified: Tue, 10 Oct 2017 01:57:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9351993374c07a38b2827cfb6b82f0cd3d1385a86033eda20a4765f1be2218ab`  
		Last Modified: Thu, 12 Oct 2017 22:06:21 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f3575e09a10212f7248a26786be287baf69814c615ae011754bd4dc2dcadc5`  
		Last Modified: Thu, 12 Oct 2017 22:06:21 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4b2ff0c3a9803735983df12dbd1d5fecfac5c736c0a491d64c87cd39b7985`  
		Last Modified: Thu, 12 Oct 2017 22:06:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:cb4225cb6b70b4f8ceddd27fbe11e0f2515bb1c2b6769823e51edd94a617a4d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116300377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c35332b8d743d0c3c39d0f13aa2694e17e9e16e188045dffd990233eb02572`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:09 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:37:09 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:37:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:37:41 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:37:41 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:37:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:37:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:37:46 GMT
ENV PG_MAJOR=10
# Mon, 09 Oct 2017 22:37:47 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Mon, 09 Oct 2017 22:57:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:57:40 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:57:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 06:38:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 06:38:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 06:38:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 06:38:31 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 06:38:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:38:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 06:38:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:38:33 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 06:38:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab7b14a3053922ee5271e130da109321073777964c0576f5615e9965ecd244b`  
		Last Modified: Tue, 10 Oct 2017 00:15:44 GMT  
		Size: 7.0 MB (6951777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59095f1710553ac54544021719fc2424314bb372ca4df3ab14126b720b9374b6`  
		Last Modified: Tue, 10 Oct 2017 00:15:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5445faeb0b89a64781ea63ff1cd6e0937e60ef0c429e80b3236e6553ac963de`  
		Last Modified: Tue, 10 Oct 2017 00:15:41 GMT  
		Size: 946.9 KB (946924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e0a8759c5bdfc6eab678d710d943f42e77d7479aa7174a24e68d72cf6d16e7`  
		Last Modified: Tue, 10 Oct 2017 00:15:42 GMT  
		Size: 6.6 MB (6577688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b585c51696cbf3cfd26d324fecbed5779db503c43dcf8d0d346a51f6903ec6f`  
		Last Modified: Tue, 10 Oct 2017 00:15:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752b8dfba5e2b18f8f50914f1f9575e842f8bd7ea0b2313834410e9adcef1e45`  
		Last Modified: Tue, 10 Oct 2017 00:15:40 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359dc049625858e4cc47d0efcca020632fb177d65140c2e44c2244e23ec83ae7`  
		Last Modified: Tue, 10 Oct 2017 00:15:58 GMT  
		Size: 58.0 MB (57992157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6121ffce052e30360ab410a750f1d60b08b175420238f4fbc15caa761d6a6ce7`  
		Last Modified: Tue, 10 Oct 2017 00:15:39 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb8b9740aeb7fc63bea161041f405643a95888295989e6311fe8ed2d56bd08b`  
		Last Modified: Tue, 10 Oct 2017 00:15:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86093c68be97a18d0eab7549823e778190c5ae363297bb3fea6e0dc944258821`  
		Last Modified: Fri, 13 Oct 2017 06:39:19 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e756433400883f14822d14867ea6d8328352bd559a97b47ecd7bc412bfc6da`  
		Last Modified: Fri, 13 Oct 2017 06:39:18 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10359119a90a342755c662986879f7cd42a3894fe66078866b4e3b5fddfbfc4`  
		Last Modified: Fri, 13 Oct 2017 06:39:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:0538df0fa4202ec0af5ed1f0a3af316916d21d8d8481a352398e0ed8c0dda82a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112233239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96443a017a99354bbe2d9f9f7eeaff1f66174a6aa0b0fea4f06aa8913be8a64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:15:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:15:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:15:16 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:16:03 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:16:12 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 23:16:12 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 23:16:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:16:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:16:20 GMT
ENV PG_MAJOR=10
# Mon, 09 Oct 2017 23:16:21 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Mon, 09 Oct 2017 23:33:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:33:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 23:33:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 03:38:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 03:38:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 03:38:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 03:38:36 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 03:38:36 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 03:38:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 03:38:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 03:38:38 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 03:38:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1c6efbcc9331f8f6e929a8661865aa2bdcc021a638f5d9dec2fa3bffff5040`  
		Last Modified: Tue, 10 Oct 2017 00:45:43 GMT  
		Size: 6.6 MB (6589449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65145d470a7b002be1d63bfb6851441910d8e986190dc5a13132d04e4638a5c1`  
		Last Modified: Tue, 10 Oct 2017 00:45:41 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e11af9f4a3cdd7ceb0348cf7c193968b8e0b2ca211d94a8486f23db23889b`  
		Last Modified: Tue, 10 Oct 2017 00:45:40 GMT  
		Size: 931.5 KB (931493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bf1485fbd609e86a1587353703dd3a17d754f09db449435b2e158ab50b6f52`  
		Last Modified: Tue, 10 Oct 2017 00:45:43 GMT  
		Size: 6.6 MB (6577687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3a6e0b9c5a6499faa147ed0c7a3474e521b7cec028a73c0884c43cbccfed4`  
		Last Modified: Tue, 10 Oct 2017 00:45:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f0b444a7cc82ed46f1eea136ec655351cc0f3d7d494dd56df0c1a3401e14ce`  
		Last Modified: Tue, 10 Oct 2017 00:45:41 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82a35f4494f2e816eb0fc098bcb371dc016e6c28e5dfa11b1ca04e3c174dd59`  
		Last Modified: Tue, 10 Oct 2017 00:45:57 GMT  
		Size: 56.3 MB (56276740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0768236164c718853c5950c4c6ed74a4b432f2eb283936dacea23a2509b818`  
		Last Modified: Tue, 10 Oct 2017 00:45:39 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941131b7ccde5f682432eb7560284ecd31740684937983f206e77da3517814f3`  
		Last Modified: Tue, 10 Oct 2017 00:45:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc12a2fececafea70951c585c8985833ad861f3b95d249ad1fc6d0a6a669ab57`  
		Last Modified: Fri, 13 Oct 2017 03:39:32 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82339404941df871d37564430d90e8695d33c095dece581a7a2758221830f3de`  
		Last Modified: Fri, 13 Oct 2017 03:39:31 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c466486be16759716b8879125b5ef2f5f163470f74ce3c37bfbc3707aaf9d4d`  
		Last Modified: Fri, 13 Oct 2017 03:39:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:2902685a85dcc0c7b450952167b0733df0b10cdf4ec10370a47b5188177d79a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114264223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb802e7af25c1eada61f1f1eae83a993f874248fbaf5aa56e6a0175b1aa021e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:07:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:07:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 02:07:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:07:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:07:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 02:07:59 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 02:08:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 02:08:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 02:08:26 GMT
ENV PG_MAJOR=10
# Tue, 10 Oct 2017 02:08:27 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Tue, 10 Oct 2017 02:45:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 02:45:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 02:45:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:21:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 14:21:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:21:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:21:17 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:21:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:21:20 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:21:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9f8576068a5c5604836a3f69915ddcd4be4ae798cac855e2cdbf0008a172f2`  
		Last Modified: Tue, 10 Oct 2017 05:16:38 GMT  
		Size: 6.8 MB (6793318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73d563f6d23c97f2f50e830a257e9e1fd4cf35fcacf8c33ce654cb35448388f`  
		Last Modified: Tue, 10 Oct 2017 05:16:32 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2285a265375b62f306cfe648343bfb75839066711579eee66c4d6e736c263f07`  
		Last Modified: Tue, 10 Oct 2017 05:16:31 GMT  
		Size: 924.2 KB (924231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6c8967d461a5b23f955475c1495d72e283ea536de734485136280a991390b8`  
		Last Modified: Tue, 10 Oct 2017 05:16:41 GMT  
		Size: 6.6 MB (6577579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efd893438caddb6c6ce49749c9f480605e8ddffd5e103f3f4d6aa1013f52999`  
		Last Modified: Tue, 10 Oct 2017 05:16:29 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a75b8869bbbf2709fa0b01fb9fafb2b32e3e0f5b2ccf657fdc78d7b366f6eae`  
		Last Modified: Tue, 10 Oct 2017 05:16:29 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09653c00afa5d42138b9c405eedd4713df4a38aecd16e03d797d7a4658b4a2de`  
		Last Modified: Tue, 10 Oct 2017 05:16:49 GMT  
		Size: 57.0 MB (57041496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad96a5420d8e414cae459b514990a5e8c1cf81c2afe8783d9a0cfc7236e308`  
		Last Modified: Tue, 10 Oct 2017 05:16:26 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a4977694013acc26fbcba55cfd62f22e818631fe7898a5116cc40877151409`  
		Last Modified: Tue, 10 Oct 2017 05:16:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e74c3e0fa9bbe42eee39ca2f62eaa34ea627b9d243d4bf0930afbc61804f21`  
		Last Modified: Fri, 13 Oct 2017 14:23:02 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66981de64eec8ee2be61f79811d3100153b1149892fdae7cd3037ebc14768c78`  
		Last Modified: Fri, 13 Oct 2017 14:23:02 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1eaef7b99ba60f903ceef61c5a45752717948bb2679fe2bedd17d406ea32f22`  
		Last Modified: Fri, 13 Oct 2017 14:23:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:aa7a8d5992b978aa09b9d2960a569951abd51d79eb3d677841cca2fef0af12b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119062504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76212e33ee446983dbba0ce14fd59609f5144ea8e81ab8ff95b852d60f1e3b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:05:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:05:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 10 Oct 2017 00:05:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:05:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:06:00 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 10 Oct 2017 00:06:00 GMT
ENV LANG=en_US.utf8
# Tue, 10 Oct 2017 00:06:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:06:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:06:13 GMT
ENV PG_MAJOR=10
# Tue, 10 Oct 2017 00:06:13 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Tue, 10 Oct 2017 00:06:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Oct 2017 00:06:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 10 Oct 2017 00:06:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 14:04:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 14:04:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 14:04:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 14:04:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 14:04:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 14:05:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 14:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 14:05:00 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 14:05:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b4fadb286da2948bf4dca37ecfa555137df90fb799c2be1e702104ebbad756`  
		Last Modified: Tue, 10 Oct 2017 00:25:54 GMT  
		Size: 7.5 MB (7523051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40faa17b7b96c62a8f7373316678a8e921649047d1b81b780e54be9e1f7d755`  
		Last Modified: Tue, 10 Oct 2017 00:25:52 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527cff2d6a5969ffca49617dc69fc64586594f3510c3d67347300c4458fafa70`  
		Last Modified: Tue, 10 Oct 2017 00:25:51 GMT  
		Size: 936.4 KB (936449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa5544652d3c5e2a2f8e2e612475983234a72dadb6b63be74c8522cd7954533`  
		Last Modified: Tue, 10 Oct 2017 00:25:53 GMT  
		Size: 6.6 MB (6577723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521ffb842fcecbbd419e36dbc064f775cd2db813d840ad16e3c0a6fcd74c1066`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19007f5615837d55bac93c825868ab9283bd787d2edb4daf3caf87d76dd2c74f`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5206cda6c2fda7fe66c46b6f10e89bd26a6d144f8b253971526cf50fd624abff`  
		Last Modified: Tue, 10 Oct 2017 00:26:05 GMT  
		Size: 58.2 MB (58175746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b0cad4d361da8b3ac6ae066eaa28f25071cb3a480e57927daa5043b70bb1d4`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc293bdd2f377fe5f0ce6039965c73ebef9f25daf633fbccf823c3106dad153`  
		Last Modified: Tue, 10 Oct 2017 00:25:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ad1c48ad321d76b9b22f9cf06a06d8e420fae56f368783a30fea65336c4b22`  
		Last Modified: Fri, 13 Oct 2017 14:05:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ca448e367fff1b590abf5b624df086754b7497c113dbafdf8f153291c2e76b`  
		Last Modified: Fri, 13 Oct 2017 14:05:44 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7e40a10d539be72071d5b086b18b55cb49feb1f51811e2a8fd5384a2affde9`  
		Last Modified: Fri, 13 Oct 2017 14:05:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:3ad1b42ad6667212e77827c600fbd7ec1948efb6e29c6c3354de3cf9a7cc76b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116923315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690957f16fdddca9615b4718edbd0201ec656df0fa9ce5d277206ed29b1e8561`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:02:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:03:02 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 22:03:05 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:04:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:04:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 09 Oct 2017 22:04:45 GMT
ENV LANG=en_US.utf8
# Mon, 09 Oct 2017 22:04:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:04:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:05:02 GMT
ENV PG_MAJOR=10
# Mon, 09 Oct 2017 22:05:03 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Mon, 09 Oct 2017 22:10:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:10:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 09 Oct 2017 22:10:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 12 Oct 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 12 Oct 2017 22:01:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Oct 2017 22:01:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 12 Oct 2017 22:01:37 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Oct 2017 22:01:40 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:01:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 22:01:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:01:51 GMT
EXPOSE 5432/tcp
# Thu, 12 Oct 2017 22:01:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d839649481df99bf5d1a492dc70351e6c1b9db302762a083ef3c0435aa7fdc70`  
		Last Modified: Mon, 09 Oct 2017 23:14:48 GMT  
		Size: 7.1 MB (7081113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ddd670b3ea2e7a14c1f72057bc98b0f6022271e44c5bab0f37cbeaa61e319a7`  
		Last Modified: Mon, 09 Oct 2017 23:14:45 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c3bd8e3f469acaa7d6d6e885453d16e59e36cf3492bfeb89aa7dd242a9801`  
		Last Modified: Mon, 09 Oct 2017 23:14:44 GMT  
		Size: 925.8 KB (925795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffef1a6eca934034976bb315a34243bce6eba81c936a4f8a1a9a439e259ce26e`  
		Last Modified: Mon, 09 Oct 2017 23:14:47 GMT  
		Size: 6.6 MB (6577991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a050d704814a377515efd4b405ad52b7ad68690ca0a25ecf676ea3dbe4445c`  
		Last Modified: Mon, 09 Oct 2017 23:14:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69926664b348cea0d62157bed4d382edc3c6985f1555749e5bf5c4ef1336413`  
		Last Modified: Mon, 09 Oct 2017 23:14:42 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858329be635d0dacdb9a5cb5028d1ec3179bbf63fe3085f8986553f607efecfc`  
		Last Modified: Mon, 09 Oct 2017 23:14:56 GMT  
		Size: 56.9 MB (56944114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef326a50650b6250c9d1f932aa7bd9e5996a0942420ce72c5764e67faddf4c49`  
		Last Modified: Mon, 09 Oct 2017 23:14:39 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384c551b20bce2ca918d9e91e94a2e9935858e7c2c184f1ec30154827ac9f5a6`  
		Last Modified: Mon, 09 Oct 2017 23:14:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966a4ea9e48a537c431a8104672ccd2fa732121ff5f20f43cd03d7c0d08619c9`  
		Last Modified: Thu, 12 Oct 2017 22:04:32 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cb15c783c41022616e9e23d5b8fb0c2a22ee53856ecf9922ecd53c5743ba34`  
		Last Modified: Thu, 12 Oct 2017 22:04:31 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcf548d30da02f38774509f86ee4d9acbcb1e25781961b579e8d57cf2629a68`  
		Last Modified: Thu, 12 Oct 2017 22:04:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:14a194ef200ae96b8590be065e0961d293c409d364b4a9870a94a04c8393c3da
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119180780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597caf70694c2cd7a7584038d4649274b6bdad595cdaed8bb4c924d9e6d008fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:06:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:19 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 09 Oct 2017 23:06:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 12 Oct 2017 18:32:32 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 12 Oct 2017 18:32:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 12 Oct 2017 18:32:37 GMT
ENV LANG=en_US.utf8
# Thu, 12 Oct 2017 18:32:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 12 Oct 2017 18:32:40 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 12 Oct 2017 18:32:41 GMT
ENV PG_MAJOR=10
# Thu, 12 Oct 2017 18:32:41 GMT
ENV PG_VERSION=10.0-1.pgdg90+1
# Thu, 12 Oct 2017 18:41:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 12 Oct 2017 18:41:29 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 12 Oct 2017 18:41:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 13 Oct 2017 09:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 13 Oct 2017 09:25:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 13 Oct 2017 09:25:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 13 Oct 2017 09:25:34 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 13 Oct 2017 09:25:35 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 13 Oct 2017 09:25:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 09:25:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 09:25:36 GMT
EXPOSE 5432/tcp
# Fri, 13 Oct 2017 09:25:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580b731b0a91829e3df4855d46ec8d12a001049022dcd2da36ed990ec590dcb8`  
		Last Modified: Thu, 12 Oct 2017 18:41:59 GMT  
		Size: 7.3 MB (7250082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795625637722a1a0ab2d54d09382b8e45b35d67c07427809b880afd4aa30a9d5`  
		Last Modified: Thu, 12 Oct 2017 18:41:57 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca101bf238af0852d902af41b2585da17f68550ce26c21704279ef056b13640`  
		Last Modified: Thu, 12 Oct 2017 18:41:57 GMT  
		Size: 942.3 KB (942301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe9d5e7e6c89676490b9cc6445197d7255005b186cb2fb038042488b3cea746`  
		Last Modified: Thu, 12 Oct 2017 18:41:58 GMT  
		Size: 6.6 MB (6598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8403ff84b6d79c8ef4abf23486901064ffc506ed0812ab676482d22f3b86ea60`  
		Last Modified: Thu, 12 Oct 2017 18:41:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f9e9206c1cd471abcd99d63a88251e0d02897e02b09ca41d3ffe35720152ed`  
		Last Modified: Thu, 12 Oct 2017 18:41:56 GMT  
		Size: 4.5 KB (4480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ea02f93849a480b2272478b643a2e5d5c57e63a201b570819bf655058eb0d`  
		Last Modified: Thu, 12 Oct 2017 18:42:08 GMT  
		Size: 59.4 MB (59400932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad5e636bcb838f3d0eda66f31fbedaa04e9d36f6b986b5bf7bc86972f001843`  
		Last Modified: Thu, 12 Oct 2017 18:41:55 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69d91e5cdc65b6b51e1928103620b5c26300520620abf18bc2cff98cb85585f`  
		Last Modified: Thu, 12 Oct 2017 18:41:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f919d9551cca7fb0404d2575368b4146ebbe6317f9d1f2e58aaaa0bf5151ac`  
		Last Modified: Fri, 13 Oct 2017 09:26:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e09725b76c7aa12d72805620243ad694652b504e9ae1174871c0f275525531`  
		Last Modified: Fri, 13 Oct 2017 09:26:20 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af13616a2ba7d40e931f7b65548aec8ec3d953447150a076b6954f51f22ee70b`  
		Last Modified: Fri, 13 Oct 2017 09:26:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
