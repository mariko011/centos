<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10-beta2`](#postgres10-beta2)
-	[`postgres:10`](#postgres10)
-	[`postgres:10-beta2-alpine`](#postgres10-beta2-alpine)
-	[`postgres:10-alpine`](#postgres10-alpine)
-	[`postgres:9.6.3`](#postgres963)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.6.3-alpine`](#postgres963-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:9.5.7`](#postgres957)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.7-alpine`](#postgres957-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.4.12`](#postgres9412)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.12-alpine`](#postgres9412-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.3.17`](#postgres9317)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.17-alpine`](#postgres9317-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.2.21`](#postgres9221)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.2.21-alpine`](#postgres9221-alpine)
-	[`postgres:9.2-alpine`](#postgres92-alpine)

## `postgres:10-beta2`

```console
$ docker pull postgres@sha256:46099aaf7028faf1503bd4bfa52db1340b6d9a996aae775e4673424c8cb4b9c6
```

-	Platforms:
	-	linux; amd64

### `postgres:10-beta2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117428825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d6fce82273a1a4aec01416058439dc2d42a168851da820ddb3a5efc1835aa49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:00 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:44:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:44:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:44:19 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:44:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:44:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:44:23 GMT
ENV PG_MAJOR=10
# Wed, 26 Jul 2017 08:44:23 GMT
ENV PG_VERSION=10~beta2-1.pgdg90+1
# Wed, 26 Jul 2017 08:44:24 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:44:47 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:44:48 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:44:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:44:49 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:44:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:44:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:44:50 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:44:50 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:44:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:44:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:44:51 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:44:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a89e9890c383465015499306a27143688020b186d8efa289d9e97670b8c60dc`  
		Last Modified: Wed, 26 Jul 2017 08:50:39 GMT  
		Size: 7.0 MB (7029499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ec871acfa2d70642e3044907f4c793fbb34bba761548a6557dcce41e72453c`  
		Last Modified: Wed, 26 Jul 2017 08:50:38 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332a355d3d73c1cfbc811504d3ed1cf2c5660ea8736467140cf3c4538c135e6`  
		Last Modified: Wed, 26 Jul 2017 08:50:36 GMT  
		Size: 1.3 MB (1275160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6675a5cbbf42cffc312e240b1a8286b4cadbe7057c730c81df3e4ae90fc2d13`  
		Last Modified: Wed, 26 Jul 2017 08:50:37 GMT  
		Size: 6.6 MB (6577473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d0e64f9fe2ba9d7ff0aa91cfddadb79abfdc05a9523ac365496f35914b13c9`  
		Last Modified: Wed, 26 Jul 2017 08:50:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6df1120c4fd91d1cb826ee3406ebf7a0f03e3277756848e8bd4732271c5ee69`  
		Last Modified: Wed, 26 Jul 2017 08:50:37 GMT  
		Size: 4.5 KB (4470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2839ff434ea21e2b1e5ffbbb8677ab3422b2d6d8ef031a9d9c674ed257e29d2d`  
		Last Modified: Wed, 26 Jul 2017 08:50:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f7d83b6e56d109f27881638f2d395dac2636005c999f91fe244d04037dcb6b`  
		Last Modified: Wed, 26 Jul 2017 08:50:43 GMT  
		Size: 57.4 MB (57387747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e49ed16cf2784c0044b87c3cdd617a4a5cdf4c5c11267ac89c7f9b55360b26`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 7.3 KB (7277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1648d421ee128c1d71d11533fcd79277db1a76727d998a27d5f929b414ae5b3f`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4281bca3eaa46b5d1881add4ef8643cfb6377f754f941e92afc5c333df54df`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198626de6f790cf294a59bb16fff1514c58ede2a6a81017f912a7e56f1dc9483`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8afab72014e2e94ea4d79a0646ee03265f9810c85c81f8f59310ce6742bab3`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10`

```console
$ docker pull postgres@sha256:46099aaf7028faf1503bd4bfa52db1340b6d9a996aae775e4673424c8cb4b9c6
```

-	Platforms:
	-	linux; amd64

### `postgres:10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117428825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d6fce82273a1a4aec01416058439dc2d42a168851da820ddb3a5efc1835aa49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:00 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:44:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:44:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:44:19 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:44:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:44:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:44:23 GMT
ENV PG_MAJOR=10
# Wed, 26 Jul 2017 08:44:23 GMT
ENV PG_VERSION=10~beta2-1.pgdg90+1
# Wed, 26 Jul 2017 08:44:24 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:44:47 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:44:48 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:44:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:44:49 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:44:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:44:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:44:50 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:44:50 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:44:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:44:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:44:51 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:44:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a89e9890c383465015499306a27143688020b186d8efa289d9e97670b8c60dc`  
		Last Modified: Wed, 26 Jul 2017 08:50:39 GMT  
		Size: 7.0 MB (7029499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ec871acfa2d70642e3044907f4c793fbb34bba761548a6557dcce41e72453c`  
		Last Modified: Wed, 26 Jul 2017 08:50:38 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332a355d3d73c1cfbc811504d3ed1cf2c5660ea8736467140cf3c4538c135e6`  
		Last Modified: Wed, 26 Jul 2017 08:50:36 GMT  
		Size: 1.3 MB (1275160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6675a5cbbf42cffc312e240b1a8286b4cadbe7057c730c81df3e4ae90fc2d13`  
		Last Modified: Wed, 26 Jul 2017 08:50:37 GMT  
		Size: 6.6 MB (6577473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d0e64f9fe2ba9d7ff0aa91cfddadb79abfdc05a9523ac365496f35914b13c9`  
		Last Modified: Wed, 26 Jul 2017 08:50:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6df1120c4fd91d1cb826ee3406ebf7a0f03e3277756848e8bd4732271c5ee69`  
		Last Modified: Wed, 26 Jul 2017 08:50:37 GMT  
		Size: 4.5 KB (4470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2839ff434ea21e2b1e5ffbbb8677ab3422b2d6d8ef031a9d9c674ed257e29d2d`  
		Last Modified: Wed, 26 Jul 2017 08:50:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f7d83b6e56d109f27881638f2d395dac2636005c999f91fe244d04037dcb6b`  
		Last Modified: Wed, 26 Jul 2017 08:50:43 GMT  
		Size: 57.4 MB (57387747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e49ed16cf2784c0044b87c3cdd617a4a5cdf4c5c11267ac89c7f9b55360b26`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 7.3 KB (7277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1648d421ee128c1d71d11533fcd79277db1a76727d998a27d5f929b414ae5b3f`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4281bca3eaa46b5d1881add4ef8643cfb6377f754f941e92afc5c333df54df`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198626de6f790cf294a59bb16fff1514c58ede2a6a81017f912a7e56f1dc9483`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8afab72014e2e94ea4d79a0646ee03265f9810c85c81f8f59310ce6742bab3`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-beta2-alpine`

```console
$ docker pull postgres@sha256:89cffa4dd55cc2d90bc5c7b00cd46f391fee90027ca006212a31f5e7af5802eb
```

-	Platforms:
	-	linux; amd64

### `postgres:10-beta2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14711997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6091a94734be3cd1698e5b196a75e4a592e016a3557ae424ae54a97c3097ad0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:34:01 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:34:02 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:34:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:34:04 GMT
ENV PG_MAJOR=10
# Fri, 14 Jul 2017 22:53:05 GMT
ENV PG_VERSION=10beta2
# Fri, 14 Jul 2017 22:53:06 GMT
ENV PG_SHA256=0d6b50236039fc92e8784bd908b452c38ef63c0f9029f34e7115fbc30e17b195
# Fri, 14 Jul 2017 22:55:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 22:55:26 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 22:55:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 22:55:27 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 22:55:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 22:55:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 22:55:29 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 22:55:30 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 22:55:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 22:55:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 22:55:32 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 22:55:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e4b4820d45e23254268403c9a7d9f89767620f89a6532f48ae5c09be9f189`  
		Last Modified: Fri, 30 Jun 2017 00:14:50 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b46471032d7e97f29a7c31d31642993eb0244785c21e6c53b361c6283fe3942`  
		Last Modified: Fri, 30 Jun 2017 00:14:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd8b312d1f400c2c8c89d426f62fa95d17ed597eee05b41e97e1610e6e93295`  
		Last Modified: Fri, 14 Jul 2017 23:08:07 GMT  
		Size: 12.7 MB (12711874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ea0974178c3b86db6b60d3de0bf5dfee882bd8ce1f66a1e6b489d13e3df2bd`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 7.2 KB (7250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec3114a35a1d06e10440b32da0d9c8d7ca8209c6d16347344c694cdafd181cb`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3101d3dfaead53012926f4133e437c1e010121cdce9616b626fc31c3d20b16d`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c07027855a4311d01b075071f542e5478a527546c1a0103be85565f71cf1990`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cb664e6b8a8ae6da9e1ae421abe373bc5698cdb978140d55c88fd647807ff4`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:89cffa4dd55cc2d90bc5c7b00cd46f391fee90027ca006212a31f5e7af5802eb
```

-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14711997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6091a94734be3cd1698e5b196a75e4a592e016a3557ae424ae54a97c3097ad0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:34:01 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:34:02 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:34:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:34:04 GMT
ENV PG_MAJOR=10
# Fri, 14 Jul 2017 22:53:05 GMT
ENV PG_VERSION=10beta2
# Fri, 14 Jul 2017 22:53:06 GMT
ENV PG_SHA256=0d6b50236039fc92e8784bd908b452c38ef63c0f9029f34e7115fbc30e17b195
# Fri, 14 Jul 2017 22:55:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 22:55:26 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 22:55:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 22:55:27 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 22:55:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 22:55:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 22:55:29 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 22:55:30 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 22:55:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 22:55:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 22:55:32 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 22:55:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e4b4820d45e23254268403c9a7d9f89767620f89a6532f48ae5c09be9f189`  
		Last Modified: Fri, 30 Jun 2017 00:14:50 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b46471032d7e97f29a7c31d31642993eb0244785c21e6c53b361c6283fe3942`  
		Last Modified: Fri, 30 Jun 2017 00:14:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd8b312d1f400c2c8c89d426f62fa95d17ed597eee05b41e97e1610e6e93295`  
		Last Modified: Fri, 14 Jul 2017 23:08:07 GMT  
		Size: 12.7 MB (12711874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ea0974178c3b86db6b60d3de0bf5dfee882bd8ce1f66a1e6b489d13e3df2bd`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 7.2 KB (7250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec3114a35a1d06e10440b32da0d9c8d7ca8209c6d16347344c694cdafd181cb`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3101d3dfaead53012926f4133e437c1e010121cdce9616b626fc31c3d20b16d`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c07027855a4311d01b075071f542e5478a527546c1a0103be85565f71cf1990`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cb664e6b8a8ae6da9e1ae421abe373bc5698cdb978140d55c88fd647807ff4`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.3`

```console
$ docker pull postgres@sha256:87457f03e727da04b9955c0c5351fc02cac3e082f716b8edd9ac5070db11b74c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104326057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78122e537028316b9423455b7f7dc7b7e864cfc588ac2fce4d0766aa9f9bb90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Wed, 26 Jul 2017 08:45:43 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:46:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:46:32 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:46:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:46:33 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:46:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:46:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:46:34 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:46:35 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:46:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:46:36 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:46:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b514f6e3ef7cd0104320b6b5286c2bc1bf1949c7d9ea029db8d9ace616f7429`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e114ac261be35c8bd85b2424b1cc149488181eb29765b59b4955d501a8f3862`  
		Last Modified: Wed, 26 Jul 2017 08:51:31 GMT  
		Size: 43.3 MB (43289083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5c1803318ced2e9da2b84ed2a6da9e4679d51c054c9f4443d03e8bd2577971`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2969cff5710e0ebe112740fa4228c875005ea4a2a36857bcf06177db93aa0910`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a73d03b014d60ea2d7e09926afa5f2f113586c36c70815a420fb2b1b16f78a`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5c06fe4bd6567b096eacf04e29260f9fc3cc829485e6c138ab8d0c3644bf77`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e47c98c163ed3eb5e6c49c54dee6f02daff695de47c63d24a53e9b17550a78e`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:87457f03e727da04b9955c0c5351fc02cac3e082f716b8edd9ac5070db11b74c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104326057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78122e537028316b9423455b7f7dc7b7e864cfc588ac2fce4d0766aa9f9bb90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Wed, 26 Jul 2017 08:45:43 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:46:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:46:32 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:46:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:46:33 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:46:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:46:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:46:34 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:46:35 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:46:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:46:36 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:46:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b514f6e3ef7cd0104320b6b5286c2bc1bf1949c7d9ea029db8d9ace616f7429`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e114ac261be35c8bd85b2424b1cc149488181eb29765b59b4955d501a8f3862`  
		Last Modified: Wed, 26 Jul 2017 08:51:31 GMT  
		Size: 43.3 MB (43289083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5c1803318ced2e9da2b84ed2a6da9e4679d51c054c9f4443d03e8bd2577971`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2969cff5710e0ebe112740fa4228c875005ea4a2a36857bcf06177db93aa0910`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a73d03b014d60ea2d7e09926afa5f2f113586c36c70815a420fb2b1b16f78a`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5c06fe4bd6567b096eacf04e29260f9fc3cc829485e6c138ab8d0c3644bf77`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e47c98c163ed3eb5e6c49c54dee6f02daff695de47c63d24a53e9b17550a78e`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:87457f03e727da04b9955c0c5351fc02cac3e082f716b8edd9ac5070db11b74c
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104326057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78122e537028316b9423455b7f7dc7b7e864cfc588ac2fce4d0766aa9f9bb90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Wed, 26 Jul 2017 08:45:43 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:46:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:46:32 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:46:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:46:33 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:46:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:46:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:46:34 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:46:35 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:46:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:46:36 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:46:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b514f6e3ef7cd0104320b6b5286c2bc1bf1949c7d9ea029db8d9ace616f7429`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e114ac261be35c8bd85b2424b1cc149488181eb29765b59b4955d501a8f3862`  
		Last Modified: Wed, 26 Jul 2017 08:51:31 GMT  
		Size: 43.3 MB (43289083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5c1803318ced2e9da2b84ed2a6da9e4679d51c054c9f4443d03e8bd2577971`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2969cff5710e0ebe112740fa4228c875005ea4a2a36857bcf06177db93aa0910`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a73d03b014d60ea2d7e09926afa5f2f113586c36c70815a420fb2b1b16f78a`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5c06fe4bd6567b096eacf04e29260f9fc3cc829485e6c138ab8d0c3644bf77`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e47c98c163ed3eb5e6c49c54dee6f02daff695de47c63d24a53e9b17550a78e`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:87457f03e727da04b9955c0c5351fc02cac3e082f716b8edd9ac5070db11b74c
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104326057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78122e537028316b9423455b7f7dc7b7e864cfc588ac2fce4d0766aa9f9bb90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Wed, 26 Jul 2017 08:45:43 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:46:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:46:32 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:46:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:46:33 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:46:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:46:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:46:34 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:46:35 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:46:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:46:36 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:46:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b514f6e3ef7cd0104320b6b5286c2bc1bf1949c7d9ea029db8d9ace616f7429`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e114ac261be35c8bd85b2424b1cc149488181eb29765b59b4955d501a8f3862`  
		Last Modified: Wed, 26 Jul 2017 08:51:31 GMT  
		Size: 43.3 MB (43289083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5c1803318ced2e9da2b84ed2a6da9e4679d51c054c9f4443d03e8bd2577971`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2969cff5710e0ebe112740fa4228c875005ea4a2a36857bcf06177db93aa0910`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a73d03b014d60ea2d7e09926afa5f2f113586c36c70815a420fb2b1b16f78a`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5c06fe4bd6567b096eacf04e29260f9fc3cc829485e6c138ab8d0c3644bf77`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e47c98c163ed3eb5e6c49c54dee6f02daff695de47c63d24a53e9b17550a78e`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.3-alpine`

```console
$ docker pull postgres@sha256:f3aefe2474c90bc74030b2d36faf3aef58060e8d6dd430655364e172da60b03e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14665868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a9a3968e521a23b2558607492f407455c8006f827fa9a4c3bf029646bea2db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:37:35 GMT
ENV PG_MAJOR=9.6
# Wed, 28 Jun 2017 21:37:36 GMT
ENV PG_VERSION=9.6.3
# Wed, 28 Jun 2017 21:37:37 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Fri, 14 Jul 2017 22:57:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 22:57:56 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 22:57:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 22:57:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 22:58:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 22:58:00 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 22:58:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 22:58:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 22:58:02 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 22:58:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70311e6e9515aee11be627463ccdd28a7157fe10e19ecdfb36b0cd9f3b94565d`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 12.7 MB (12686067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d0990601d4ccc94b2ea37876f0742e01c204f269faf3d7d00c699b6f02856`  
		Last Modified: Fri, 14 Jul 2017 23:09:15 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21872486b53ee8f8dbe59a7e87f948f876dddcf00f437b1dad887e0194fea613`  
		Last Modified: Fri, 14 Jul 2017 23:09:13 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8daecd252ec64e60002904151327308db92f0a7fa3e870970bb96602ae7fc3b`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a940417865a26f64698d25e99a429b6d1d5b5a67fe0042480e90d42ab3a0c070`  
		Last Modified: Fri, 14 Jul 2017 23:09:14 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e7d9978c07bccb3d87e1f132ca9dfb152f1aad00c416bd4cf583de4719e6db`  
		Last Modified: Fri, 14 Jul 2017 23:09:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:f3aefe2474c90bc74030b2d36faf3aef58060e8d6dd430655364e172da60b03e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14665868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a9a3968e521a23b2558607492f407455c8006f827fa9a4c3bf029646bea2db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:37:35 GMT
ENV PG_MAJOR=9.6
# Wed, 28 Jun 2017 21:37:36 GMT
ENV PG_VERSION=9.6.3
# Wed, 28 Jun 2017 21:37:37 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Fri, 14 Jul 2017 22:57:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 22:57:56 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 22:57:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 22:57:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 22:58:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 22:58:00 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 22:58:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 22:58:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 22:58:02 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 22:58:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70311e6e9515aee11be627463ccdd28a7157fe10e19ecdfb36b0cd9f3b94565d`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 12.7 MB (12686067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d0990601d4ccc94b2ea37876f0742e01c204f269faf3d7d00c699b6f02856`  
		Last Modified: Fri, 14 Jul 2017 23:09:15 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21872486b53ee8f8dbe59a7e87f948f876dddcf00f437b1dad887e0194fea613`  
		Last Modified: Fri, 14 Jul 2017 23:09:13 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8daecd252ec64e60002904151327308db92f0a7fa3e870970bb96602ae7fc3b`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a940417865a26f64698d25e99a429b6d1d5b5a67fe0042480e90d42ab3a0c070`  
		Last Modified: Fri, 14 Jul 2017 23:09:14 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e7d9978c07bccb3d87e1f132ca9dfb152f1aad00c416bd4cf583de4719e6db`  
		Last Modified: Fri, 14 Jul 2017 23:09:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:f3aefe2474c90bc74030b2d36faf3aef58060e8d6dd430655364e172da60b03e
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14665868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a9a3968e521a23b2558607492f407455c8006f827fa9a4c3bf029646bea2db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:37:35 GMT
ENV PG_MAJOR=9.6
# Wed, 28 Jun 2017 21:37:36 GMT
ENV PG_VERSION=9.6.3
# Wed, 28 Jun 2017 21:37:37 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Fri, 14 Jul 2017 22:57:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 22:57:56 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 22:57:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 22:57:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 22:58:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 22:58:00 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 22:58:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 22:58:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 22:58:02 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 22:58:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70311e6e9515aee11be627463ccdd28a7157fe10e19ecdfb36b0cd9f3b94565d`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 12.7 MB (12686067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d0990601d4ccc94b2ea37876f0742e01c204f269faf3d7d00c699b6f02856`  
		Last Modified: Fri, 14 Jul 2017 23:09:15 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21872486b53ee8f8dbe59a7e87f948f876dddcf00f437b1dad887e0194fea613`  
		Last Modified: Fri, 14 Jul 2017 23:09:13 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8daecd252ec64e60002904151327308db92f0a7fa3e870970bb96602ae7fc3b`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a940417865a26f64698d25e99a429b6d1d5b5a67fe0042480e90d42ab3a0c070`  
		Last Modified: Fri, 14 Jul 2017 23:09:14 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e7d9978c07bccb3d87e1f132ca9dfb152f1aad00c416bd4cf583de4719e6db`  
		Last Modified: Fri, 14 Jul 2017 23:09:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:f3aefe2474c90bc74030b2d36faf3aef58060e8d6dd430655364e172da60b03e
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14665868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a9a3968e521a23b2558607492f407455c8006f827fa9a4c3bf029646bea2db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:37:35 GMT
ENV PG_MAJOR=9.6
# Wed, 28 Jun 2017 21:37:36 GMT
ENV PG_VERSION=9.6.3
# Wed, 28 Jun 2017 21:37:37 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Fri, 14 Jul 2017 22:57:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 22:57:56 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 22:57:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 22:57:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 22:58:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 22:58:00 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 22:58:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 22:58:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 22:58:02 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 22:58:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70311e6e9515aee11be627463ccdd28a7157fe10e19ecdfb36b0cd9f3b94565d`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 12.7 MB (12686067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d0990601d4ccc94b2ea37876f0742e01c204f269faf3d7d00c699b6f02856`  
		Last Modified: Fri, 14 Jul 2017 23:09:15 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21872486b53ee8f8dbe59a7e87f948f876dddcf00f437b1dad887e0194fea613`  
		Last Modified: Fri, 14 Jul 2017 23:09:13 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8daecd252ec64e60002904151327308db92f0a7fa3e870970bb96602ae7fc3b`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a940417865a26f64698d25e99a429b6d1d5b5a67fe0042480e90d42ab3a0c070`  
		Last Modified: Fri, 14 Jul 2017 23:09:14 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e7d9978c07bccb3d87e1f132ca9dfb152f1aad00c416bd4cf583de4719e6db`  
		Last Modified: Fri, 14 Jul 2017 23:09:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7`

```console
$ docker pull postgres@sha256:cd6ae71f0d81eb7f7b13ceabd0a0a6f8bcac7e9791b441cc7a99b2985d69bd00
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103827610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e00628b3cc4bfb8995082135dacada260eca9b5b64289f6bd238c0c23fa8d6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:46:39 GMT
ENV PG_MAJOR=9.5
# Wed, 26 Jul 2017 08:46:39 GMT
ENV PG_VERSION=9.5.7-1.pgdg80+1
# Wed, 26 Jul 2017 08:46:40 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:47:26 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:47:27 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:47:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:47:28 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:47:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:47:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:47:29 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:47:30 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:47:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:47:31 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:47:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2528c78440a3d4394019802fc3d5c50b37aae62a1efe94936e191dc7dd9e1ff6`  
		Last Modified: Wed, 26 Jul 2017 08:52:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d1334d2c301d2e506b5c889fcfb8b0dbf5489d44886f4c3f164f387ef8793d`  
		Last Modified: Wed, 26 Jul 2017 08:52:26 GMT  
		Size: 42.8 MB (42790910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dfd67bee1c78fa9aa340d6d7c00fad39fc1c2579718f81f977581fd6c60a20`  
		Last Modified: Wed, 26 Jul 2017 08:52:19 GMT  
		Size: 6.8 KB (6820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545d850abe3277e457feca5a009c4a49cd38facd7dd345f5feb34d1a313fb0a5`  
		Last Modified: Wed, 26 Jul 2017 08:52:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf43ca9cc7b7632efb143be453ad02fea2fb0287bc5d9821f1737757f0ad0a8`  
		Last Modified: Wed, 26 Jul 2017 08:52:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7baace22ea9ec7faebcf4ca56838ece2f4b7e2762223d2603a1682918a53f088`  
		Last Modified: Wed, 26 Jul 2017 08:52:18 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3241332b8902e88ac6a4462449eb2c55b06cc80e41295007862c2fc7384a9b0b`  
		Last Modified: Wed, 26 Jul 2017 08:52:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:cd6ae71f0d81eb7f7b13ceabd0a0a6f8bcac7e9791b441cc7a99b2985d69bd00
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103827610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e00628b3cc4bfb8995082135dacada260eca9b5b64289f6bd238c0c23fa8d6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:46:39 GMT
ENV PG_MAJOR=9.5
# Wed, 26 Jul 2017 08:46:39 GMT
ENV PG_VERSION=9.5.7-1.pgdg80+1
# Wed, 26 Jul 2017 08:46:40 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:47:26 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:47:27 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:47:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:47:28 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:47:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:47:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:47:29 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:47:30 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:47:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:47:31 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:47:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2528c78440a3d4394019802fc3d5c50b37aae62a1efe94936e191dc7dd9e1ff6`  
		Last Modified: Wed, 26 Jul 2017 08:52:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d1334d2c301d2e506b5c889fcfb8b0dbf5489d44886f4c3f164f387ef8793d`  
		Last Modified: Wed, 26 Jul 2017 08:52:26 GMT  
		Size: 42.8 MB (42790910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dfd67bee1c78fa9aa340d6d7c00fad39fc1c2579718f81f977581fd6c60a20`  
		Last Modified: Wed, 26 Jul 2017 08:52:19 GMT  
		Size: 6.8 KB (6820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545d850abe3277e457feca5a009c4a49cd38facd7dd345f5feb34d1a313fb0a5`  
		Last Modified: Wed, 26 Jul 2017 08:52:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf43ca9cc7b7632efb143be453ad02fea2fb0287bc5d9821f1737757f0ad0a8`  
		Last Modified: Wed, 26 Jul 2017 08:52:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7baace22ea9ec7faebcf4ca56838ece2f4b7e2762223d2603a1682918a53f088`  
		Last Modified: Wed, 26 Jul 2017 08:52:18 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3241332b8902e88ac6a4462449eb2c55b06cc80e41295007862c2fc7384a9b0b`  
		Last Modified: Wed, 26 Jul 2017 08:52:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7-alpine`

```console
$ docker pull postgres@sha256:4f5cf32a6a10d2fe4601b31fca2b8d4302860f595cd51e1a276f79e5aa9b5477
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14376096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998347a1078e8c82bdb48503e172f5e27f203ca3532e6d2ecb0120064b2ebf8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:48:33 GMT
ENV PG_MAJOR=9.5
# Wed, 28 Jun 2017 21:48:34 GMT
ENV PG_VERSION=9.5.7
# Wed, 28 Jun 2017 21:48:35 GMT
ENV PG_SHA256=8b1e936f82109325decc0f5575e846b93fb4fd384e8c4bde83ff5e7f87fc6cad
# Fri, 14 Jul 2017 23:00:17 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:00:18 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:00:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:00:19 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:00:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:00:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:00:21 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 23:00:22 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 23:00:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 23:00:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 23:00:24 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 23:00:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417692adc5b46e5ffb2af3d8c892e639a5e68fae39c074c8040d4c1b7f5af2f7`  
		Last Modified: Fri, 14 Jul 2017 23:10:21 GMT  
		Size: 12.4 MB (12396564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cbdf96ae59391611333701850a0f8d1308a2ef660c45427a9b35ac81cc0537`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 6.8 KB (6788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d80e27a129e705acc3ba836bc09915bb78fd010c53cdfb9fc03315e8104c32`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2006e95b81b92b3c1cfd5703c3b30e9414d630f56a4508b32ab1000051028038`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e80cea22fffec026534a9faeab4d8a76c5e381870b1ffd986d97d2e8cabb7cd`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b990e76de409c687f22392406fd1d9f0fba42f5ddec5e79d25d4387722763bfb`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:4f5cf32a6a10d2fe4601b31fca2b8d4302860f595cd51e1a276f79e5aa9b5477
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14376096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998347a1078e8c82bdb48503e172f5e27f203ca3532e6d2ecb0120064b2ebf8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:48:33 GMT
ENV PG_MAJOR=9.5
# Wed, 28 Jun 2017 21:48:34 GMT
ENV PG_VERSION=9.5.7
# Wed, 28 Jun 2017 21:48:35 GMT
ENV PG_SHA256=8b1e936f82109325decc0f5575e846b93fb4fd384e8c4bde83ff5e7f87fc6cad
# Fri, 14 Jul 2017 23:00:17 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:00:18 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:00:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:00:19 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:00:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:00:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:00:21 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 23:00:22 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 23:00:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 23:00:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 23:00:24 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 23:00:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417692adc5b46e5ffb2af3d8c892e639a5e68fae39c074c8040d4c1b7f5af2f7`  
		Last Modified: Fri, 14 Jul 2017 23:10:21 GMT  
		Size: 12.4 MB (12396564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cbdf96ae59391611333701850a0f8d1308a2ef660c45427a9b35ac81cc0537`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 6.8 KB (6788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d80e27a129e705acc3ba836bc09915bb78fd010c53cdfb9fc03315e8104c32`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2006e95b81b92b3c1cfd5703c3b30e9414d630f56a4508b32ab1000051028038`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e80cea22fffec026534a9faeab4d8a76c5e381870b1ffd986d97d2e8cabb7cd`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b990e76de409c687f22392406fd1d9f0fba42f5ddec5e79d25d4387722763bfb`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12`

```console
$ docker pull postgres@sha256:8226f86211d22b498ebfc8bb20ac70cb2c94bbcfd006095ab6ceb3c3e954a10b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103501935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e39dd8f9fca39fec71febdb7c87ad79a38a24f04f202cdad82b12a07e54d36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:47:33 GMT
ENV PG_MAJOR=9.4
# Wed, 26 Jul 2017 08:47:34 GMT
ENV PG_VERSION=9.4.12-1.pgdg80+1
# Wed, 26 Jul 2017 08:47:34 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:48:20 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:48:21 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:48:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:48:22 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:48:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:48:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:48:23 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:48:24 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:48:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:48:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:48:25 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:48:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a90405ed879591bab5a2e386821c8634607b503f71beb81a1e51b365a04eff2`  
		Last Modified: Wed, 26 Jul 2017 08:52:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1c3bd61f6fcbd963d3106948028a05913397fa4a840feba2ece0f41d7a18c6`  
		Last Modified: Wed, 26 Jul 2017 08:52:58 GMT  
		Size: 42.5 MB (42465374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66919e7bc2a75b2d82d73224ff79316a74a7c0bcba4a89b26a418137db57ef83`  
		Last Modified: Wed, 26 Jul 2017 08:52:49 GMT  
		Size: 6.7 KB (6677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae01177d02aba2ad40a7865da87a2f07277f04e702239fb6ddfcae5c1d573ed`  
		Last Modified: Wed, 26 Jul 2017 08:52:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbae88857f99fc510762a40288907b6c7dcf4bcd1ae5e4bd659784e4e2e8f30e`  
		Last Modified: Wed, 26 Jul 2017 08:52:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a16046273175eb152dc6c98b850df21650cd0f2561f9137c10f68ce0bfac819`  
		Last Modified: Wed, 26 Jul 2017 08:52:49 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f816eec1ab409274d4c9c060f645fba90f5ffd767c1b19d47b3ff05c72e796d5`  
		Last Modified: Wed, 26 Jul 2017 08:52:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:8226f86211d22b498ebfc8bb20ac70cb2c94bbcfd006095ab6ceb3c3e954a10b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103501935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e39dd8f9fca39fec71febdb7c87ad79a38a24f04f202cdad82b12a07e54d36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:47:33 GMT
ENV PG_MAJOR=9.4
# Wed, 26 Jul 2017 08:47:34 GMT
ENV PG_VERSION=9.4.12-1.pgdg80+1
# Wed, 26 Jul 2017 08:47:34 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:48:20 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:48:21 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:48:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:48:22 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:48:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:48:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:48:23 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:48:24 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:48:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:48:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:48:25 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:48:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a90405ed879591bab5a2e386821c8634607b503f71beb81a1e51b365a04eff2`  
		Last Modified: Wed, 26 Jul 2017 08:52:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1c3bd61f6fcbd963d3106948028a05913397fa4a840feba2ece0f41d7a18c6`  
		Last Modified: Wed, 26 Jul 2017 08:52:58 GMT  
		Size: 42.5 MB (42465374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66919e7bc2a75b2d82d73224ff79316a74a7c0bcba4a89b26a418137db57ef83`  
		Last Modified: Wed, 26 Jul 2017 08:52:49 GMT  
		Size: 6.7 KB (6677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae01177d02aba2ad40a7865da87a2f07277f04e702239fb6ddfcae5c1d573ed`  
		Last Modified: Wed, 26 Jul 2017 08:52:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbae88857f99fc510762a40288907b6c7dcf4bcd1ae5e4bd659784e4e2e8f30e`  
		Last Modified: Wed, 26 Jul 2017 08:52:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a16046273175eb152dc6c98b850df21650cd0f2561f9137c10f68ce0bfac819`  
		Last Modified: Wed, 26 Jul 2017 08:52:49 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f816eec1ab409274d4c9c060f645fba90f5ffd767c1b19d47b3ff05c72e796d5`  
		Last Modified: Wed, 26 Jul 2017 08:52:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12-alpine`

```console
$ docker pull postgres@sha256:f581c0c3f2dd3dfb38efb262b923a3363bf9135cc206b106a64156335d9de28e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14244049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1284a97e12c7c5bd4da0148446b081765f9e5540bc74a319e0f9ff8a39c0d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:45:57 GMT
ENV PG_MAJOR=9.4
# Wed, 28 Jun 2017 21:45:58 GMT
ENV PG_VERSION=9.4.12
# Wed, 28 Jun 2017 21:45:59 GMT
ENV PG_SHA256=fca055481875d1c49e31c28443f56472a1474b3fbe25b7ae64440c6118f82e64
# Fri, 14 Jul 2017 23:02:31 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:02:32 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:02:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:02:33 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:02:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:02:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:02:35 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 23:02:36 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 23:02:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 23:02:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 23:02:38 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 23:02:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bea0bc24cb168162e30229f6299a54ac7c3add0ab9234ceab493c7fe36c3c4`  
		Last Modified: Fri, 14 Jul 2017 23:11:08 GMT  
		Size: 12.3 MB (12264655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8529f8e43281f21666d90c19274e614ac271eba12eaf367fe9063050d120c55`  
		Last Modified: Fri, 14 Jul 2017 23:11:09 GMT  
		Size: 6.6 KB (6647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb9916c27fc11743702814803dc7ea6b442a052e0f135069377e2482e6048a9`  
		Last Modified: Fri, 14 Jul 2017 23:11:06 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4fbc8fb2cc8bb54d6bec0e1f914a0be4b4eb37acdeddd7068cb706821fb25d`  
		Last Modified: Fri, 14 Jul 2017 23:11:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07d4879cbf2f69d2a0937294bfc84f3d38ff71ab30b312e1274b40f287b1f77`  
		Last Modified: Fri, 14 Jul 2017 23:11:05 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68653b4932f173fc5e95bdc9af585e48cf0264114ec56f2d77249cdcceec4080`  
		Last Modified: Fri, 14 Jul 2017 23:11:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:f581c0c3f2dd3dfb38efb262b923a3363bf9135cc206b106a64156335d9de28e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14244049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1284a97e12c7c5bd4da0148446b081765f9e5540bc74a319e0f9ff8a39c0d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:45:57 GMT
ENV PG_MAJOR=9.4
# Wed, 28 Jun 2017 21:45:58 GMT
ENV PG_VERSION=9.4.12
# Wed, 28 Jun 2017 21:45:59 GMT
ENV PG_SHA256=fca055481875d1c49e31c28443f56472a1474b3fbe25b7ae64440c6118f82e64
# Fri, 14 Jul 2017 23:02:31 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:02:32 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:02:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:02:33 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:02:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:02:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:02:35 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 23:02:36 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 23:02:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 23:02:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 23:02:38 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 23:02:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bea0bc24cb168162e30229f6299a54ac7c3add0ab9234ceab493c7fe36c3c4`  
		Last Modified: Fri, 14 Jul 2017 23:11:08 GMT  
		Size: 12.3 MB (12264655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8529f8e43281f21666d90c19274e614ac271eba12eaf367fe9063050d120c55`  
		Last Modified: Fri, 14 Jul 2017 23:11:09 GMT  
		Size: 6.6 KB (6647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb9916c27fc11743702814803dc7ea6b442a052e0f135069377e2482e6048a9`  
		Last Modified: Fri, 14 Jul 2017 23:11:06 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4fbc8fb2cc8bb54d6bec0e1f914a0be4b4eb37acdeddd7068cb706821fb25d`  
		Last Modified: Fri, 14 Jul 2017 23:11:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07d4879cbf2f69d2a0937294bfc84f3d38ff71ab30b312e1274b40f287b1f77`  
		Last Modified: Fri, 14 Jul 2017 23:11:05 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68653b4932f173fc5e95bdc9af585e48cf0264114ec56f2d77249cdcceec4080`  
		Last Modified: Fri, 14 Jul 2017 23:11:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17`

```console
$ docker pull postgres@sha256:ab87b742fd4ed59f8291ab55437ccc39879a5ad28143259d32165eb2505d60b5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103139147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f739868f4306a607a515dd3c3a7102c5827fd5a93bf793de8a2352b88bb24145`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:48:28 GMT
ENV PG_MAJOR=9.3
# Wed, 26 Jul 2017 08:48:28 GMT
ENV PG_VERSION=9.3.17-1.pgdg80+1
# Wed, 26 Jul 2017 08:48:29 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:49:24 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:49:25 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:49:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:49:26 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:49:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:49:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:49:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:49:27 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:49:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:49:28 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:49:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be238acc9fc258a3ae715f9dfb4879bf4428f9069e04cbdd9e1e8b895bd47999`  
		Last Modified: Wed, 26 Jul 2017 08:53:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441baeaea757447d545af63773c10d8226f61f5c81dfa1102f808305ea0bb754`  
		Last Modified: Wed, 26 Jul 2017 08:53:31 GMT  
		Size: 42.1 MB (42102773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4d33d48e77d6fff4e7c0b36bef495c89228e11c0616ff9a5e493e65b2c82ae`  
		Last Modified: Wed, 26 Jul 2017 08:53:24 GMT  
		Size: 6.5 KB (6496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5773734dd24fc80483f2f643ca57637b2c2e359e202603a7d947637a6b02f88e`  
		Last Modified: Wed, 26 Jul 2017 08:53:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6be19e71339fe3ca11b5abc419a7c82feb592dc622b63740a6d79aa1d27d6f6`  
		Last Modified: Wed, 26 Jul 2017 08:53:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03978844d1ee0ba424a092b52a95c0a2c72690c27a464bc2dab826968fc4b3d`  
		Last Modified: Wed, 26 Jul 2017 08:53:24 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dd6c6d53a95c014118fa15dc766687a8b192d67291488c1f063851abc152a2`  
		Last Modified: Wed, 26 Jul 2017 08:53:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:ab87b742fd4ed59f8291ab55437ccc39879a5ad28143259d32165eb2505d60b5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103139147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f739868f4306a607a515dd3c3a7102c5827fd5a93bf793de8a2352b88bb24145`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:48:28 GMT
ENV PG_MAJOR=9.3
# Wed, 26 Jul 2017 08:48:28 GMT
ENV PG_VERSION=9.3.17-1.pgdg80+1
# Wed, 26 Jul 2017 08:48:29 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:49:24 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:49:25 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:49:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:49:26 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:49:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:49:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:49:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:49:27 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:49:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:49:28 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:49:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be238acc9fc258a3ae715f9dfb4879bf4428f9069e04cbdd9e1e8b895bd47999`  
		Last Modified: Wed, 26 Jul 2017 08:53:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441baeaea757447d545af63773c10d8226f61f5c81dfa1102f808305ea0bb754`  
		Last Modified: Wed, 26 Jul 2017 08:53:31 GMT  
		Size: 42.1 MB (42102773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4d33d48e77d6fff4e7c0b36bef495c89228e11c0616ff9a5e493e65b2c82ae`  
		Last Modified: Wed, 26 Jul 2017 08:53:24 GMT  
		Size: 6.5 KB (6496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5773734dd24fc80483f2f643ca57637b2c2e359e202603a7d947637a6b02f88e`  
		Last Modified: Wed, 26 Jul 2017 08:53:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6be19e71339fe3ca11b5abc419a7c82feb592dc622b63740a6d79aa1d27d6f6`  
		Last Modified: Wed, 26 Jul 2017 08:53:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03978844d1ee0ba424a092b52a95c0a2c72690c27a464bc2dab826968fc4b3d`  
		Last Modified: Wed, 26 Jul 2017 08:53:24 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dd6c6d53a95c014118fa15dc766687a8b192d67291488c1f063851abc152a2`  
		Last Modified: Wed, 26 Jul 2017 08:53:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17-alpine`

```console
$ docker pull postgres@sha256:a343ef74b28559e10a112a73f88969837a56c4246d4903962e9affe79698b823
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13954516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87bd4728a819c7424ddfa4a9c196da74016f29884ac1c2a9f436611a2cda3d0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:43:11 GMT
ENV PG_MAJOR=9.3
# Wed, 28 Jun 2017 21:43:12 GMT
ENV PG_VERSION=9.3.17
# Wed, 28 Jun 2017 21:43:13 GMT
ENV PG_SHA256=9c03e5f280cfe9bd202fa01af773eb146abd8ab3065f7279d574c568f6948dbe
# Wed, 28 Jun 2017 21:43:14 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 28 Jun 2017 21:43:14 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 14 Jul 2017 23:04:46 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:04:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:04:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:04:48 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:04:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:04:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:04:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 23:04:50 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 23:04:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 23:04:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 23:04:52 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 23:04:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b24d0b0d7ea46b1fc49dd18b0e50c4adf9ee12c56582322998c7861b40db06`  
		Last Modified: Fri, 14 Jul 2017 23:11:54 GMT  
		Size: 12.0 MB (11975311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dade6e86bec306f988aafd12db6de147120ab73a2aa6e2da5c90724d37da353`  
		Last Modified: Fri, 14 Jul 2017 23:11:52 GMT  
		Size: 6.5 KB (6463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3dfe1242313e89cc6b2bd3935512619afa89efde0224c556bcf61484c07dc02`  
		Last Modified: Fri, 14 Jul 2017 23:11:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bd7e6f01cd3dfef067d661534ec5bd04fdcce872114f2554db07e03e78d189`  
		Last Modified: Fri, 14 Jul 2017 23:11:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3d826bd0fa1ee390a1df55f3bf9a3b13e23c1f1876a62c07f73d1bcb6dc7de`  
		Last Modified: Fri, 14 Jul 2017 23:11:52 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b2d5b4ec055ea666f3b09f1c2664dea19ffd4ce074f48cce5c15699065e688`  
		Last Modified: Fri, 14 Jul 2017 23:11:52 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:a343ef74b28559e10a112a73f88969837a56c4246d4903962e9affe79698b823
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13954516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87bd4728a819c7424ddfa4a9c196da74016f29884ac1c2a9f436611a2cda3d0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:43:11 GMT
ENV PG_MAJOR=9.3
# Wed, 28 Jun 2017 21:43:12 GMT
ENV PG_VERSION=9.3.17
# Wed, 28 Jun 2017 21:43:13 GMT
ENV PG_SHA256=9c03e5f280cfe9bd202fa01af773eb146abd8ab3065f7279d574c568f6948dbe
# Wed, 28 Jun 2017 21:43:14 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 28 Jun 2017 21:43:14 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 14 Jul 2017 23:04:46 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:04:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:04:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:04:48 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:04:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:04:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:04:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 23:04:50 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 23:04:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 23:04:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 23:04:52 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 23:04:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b24d0b0d7ea46b1fc49dd18b0e50c4adf9ee12c56582322998c7861b40db06`  
		Last Modified: Fri, 14 Jul 2017 23:11:54 GMT  
		Size: 12.0 MB (11975311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dade6e86bec306f988aafd12db6de147120ab73a2aa6e2da5c90724d37da353`  
		Last Modified: Fri, 14 Jul 2017 23:11:52 GMT  
		Size: 6.5 KB (6463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3dfe1242313e89cc6b2bd3935512619afa89efde0224c556bcf61484c07dc02`  
		Last Modified: Fri, 14 Jul 2017 23:11:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bd7e6f01cd3dfef067d661534ec5bd04fdcce872114f2554db07e03e78d189`  
		Last Modified: Fri, 14 Jul 2017 23:11:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3d826bd0fa1ee390a1df55f3bf9a3b13e23c1f1876a62c07f73d1bcb6dc7de`  
		Last Modified: Fri, 14 Jul 2017 23:11:52 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b2d5b4ec055ea666f3b09f1c2664dea19ffd4ce074f48cce5c15699065e688`  
		Last Modified: Fri, 14 Jul 2017 23:11:52 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21`

```console
$ docker pull postgres@sha256:56b853e3bc53142eaa1de54e1631dcf97ce3a74a582ce06b393a19b520f85e10
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102978386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b1bca6ee1059b002d7c480a614f0b0acafea41313c71fe3bac48837f4d9720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:49:31 GMT
ENV PG_MAJOR=9.2
# Wed, 26 Jul 2017 08:49:32 GMT
ENV PG_VERSION=9.2.21-1.pgdg80+1
# Wed, 26 Jul 2017 08:49:32 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:50:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:50:23 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:50:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:50:23 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:50:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:50:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:50:25 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:50:25 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:50:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:50:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:50:26 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:50:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658c8881980bdd600f19552441765f31067d662acc3e42227eaa1df239f5ac9`  
		Last Modified: Wed, 26 Jul 2017 08:53:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6d185a06c0a6af4e12b108daef0b8f51bc25c92f3a678fa440d5eca547d6b0`  
		Last Modified: Wed, 26 Jul 2017 08:54:01 GMT  
		Size: 41.9 MB (41942069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ef47643c152a4cb7bb57bb957d501d2d489d717e0d0d81f17ac85f28d50284`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5dac6f2d96ea4dbc83a95190a96fb8291abc3994b4daf0cf822e8a64cd6d69`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833d4464f23d70d2583d38971584bdba4a6033c453045b37b63b2ae74462bdeb`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847884b5ba3f31fb6be6a1a8e084ab7c183a82dcd3bdd288a492a07473dcf32e`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eeb8173759793cb58d2d426f6c7037fc63fae13599ac175c55776f317e2f09`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:56b853e3bc53142eaa1de54e1631dcf97ce3a74a582ce06b393a19b520f85e10
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102978386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b1bca6ee1059b002d7c480a614f0b0acafea41313c71fe3bac48837f4d9720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:49:31 GMT
ENV PG_MAJOR=9.2
# Wed, 26 Jul 2017 08:49:32 GMT
ENV PG_VERSION=9.2.21-1.pgdg80+1
# Wed, 26 Jul 2017 08:49:32 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:50:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:50:23 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:50:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:50:23 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:50:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:50:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:50:25 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Jul 2017 08:50:25 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:50:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:50:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:50:26 GMT
EXPOSE 5432/tcp
# Wed, 26 Jul 2017 08:50:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658c8881980bdd600f19552441765f31067d662acc3e42227eaa1df239f5ac9`  
		Last Modified: Wed, 26 Jul 2017 08:53:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6d185a06c0a6af4e12b108daef0b8f51bc25c92f3a678fa440d5eca547d6b0`  
		Last Modified: Wed, 26 Jul 2017 08:54:01 GMT  
		Size: 41.9 MB (41942069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ef47643c152a4cb7bb57bb957d501d2d489d717e0d0d81f17ac85f28d50284`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5dac6f2d96ea4dbc83a95190a96fb8291abc3994b4daf0cf822e8a64cd6d69`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833d4464f23d70d2583d38971584bdba4a6033c453045b37b63b2ae74462bdeb`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847884b5ba3f31fb6be6a1a8e084ab7c183a82dcd3bdd288a492a07473dcf32e`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eeb8173759793cb58d2d426f6c7037fc63fae13599ac175c55776f317e2f09`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21-alpine`

```console
$ docker pull postgres@sha256:3a50a4041e115a380b91f2fbd7496570be65c8c8d3e247026dc281eedff9bd00
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13782433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0186cd6f70d73499320e3637b8c2e4ad26b190ea03db9642a11d2bf86d89bdf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:40:33 GMT
ENV PG_MAJOR=9.2
# Wed, 28 Jun 2017 21:40:34 GMT
ENV PG_VERSION=9.2.21
# Wed, 28 Jun 2017 21:40:35 GMT
ENV PG_SHA256=0697e843523ee60c563f987f9c65bc4201294b18525d6e5e4b2c50c6d4058ef9
# Wed, 28 Jun 2017 21:40:36 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 28 Jun 2017 21:40:36 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 14 Jul 2017 23:06:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:06:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:06:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:07:00 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:07:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:07:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:07:02 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 23:07:03 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 23:07:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 23:07:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 23:07:05 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 23:07:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b769e02d35c775ba73aba791d5999b32d38f3730b18cfda4c6b59a59c1d8b5`  
		Last Modified: Fri, 14 Jul 2017 23:12:41 GMT  
		Size: 11.8 MB (11803287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c1f5b84a997b8ccbd357282c4f90e796b44088b43550f41c92022d8d9ac26`  
		Last Modified: Fri, 14 Jul 2017 23:12:38 GMT  
		Size: 6.4 KB (6404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c92463db1ac94e9ac1a31ddc9d811ee90e5567939d1978b4ea1aa3c6de4dd7`  
		Last Modified: Fri, 14 Jul 2017 23:12:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a91e91c44cb5174e801fefd74d364b74c5f4d1dd7da4c1b3e35f45b159de8e7`  
		Last Modified: Fri, 14 Jul 2017 23:12:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6bdf630252c7a497393ddf76603d5bfe436ce3401d35be7becff91cfa4768d`  
		Last Modified: Fri, 14 Jul 2017 23:12:38 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158e9cea6276dc9c4fdab7a23f043677b073a63c6e35d0c95c0207c0a123ecca`  
		Last Modified: Fri, 14 Jul 2017 23:12:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:3a50a4041e115a380b91f2fbd7496570be65c8c8d3e247026dc281eedff9bd00
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13782433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0186cd6f70d73499320e3637b8c2e4ad26b190ea03db9642a11d2bf86d89bdf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:40:33 GMT
ENV PG_MAJOR=9.2
# Wed, 28 Jun 2017 21:40:34 GMT
ENV PG_VERSION=9.2.21
# Wed, 28 Jun 2017 21:40:35 GMT
ENV PG_SHA256=0697e843523ee60c563f987f9c65bc4201294b18525d6e5e4b2c50c6d4058ef9
# Wed, 28 Jun 2017 21:40:36 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 28 Jun 2017 21:40:36 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 14 Jul 2017 23:06:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:06:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:06:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:07:00 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:07:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:07:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:07:02 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 14 Jul 2017 23:07:03 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 14 Jul 2017 23:07:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Jul 2017 23:07:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 23:07:05 GMT
EXPOSE 5432/tcp
# Fri, 14 Jul 2017 23:07:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b769e02d35c775ba73aba791d5999b32d38f3730b18cfda4c6b59a59c1d8b5`  
		Last Modified: Fri, 14 Jul 2017 23:12:41 GMT  
		Size: 11.8 MB (11803287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c1f5b84a997b8ccbd357282c4f90e796b44088b43550f41c92022d8d9ac26`  
		Last Modified: Fri, 14 Jul 2017 23:12:38 GMT  
		Size: 6.4 KB (6404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c92463db1ac94e9ac1a31ddc9d811ee90e5567939d1978b4ea1aa3c6de4dd7`  
		Last Modified: Fri, 14 Jul 2017 23:12:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a91e91c44cb5174e801fefd74d364b74c5f4d1dd7da4c1b3e35f45b159de8e7`  
		Last Modified: Fri, 14 Jul 2017 23:12:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6bdf630252c7a497393ddf76603d5bfe436ce3401d35be7becff91cfa4768d`  
		Last Modified: Fri, 14 Jul 2017 23:12:38 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158e9cea6276dc9c4fdab7a23f043677b073a63c6e35d0c95c0207c0a123ecca`  
		Last Modified: Fri, 14 Jul 2017 23:12:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
