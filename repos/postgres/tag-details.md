<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10-beta1`](#postgres10-beta1)
-	[`postgres:10`](#postgres10)
-	[`postgres:10-beta1-alpine`](#postgres10-beta1-alpine)
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

## `postgres:10-beta1`

```console
$ docker pull postgres@sha256:92f468785cfbff83fed64d698204746f8dc71e8678fb247f0a55a4f74df6150d
```

-	Platforms:
	-	linux; amd64

### `postgres:10-beta1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117384741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eba9dec65a767c02fcba29a5dc0434fee20fb1ae21427b969b1852a241d1ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:28:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:28:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:28:44 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:28:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:29:04 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:29:05 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:29:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:29:10 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:29:11 GMT
ENV PG_MAJOR=10
# Tue, 27 Jun 2017 17:29:12 GMT
ENV PG_VERSION=10~beta1-1.pgdg90+1
# Tue, 27 Jun 2017 17:29:14 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:29:34 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:29:36 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:29:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:29:39 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:29:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:29:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:29:42 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:29:43 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:29:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:29:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:29:46 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:29:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1c66225faef1d3551f179bd23e48ee3389cf56bc560fc3fbe9ae670766d831`  
		Last Modified: Tue, 27 Jun 2017 17:42:46 GMT  
		Size: 7.0 MB (7029498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbc78e5214f784af25ed88879c709a1074f1f445c293a012735197ea8697d52`  
		Last Modified: Tue, 27 Jun 2017 17:42:44 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70a5244127526a48865363727e72b1cbf0ac29696eb09e25c8c65bd13c5d785`  
		Last Modified: Tue, 27 Jun 2017 17:42:44 GMT  
		Size: 1.3 MB (1276405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a192b6004c2e769747bc8c7e2a3ba7d362c3a9153a8a0962b06a02d958e4faef`  
		Last Modified: Tue, 27 Jun 2017 17:42:45 GMT  
		Size: 6.6 MB (6578940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf364e8a1d670321a8eda1afb1bc7204f9fbf8e3d1f972eea5a93a635ab7a785`  
		Last Modified: Tue, 27 Jun 2017 17:42:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9474497d994aec55e796f5b6554f8eea53bf2db439d1eecd74d0e0fa3d936cb3`  
		Last Modified: Tue, 27 Jun 2017 17:42:42 GMT  
		Size: 4.5 KB (4470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4241945c6ba2e59bc1b6d40951a0039ef9b73edd61c3f20f45f414e9f7230d35`  
		Last Modified: Tue, 27 Jun 2017 17:42:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f099cacd8c26794e5a3fa6dd41c0443ee7d62f57e7a5d2eccb831abab0b465b9`  
		Last Modified: Tue, 27 Jun 2017 17:42:58 GMT  
		Size: 57.3 MB (57344057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b311719e5f4daa741234398589af67945f09ea9b00d3cbea34a1cf38812aecdd`  
		Last Modified: Tue, 27 Jun 2017 17:42:40 GMT  
		Size: 7.3 KB (7282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d8a76e0e2309636ccdd3ea3233999ed3bdeaee79272085cd3bb8f9323899ab`  
		Last Modified: Tue, 27 Jun 2017 17:42:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401935424988f789c31714db66276d944e10eb095e31b8660d29454383959dce`  
		Last Modified: Tue, 27 Jun 2017 17:42:40 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55087942bce8505217c6af5c947c5aa76df5076761c679c358cb762982a8949`  
		Last Modified: Tue, 27 Jun 2017 17:42:40 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e1a863013e554371b1822b8487c448e9d8973cf9f383e06c903a698f10ad28`  
		Last Modified: Tue, 27 Jun 2017 17:42:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10`

```console
$ docker pull postgres@sha256:92f468785cfbff83fed64d698204746f8dc71e8678fb247f0a55a4f74df6150d
```

-	Platforms:
	-	linux; amd64

### `postgres:10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117384741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eba9dec65a767c02fcba29a5dc0434fee20fb1ae21427b969b1852a241d1ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:28:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:28:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:28:44 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:28:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:29:04 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:29:05 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:29:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:29:10 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:29:11 GMT
ENV PG_MAJOR=10
# Tue, 27 Jun 2017 17:29:12 GMT
ENV PG_VERSION=10~beta1-1.pgdg90+1
# Tue, 27 Jun 2017 17:29:14 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:29:34 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:29:36 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:29:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:29:39 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:29:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:29:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:29:42 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:29:43 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:29:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:29:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:29:46 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:29:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1c66225faef1d3551f179bd23e48ee3389cf56bc560fc3fbe9ae670766d831`  
		Last Modified: Tue, 27 Jun 2017 17:42:46 GMT  
		Size: 7.0 MB (7029498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbc78e5214f784af25ed88879c709a1074f1f445c293a012735197ea8697d52`  
		Last Modified: Tue, 27 Jun 2017 17:42:44 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70a5244127526a48865363727e72b1cbf0ac29696eb09e25c8c65bd13c5d785`  
		Last Modified: Tue, 27 Jun 2017 17:42:44 GMT  
		Size: 1.3 MB (1276405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a192b6004c2e769747bc8c7e2a3ba7d362c3a9153a8a0962b06a02d958e4faef`  
		Last Modified: Tue, 27 Jun 2017 17:42:45 GMT  
		Size: 6.6 MB (6578940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf364e8a1d670321a8eda1afb1bc7204f9fbf8e3d1f972eea5a93a635ab7a785`  
		Last Modified: Tue, 27 Jun 2017 17:42:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9474497d994aec55e796f5b6554f8eea53bf2db439d1eecd74d0e0fa3d936cb3`  
		Last Modified: Tue, 27 Jun 2017 17:42:42 GMT  
		Size: 4.5 KB (4470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4241945c6ba2e59bc1b6d40951a0039ef9b73edd61c3f20f45f414e9f7230d35`  
		Last Modified: Tue, 27 Jun 2017 17:42:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f099cacd8c26794e5a3fa6dd41c0443ee7d62f57e7a5d2eccb831abab0b465b9`  
		Last Modified: Tue, 27 Jun 2017 17:42:58 GMT  
		Size: 57.3 MB (57344057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b311719e5f4daa741234398589af67945f09ea9b00d3cbea34a1cf38812aecdd`  
		Last Modified: Tue, 27 Jun 2017 17:42:40 GMT  
		Size: 7.3 KB (7282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d8a76e0e2309636ccdd3ea3233999ed3bdeaee79272085cd3bb8f9323899ab`  
		Last Modified: Tue, 27 Jun 2017 17:42:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401935424988f789c31714db66276d944e10eb095e31b8660d29454383959dce`  
		Last Modified: Tue, 27 Jun 2017 17:42:40 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55087942bce8505217c6af5c947c5aa76df5076761c679c358cb762982a8949`  
		Last Modified: Tue, 27 Jun 2017 17:42:40 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e1a863013e554371b1822b8487c448e9d8973cf9f383e06c903a698f10ad28`  
		Last Modified: Tue, 27 Jun 2017 17:42:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-beta1-alpine`

```console
$ docker pull postgres@sha256:bdb73afe3bfb5d750ee9cd4520f411625a8eadc230193e5f0908a1cc7691d380
```

-	Platforms:
	-	linux; amd64

### `postgres:10-beta1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14716196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6115ca66325d0a1b355892ae7d9d53604dc7e80fc591f9aff99455bd0944a1eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 17:30:14 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 27 Jun 2017 17:30:15 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:30:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:30:17 GMT
ENV PG_MAJOR=10
# Tue, 27 Jun 2017 17:30:18 GMT
ENV PG_VERSION=10beta1
# Tue, 27 Jun 2017 17:30:19 GMT
ENV PG_SHA256=7eee02e6f6646c7d4d6e78893a4ff638cfa5f1025b706712da8c6ef2257b5e29
# Tue, 27 Jun 2017 17:32:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 27 Jun 2017 17:32:41 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:32:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:32:43 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:32:44 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:32:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:32:46 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:32:47 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:32:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:32:50 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:32:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c346bcd46b0cfbc6959e0415f214f3ad3a6632d04463bc942430687c488ccf2`  
		Last Modified: Tue, 27 Jun 2017 17:44:00 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a96732ec5d808740ae5ccf65a66fb700fa724e4f095fd4fdc1d1b4859f6c88`  
		Last Modified: Tue, 27 Jun 2017 17:44:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fcd636c64680d3f7f858cc7f9b21bc1854694925c75b63f3359fb7d73a76fb`  
		Last Modified: Tue, 27 Jun 2017 17:44:04 GMT  
		Size: 12.7 MB (12716308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de03ff4616c5707b6d07c9f4637561fd009a1e05829f65ff90246cf338aaaa23`  
		Last Modified: Tue, 27 Jun 2017 17:43:58 GMT  
		Size: 7.3 KB (7253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157882a011a7683e230da5cb02939102a6f8bd3bfb61b63789d763580f03f867`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9217e0db22cd59df86a8adec4733aae953eaaab9cffce9e1ca5f71158bf61d0f`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbd95b3f63b4a06a410bedce7dc90e0c2be12667c558f833941408c999cae8f`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d748053ab47c847f9eca630748ebbda9505eb5eab81d6b98c566c2e79930c28f`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:bdb73afe3bfb5d750ee9cd4520f411625a8eadc230193e5f0908a1cc7691d380
```

-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14716196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6115ca66325d0a1b355892ae7d9d53604dc7e80fc591f9aff99455bd0944a1eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 17:30:14 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 27 Jun 2017 17:30:15 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:30:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:30:17 GMT
ENV PG_MAJOR=10
# Tue, 27 Jun 2017 17:30:18 GMT
ENV PG_VERSION=10beta1
# Tue, 27 Jun 2017 17:30:19 GMT
ENV PG_SHA256=7eee02e6f6646c7d4d6e78893a4ff638cfa5f1025b706712da8c6ef2257b5e29
# Tue, 27 Jun 2017 17:32:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 27 Jun 2017 17:32:41 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:32:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:32:43 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:32:44 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:32:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:32:46 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:32:47 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:32:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:32:50 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:32:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c346bcd46b0cfbc6959e0415f214f3ad3a6632d04463bc942430687c488ccf2`  
		Last Modified: Tue, 27 Jun 2017 17:44:00 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a96732ec5d808740ae5ccf65a66fb700fa724e4f095fd4fdc1d1b4859f6c88`  
		Last Modified: Tue, 27 Jun 2017 17:44:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fcd636c64680d3f7f858cc7f9b21bc1854694925c75b63f3359fb7d73a76fb`  
		Last Modified: Tue, 27 Jun 2017 17:44:04 GMT  
		Size: 12.7 MB (12716308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de03ff4616c5707b6d07c9f4637561fd009a1e05829f65ff90246cf338aaaa23`  
		Last Modified: Tue, 27 Jun 2017 17:43:58 GMT  
		Size: 7.3 KB (7253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157882a011a7683e230da5cb02939102a6f8bd3bfb61b63789d763580f03f867`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9217e0db22cd59df86a8adec4733aae953eaaab9cffce9e1ca5f71158bf61d0f`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbd95b3f63b4a06a410bedce7dc90e0c2be12667c558f833941408c999cae8f`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d748053ab47c847f9eca630748ebbda9505eb5eab81d6b98c566c2e79930c28f`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.3`

```console
$ docker pull postgres@sha256:e92fe21f695d27be7050284229a1c8c63ac10d88cba58d779c243566e125aa34
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104340319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d91fbcfa35ae3c8ef05ab5056a154b7f7553b2be8698072d066c50c0d08aad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:34:00 GMT
ENV PG_MAJOR=9.6
# Tue, 27 Jun 2017 17:34:00 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Tue, 27 Jun 2017 17:34:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:34:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:34:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:34:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:34:48 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:34:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:34:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:34:51 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:34:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:34:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:34:56 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:34:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e2459f9d5667675c7eb392f47b94e8a11e8a7054669eaf6e19ef0a62c1c492`  
		Last Modified: Tue, 27 Jun 2017 17:45:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5037dff1690ca6b2befedf68332f7ef1e9a9ef37e027a59fb21f5b37718e7e1`  
		Last Modified: Tue, 27 Jun 2017 17:45:16 GMT  
		Size: 43.3 MB (43290810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b61d2ebe8d5002650a268883473d5a89fff107da63fe8e00aaa1befdf61324`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd32c7a376f936924ab53fadade14f1a005e00468e2438280eaf4854eacdc6a`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e120e164d93baa748305f0f75d54831a57bcf72604389b5caa510ece9fb8e4c`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b494ed061766a2521a32eef39c6c67dec434d95ef06e4023ddac3266f938c9`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cfe40f51e3699e23325739c979193f2fdd9782e707f3d34daf45838fdfb5bb`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:e92fe21f695d27be7050284229a1c8c63ac10d88cba58d779c243566e125aa34
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104340319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d91fbcfa35ae3c8ef05ab5056a154b7f7553b2be8698072d066c50c0d08aad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:34:00 GMT
ENV PG_MAJOR=9.6
# Tue, 27 Jun 2017 17:34:00 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Tue, 27 Jun 2017 17:34:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:34:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:34:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:34:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:34:48 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:34:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:34:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:34:51 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:34:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:34:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:34:56 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:34:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e2459f9d5667675c7eb392f47b94e8a11e8a7054669eaf6e19ef0a62c1c492`  
		Last Modified: Tue, 27 Jun 2017 17:45:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5037dff1690ca6b2befedf68332f7ef1e9a9ef37e027a59fb21f5b37718e7e1`  
		Last Modified: Tue, 27 Jun 2017 17:45:16 GMT  
		Size: 43.3 MB (43290810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b61d2ebe8d5002650a268883473d5a89fff107da63fe8e00aaa1befdf61324`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd32c7a376f936924ab53fadade14f1a005e00468e2438280eaf4854eacdc6a`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e120e164d93baa748305f0f75d54831a57bcf72604389b5caa510ece9fb8e4c`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b494ed061766a2521a32eef39c6c67dec434d95ef06e4023ddac3266f938c9`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cfe40f51e3699e23325739c979193f2fdd9782e707f3d34daf45838fdfb5bb`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:e92fe21f695d27be7050284229a1c8c63ac10d88cba58d779c243566e125aa34
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104340319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d91fbcfa35ae3c8ef05ab5056a154b7f7553b2be8698072d066c50c0d08aad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:34:00 GMT
ENV PG_MAJOR=9.6
# Tue, 27 Jun 2017 17:34:00 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Tue, 27 Jun 2017 17:34:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:34:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:34:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:34:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:34:48 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:34:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:34:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:34:51 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:34:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:34:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:34:56 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:34:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e2459f9d5667675c7eb392f47b94e8a11e8a7054669eaf6e19ef0a62c1c492`  
		Last Modified: Tue, 27 Jun 2017 17:45:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5037dff1690ca6b2befedf68332f7ef1e9a9ef37e027a59fb21f5b37718e7e1`  
		Last Modified: Tue, 27 Jun 2017 17:45:16 GMT  
		Size: 43.3 MB (43290810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b61d2ebe8d5002650a268883473d5a89fff107da63fe8e00aaa1befdf61324`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd32c7a376f936924ab53fadade14f1a005e00468e2438280eaf4854eacdc6a`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e120e164d93baa748305f0f75d54831a57bcf72604389b5caa510ece9fb8e4c`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b494ed061766a2521a32eef39c6c67dec434d95ef06e4023ddac3266f938c9`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cfe40f51e3699e23325739c979193f2fdd9782e707f3d34daf45838fdfb5bb`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:e92fe21f695d27be7050284229a1c8c63ac10d88cba58d779c243566e125aa34
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104340319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d91fbcfa35ae3c8ef05ab5056a154b7f7553b2be8698072d066c50c0d08aad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:34:00 GMT
ENV PG_MAJOR=9.6
# Tue, 27 Jun 2017 17:34:00 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Tue, 27 Jun 2017 17:34:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:34:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:34:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:34:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:34:48 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:34:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:34:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:34:51 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:34:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:34:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:34:56 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:34:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e2459f9d5667675c7eb392f47b94e8a11e8a7054669eaf6e19ef0a62c1c492`  
		Last Modified: Tue, 27 Jun 2017 17:45:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5037dff1690ca6b2befedf68332f7ef1e9a9ef37e027a59fb21f5b37718e7e1`  
		Last Modified: Tue, 27 Jun 2017 17:45:16 GMT  
		Size: 43.3 MB (43290810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b61d2ebe8d5002650a268883473d5a89fff107da63fe8e00aaa1befdf61324`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd32c7a376f936924ab53fadade14f1a005e00468e2438280eaf4854eacdc6a`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e120e164d93baa748305f0f75d54831a57bcf72604389b5caa510ece9fb8e4c`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b494ed061766a2521a32eef39c6c67dec434d95ef06e4023ddac3266f938c9`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cfe40f51e3699e23325739c979193f2fdd9782e707f3d34daf45838fdfb5bb`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.3-alpine`

```console
$ docker pull postgres@sha256:5eda6ed2f466aff615c625fc3956771076ed8e52bf10b9d773b4f14e6591e0fd
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14666174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2580abe343dd1ffa201c3b7595144286dfd58c94e2f4d807b4d5c9944560818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:06:29 GMT
ENV PG_MAJOR=9.6
# Tue, 20 Jun 2017 00:06:30 GMT
ENV PG_VERSION=9.6.3
# Tue, 20 Jun 2017 00:06:31 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Tue, 20 Jun 2017 00:09:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:09:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:09:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:09:23 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:09:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:09:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:09:26 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:09:27 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:09:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:09:31 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:09:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8cba0468487573b53e1dfcbf116681c4f037624e8a09c974ce6219f0283806`  
		Last Modified: Sat, 24 Jun 2017 19:57:37 GMT  
		Size: 12.7 MB (12686332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6942ee1bd66e1e2638cc66a32faa0e9b91916abae598450f3ec2d3ff09d3198a`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d42fd7ff3e5d4873a23d140f67e3cf512f3d0cc036577f702617b0883d04495`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a698492a10fba5eec2cacf86f50b3c7cc8e12fd943f0dc32ac8fd5a9332613d`  
		Last Modified: Sat, 24 Jun 2017 19:57:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4902b557c84ef5b92a39e4a7648299d370ec517c33183727da3750a71f043437`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bb11d39824184e3b68da10b851b1fc5800a0e56bc2aa50559d0c27efe9f3e6`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:5eda6ed2f466aff615c625fc3956771076ed8e52bf10b9d773b4f14e6591e0fd
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14666174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2580abe343dd1ffa201c3b7595144286dfd58c94e2f4d807b4d5c9944560818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:06:29 GMT
ENV PG_MAJOR=9.6
# Tue, 20 Jun 2017 00:06:30 GMT
ENV PG_VERSION=9.6.3
# Tue, 20 Jun 2017 00:06:31 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Tue, 20 Jun 2017 00:09:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:09:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:09:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:09:23 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:09:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:09:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:09:26 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:09:27 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:09:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:09:31 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:09:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8cba0468487573b53e1dfcbf116681c4f037624e8a09c974ce6219f0283806`  
		Last Modified: Sat, 24 Jun 2017 19:57:37 GMT  
		Size: 12.7 MB (12686332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6942ee1bd66e1e2638cc66a32faa0e9b91916abae598450f3ec2d3ff09d3198a`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d42fd7ff3e5d4873a23d140f67e3cf512f3d0cc036577f702617b0883d04495`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a698492a10fba5eec2cacf86f50b3c7cc8e12fd943f0dc32ac8fd5a9332613d`  
		Last Modified: Sat, 24 Jun 2017 19:57:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4902b557c84ef5b92a39e4a7648299d370ec517c33183727da3750a71f043437`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bb11d39824184e3b68da10b851b1fc5800a0e56bc2aa50559d0c27efe9f3e6`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:5eda6ed2f466aff615c625fc3956771076ed8e52bf10b9d773b4f14e6591e0fd
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14666174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2580abe343dd1ffa201c3b7595144286dfd58c94e2f4d807b4d5c9944560818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:06:29 GMT
ENV PG_MAJOR=9.6
# Tue, 20 Jun 2017 00:06:30 GMT
ENV PG_VERSION=9.6.3
# Tue, 20 Jun 2017 00:06:31 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Tue, 20 Jun 2017 00:09:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:09:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:09:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:09:23 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:09:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:09:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:09:26 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:09:27 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:09:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:09:31 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:09:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8cba0468487573b53e1dfcbf116681c4f037624e8a09c974ce6219f0283806`  
		Last Modified: Sat, 24 Jun 2017 19:57:37 GMT  
		Size: 12.7 MB (12686332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6942ee1bd66e1e2638cc66a32faa0e9b91916abae598450f3ec2d3ff09d3198a`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d42fd7ff3e5d4873a23d140f67e3cf512f3d0cc036577f702617b0883d04495`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a698492a10fba5eec2cacf86f50b3c7cc8e12fd943f0dc32ac8fd5a9332613d`  
		Last Modified: Sat, 24 Jun 2017 19:57:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4902b557c84ef5b92a39e4a7648299d370ec517c33183727da3750a71f043437`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bb11d39824184e3b68da10b851b1fc5800a0e56bc2aa50559d0c27efe9f3e6`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:5eda6ed2f466aff615c625fc3956771076ed8e52bf10b9d773b4f14e6591e0fd
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14666174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2580abe343dd1ffa201c3b7595144286dfd58c94e2f4d807b4d5c9944560818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:06:29 GMT
ENV PG_MAJOR=9.6
# Tue, 20 Jun 2017 00:06:30 GMT
ENV PG_VERSION=9.6.3
# Tue, 20 Jun 2017 00:06:31 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Tue, 20 Jun 2017 00:09:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:09:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:09:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:09:23 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:09:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:09:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:09:26 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:09:27 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:09:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:09:31 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:09:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8cba0468487573b53e1dfcbf116681c4f037624e8a09c974ce6219f0283806`  
		Last Modified: Sat, 24 Jun 2017 19:57:37 GMT  
		Size: 12.7 MB (12686332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6942ee1bd66e1e2638cc66a32faa0e9b91916abae598450f3ec2d3ff09d3198a`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d42fd7ff3e5d4873a23d140f67e3cf512f3d0cc036577f702617b0883d04495`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a698492a10fba5eec2cacf86f50b3c7cc8e12fd943f0dc32ac8fd5a9332613d`  
		Last Modified: Sat, 24 Jun 2017 19:57:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4902b557c84ef5b92a39e4a7648299d370ec517c33183727da3750a71f043437`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bb11d39824184e3b68da10b851b1fc5800a0e56bc2aa50559d0c27efe9f3e6`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7`

```console
$ docker pull postgres@sha256:76e36841e3ea83de29bbe2baa98501d91a567991164133066a8de140cf0b3022
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103839859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c00267b34eeadff76a265455928ca685cbe10e75e6451e25fff3035abe8199`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:35:48 GMT
ENV PG_MAJOR=9.5
# Tue, 27 Jun 2017 17:35:49 GMT
ENV PG_VERSION=9.5.7-1.pgdg80+1
# Tue, 27 Jun 2017 17:35:50 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:36:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:36:24 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:36:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:36:26 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:36:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:36:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:36:30 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:36:31 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:36:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:36:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:36:34 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:36:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8536e08c783ba5054e7d120943c81dafcd06ef638b13f1745812087a529fed4e`  
		Last Modified: Tue, 27 Jun 2017 17:49:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906312eddb3c2e8eea3c4e1d850885680e9099fa9a4920dce6fec6077057a23f`  
		Last Modified: Tue, 27 Jun 2017 17:49:09 GMT  
		Size: 42.8 MB (42790628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8cbaabf2c363224985391b61d8dbff2a77866d7fe73fa21eb011300f2bad1be`  
		Last Modified: Tue, 27 Jun 2017 17:48:58 GMT  
		Size: 6.8 KB (6817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd10b7ba53bd6b4936962276ea987a3dfe34328a6985a3c12094ce3e4eb2d270`  
		Last Modified: Tue, 27 Jun 2017 17:48:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41ef9ac5352fd2def979e4da88e8486b2542a2bf858a9e2243b98117a649d33`  
		Last Modified: Tue, 27 Jun 2017 17:48:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c75d994e95a7c306995fd2237d5760cb7d9ffb818a7b7a66863fb848b0c816`  
		Last Modified: Tue, 27 Jun 2017 17:48:57 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852380bca80e2447ff6cb4b61d1ecfb929e2ab1430d4406b785a3d9728f8d240`  
		Last Modified: Tue, 27 Jun 2017 17:48:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:76e36841e3ea83de29bbe2baa98501d91a567991164133066a8de140cf0b3022
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103839859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c00267b34eeadff76a265455928ca685cbe10e75e6451e25fff3035abe8199`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:35:48 GMT
ENV PG_MAJOR=9.5
# Tue, 27 Jun 2017 17:35:49 GMT
ENV PG_VERSION=9.5.7-1.pgdg80+1
# Tue, 27 Jun 2017 17:35:50 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:36:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:36:24 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:36:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:36:26 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:36:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:36:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:36:30 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:36:31 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:36:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:36:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:36:34 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:36:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8536e08c783ba5054e7d120943c81dafcd06ef638b13f1745812087a529fed4e`  
		Last Modified: Tue, 27 Jun 2017 17:49:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906312eddb3c2e8eea3c4e1d850885680e9099fa9a4920dce6fec6077057a23f`  
		Last Modified: Tue, 27 Jun 2017 17:49:09 GMT  
		Size: 42.8 MB (42790628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8cbaabf2c363224985391b61d8dbff2a77866d7fe73fa21eb011300f2bad1be`  
		Last Modified: Tue, 27 Jun 2017 17:48:58 GMT  
		Size: 6.8 KB (6817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd10b7ba53bd6b4936962276ea987a3dfe34328a6985a3c12094ce3e4eb2d270`  
		Last Modified: Tue, 27 Jun 2017 17:48:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41ef9ac5352fd2def979e4da88e8486b2542a2bf858a9e2243b98117a649d33`  
		Last Modified: Tue, 27 Jun 2017 17:48:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c75d994e95a7c306995fd2237d5760cb7d9ffb818a7b7a66863fb848b0c816`  
		Last Modified: Tue, 27 Jun 2017 17:48:57 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852380bca80e2447ff6cb4b61d1ecfb929e2ab1430d4406b785a3d9728f8d240`  
		Last Modified: Tue, 27 Jun 2017 17:48:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7-alpine`

```console
$ docker pull postgres@sha256:31e45da2eee2cad30b5807a791f1fa0d4d2cddb9c9fcf87a7a26a99792ddc2b2
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14376608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef98d3afcbe310162c32e6ec06dd2293c7005627b9321f64b61d3f759a69af3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:10:08 GMT
ENV PG_MAJOR=9.5
# Tue, 20 Jun 2017 00:10:09 GMT
ENV PG_VERSION=9.5.7
# Tue, 20 Jun 2017 00:10:10 GMT
ENV PG_SHA256=8b1e936f82109325decc0f5575e846b93fb4fd384e8c4bde83ff5e7f87fc6cad
# Tue, 20 Jun 2017 00:13:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:13:08 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:13:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:13:11 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:13:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:13:14 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:13:15 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:13:17 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:13:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:13:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:13:21 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:13:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083885b7a5162672e5f320f3e8c47d60bc6f6f896fdba4f54ae3617bab57ee17`  
		Last Modified: Sat, 24 Jun 2017 20:00:43 GMT  
		Size: 12.4 MB (12397035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579fcda332a1a0e4c5b2b38cc081ec017b9d9d0fd5d8bddbbea3da5998214b92`  
		Last Modified: Sat, 24 Jun 2017 20:00:39 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193dc2b2714b083a4c2b5f1d0c9fb9820d874a025b917ef5c818071edf426c83`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be48631a198c22f828a75710ea5688532787604709e925cfa2f9c9ce9668b7e`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42594adef52f5b201eb1409ee01170e43d37280ecbfa371317c78a8ce119cec9`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae42846bb19f33935dde5e95ec5537c32274e375417bcceb19df65fcea1ab778`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:31e45da2eee2cad30b5807a791f1fa0d4d2cddb9c9fcf87a7a26a99792ddc2b2
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14376608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef98d3afcbe310162c32e6ec06dd2293c7005627b9321f64b61d3f759a69af3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:10:08 GMT
ENV PG_MAJOR=9.5
# Tue, 20 Jun 2017 00:10:09 GMT
ENV PG_VERSION=9.5.7
# Tue, 20 Jun 2017 00:10:10 GMT
ENV PG_SHA256=8b1e936f82109325decc0f5575e846b93fb4fd384e8c4bde83ff5e7f87fc6cad
# Tue, 20 Jun 2017 00:13:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:13:08 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:13:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:13:11 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:13:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:13:14 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:13:15 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:13:17 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:13:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:13:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:13:21 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:13:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083885b7a5162672e5f320f3e8c47d60bc6f6f896fdba4f54ae3617bab57ee17`  
		Last Modified: Sat, 24 Jun 2017 20:00:43 GMT  
		Size: 12.4 MB (12397035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579fcda332a1a0e4c5b2b38cc081ec017b9d9d0fd5d8bddbbea3da5998214b92`  
		Last Modified: Sat, 24 Jun 2017 20:00:39 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193dc2b2714b083a4c2b5f1d0c9fb9820d874a025b917ef5c818071edf426c83`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be48631a198c22f828a75710ea5688532787604709e925cfa2f9c9ce9668b7e`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42594adef52f5b201eb1409ee01170e43d37280ecbfa371317c78a8ce119cec9`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae42846bb19f33935dde5e95ec5537c32274e375417bcceb19df65fcea1ab778`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12`

```console
$ docker pull postgres@sha256:4f831cae0dff7c1cbb8b35e3e31f7d0da622bee4af1735993c66bfefeec1e618
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103508063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465b462d0607f876fbccd633b4866d4c517f5c259a0d9c3b74ff8ce59f4dd3fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:37:29 GMT
ENV PG_MAJOR=9.4
# Tue, 27 Jun 2017 17:37:29 GMT
ENV PG_VERSION=9.4.12-1.pgdg80+1
# Tue, 27 Jun 2017 17:37:31 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:38:05 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:38:07 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:38:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:38:09 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:38:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:38:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:38:12 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:38:13 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:38:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:38:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:38:16 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:38:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41159a79d441b0f2906ac88bae94a788ad62e6336b41331e5096a1ca1c83c416`  
		Last Modified: Tue, 27 Jun 2017 17:51:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ee926b6e9fb2f5109094b3c1808602de557b22a35d560a5f3e13b18215132c`  
		Last Modified: Tue, 27 Jun 2017 17:51:14 GMT  
		Size: 42.5 MB (42458972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8071cff2afebcb5e7c3f576491f1f1721d2ec95510bda2a4d357886790b01345`  
		Last Modified: Tue, 27 Jun 2017 17:51:03 GMT  
		Size: 6.7 KB (6679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0133ad34575aaf0076c3a07121b487fa350ca0a120a8e45d211d6bdc811fc41c`  
		Last Modified: Tue, 27 Jun 2017 17:51:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c653a77483989a38de005391a30f57f290a1c35036f8d5506b61bfdd29bbb6fa`  
		Last Modified: Tue, 27 Jun 2017 17:51:03 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e17b8025631b7979aa9925582d9a07860dd55a97328b028e3e4fffc52e35c`  
		Last Modified: Tue, 27 Jun 2017 17:51:03 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e8f8bc7631bd283741560a48dea4abe236e762e743473ff766a36f4c1c0cf`  
		Last Modified: Tue, 27 Jun 2017 17:51:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:4f831cae0dff7c1cbb8b35e3e31f7d0da622bee4af1735993c66bfefeec1e618
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103508063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465b462d0607f876fbccd633b4866d4c517f5c259a0d9c3b74ff8ce59f4dd3fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:37:29 GMT
ENV PG_MAJOR=9.4
# Tue, 27 Jun 2017 17:37:29 GMT
ENV PG_VERSION=9.4.12-1.pgdg80+1
# Tue, 27 Jun 2017 17:37:31 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:38:05 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:38:07 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:38:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:38:09 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:38:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:38:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:38:12 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:38:13 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:38:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:38:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:38:16 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:38:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41159a79d441b0f2906ac88bae94a788ad62e6336b41331e5096a1ca1c83c416`  
		Last Modified: Tue, 27 Jun 2017 17:51:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ee926b6e9fb2f5109094b3c1808602de557b22a35d560a5f3e13b18215132c`  
		Last Modified: Tue, 27 Jun 2017 17:51:14 GMT  
		Size: 42.5 MB (42458972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8071cff2afebcb5e7c3f576491f1f1721d2ec95510bda2a4d357886790b01345`  
		Last Modified: Tue, 27 Jun 2017 17:51:03 GMT  
		Size: 6.7 KB (6679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0133ad34575aaf0076c3a07121b487fa350ca0a120a8e45d211d6bdc811fc41c`  
		Last Modified: Tue, 27 Jun 2017 17:51:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c653a77483989a38de005391a30f57f290a1c35036f8d5506b61bfdd29bbb6fa`  
		Last Modified: Tue, 27 Jun 2017 17:51:03 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e17b8025631b7979aa9925582d9a07860dd55a97328b028e3e4fffc52e35c`  
		Last Modified: Tue, 27 Jun 2017 17:51:03 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e8f8bc7631bd283741560a48dea4abe236e762e743473ff766a36f4c1c0cf`  
		Last Modified: Tue, 27 Jun 2017 17:51:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12-alpine`

```console
$ docker pull postgres@sha256:b852abb3cbff6fb925dc65e736389f0a1facb8ff6a714c15f653cb5519c10a1c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14242854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2f7f57724edff1c584c1daca268d083b4a0dcb805b8cf44cd14913209a706e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:13:53 GMT
ENV PG_MAJOR=9.4
# Tue, 20 Jun 2017 00:13:54 GMT
ENV PG_VERSION=9.4.12
# Tue, 20 Jun 2017 00:13:55 GMT
ENV PG_SHA256=fca055481875d1c49e31c28443f56472a1474b3fbe25b7ae64440c6118f82e64
# Tue, 20 Jun 2017 00:16:51 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:16:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:16:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:16:56 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:16:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:16:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:17:00 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:17:02 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:17:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:17:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:17:06 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:17:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2effae0f37f6c7cd01b626621820f089f6c2d2b94cc7d7d6c3856571c649cc6c`  
		Last Modified: Sat, 24 Jun 2017 20:02:57 GMT  
		Size: 12.3 MB (12263429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baf4c152b982ac487e3cd426eba46773d30ebb79ef06700cc2e3fedf1b84d60`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 6.6 KB (6646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6363f56b4ba089e549189528ed2f8a05e7877fcc869fb2421360c435694b9f`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da255accf68f7b08a09ed35b02b112828bc26543d904978da14a60d171647c91`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f95bc80cd666a7fbb63c3d1c5638bb7f9d698089dcff97e66120d66d5ecd1b0`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eebc20a3d2fdea4e217000029f7cca3d931a4df9cb39ab55effbffd8b10b240`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:b852abb3cbff6fb925dc65e736389f0a1facb8ff6a714c15f653cb5519c10a1c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14242854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2f7f57724edff1c584c1daca268d083b4a0dcb805b8cf44cd14913209a706e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:13:53 GMT
ENV PG_MAJOR=9.4
# Tue, 20 Jun 2017 00:13:54 GMT
ENV PG_VERSION=9.4.12
# Tue, 20 Jun 2017 00:13:55 GMT
ENV PG_SHA256=fca055481875d1c49e31c28443f56472a1474b3fbe25b7ae64440c6118f82e64
# Tue, 20 Jun 2017 00:16:51 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:16:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:16:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:16:56 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:16:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:16:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:17:00 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:17:02 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:17:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:17:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:17:06 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:17:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2effae0f37f6c7cd01b626621820f089f6c2d2b94cc7d7d6c3856571c649cc6c`  
		Last Modified: Sat, 24 Jun 2017 20:02:57 GMT  
		Size: 12.3 MB (12263429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baf4c152b982ac487e3cd426eba46773d30ebb79ef06700cc2e3fedf1b84d60`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 6.6 KB (6646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6363f56b4ba089e549189528ed2f8a05e7877fcc869fb2421360c435694b9f`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da255accf68f7b08a09ed35b02b112828bc26543d904978da14a60d171647c91`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f95bc80cd666a7fbb63c3d1c5638bb7f9d698089dcff97e66120d66d5ecd1b0`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eebc20a3d2fdea4e217000029f7cca3d931a4df9cb39ab55effbffd8b10b240`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17`

```console
$ docker pull postgres@sha256:f732b91acdccf46914d83d25c992219ed44056e1d470d817f3fe3a62f10df4d6
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103151668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a6a25d9de5f455de6d600044e2c516e6e1763bcc0619bad2274a2583b1fee0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:39:08 GMT
ENV PG_MAJOR=9.3
# Tue, 27 Jun 2017 17:39:09 GMT
ENV PG_VERSION=9.3.17-1.pgdg80+1
# Tue, 27 Jun 2017 17:39:11 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:39:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:39:45 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:39:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:39:48 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:39:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:39:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:39:51 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:39:52 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:39:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:39:55 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:39:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fef4506448648b4b517af02fde24397f543c7a611265af26a5eb91906f5895`  
		Last Modified: Tue, 27 Jun 2017 17:53:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8edab26c173aac4609b64e8fdfd965fd12a1ef1dcf2c4853ca89989611e01b`  
		Last Modified: Tue, 27 Jun 2017 17:53:21 GMT  
		Size: 42.1 MB (42102759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfa7b78a05350051f631ce97cf442057262963d118d10051f6525e71ea81359`  
		Last Modified: Tue, 27 Jun 2017 17:53:09 GMT  
		Size: 6.5 KB (6497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f99088674a2e46b2a90ea4e1b4b6fc57b00896b881d36a464a316208218d55`  
		Last Modified: Tue, 27 Jun 2017 17:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4d83be178608925c051e133ae39df3ff2356af15b9a4d2f981fe548bb9ec09`  
		Last Modified: Tue, 27 Jun 2017 17:53:09 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e522b4fe1f9f870d097957afa8442306e708e169519477c10e7f5138fd0e77f0`  
		Last Modified: Tue, 27 Jun 2017 17:53:09 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb46ca5be87172cb1cb63060f0620bd34cdaeff899462c9f7857dd74f17e1aa`  
		Last Modified: Tue, 27 Jun 2017 17:53:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:f732b91acdccf46914d83d25c992219ed44056e1d470d817f3fe3a62f10df4d6
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103151668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a6a25d9de5f455de6d600044e2c516e6e1763bcc0619bad2274a2583b1fee0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:39:08 GMT
ENV PG_MAJOR=9.3
# Tue, 27 Jun 2017 17:39:09 GMT
ENV PG_VERSION=9.3.17-1.pgdg80+1
# Tue, 27 Jun 2017 17:39:11 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:39:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:39:45 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:39:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:39:48 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:39:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:39:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:39:51 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:39:52 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:39:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:39:55 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:39:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fef4506448648b4b517af02fde24397f543c7a611265af26a5eb91906f5895`  
		Last Modified: Tue, 27 Jun 2017 17:53:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8edab26c173aac4609b64e8fdfd965fd12a1ef1dcf2c4853ca89989611e01b`  
		Last Modified: Tue, 27 Jun 2017 17:53:21 GMT  
		Size: 42.1 MB (42102759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfa7b78a05350051f631ce97cf442057262963d118d10051f6525e71ea81359`  
		Last Modified: Tue, 27 Jun 2017 17:53:09 GMT  
		Size: 6.5 KB (6497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f99088674a2e46b2a90ea4e1b4b6fc57b00896b881d36a464a316208218d55`  
		Last Modified: Tue, 27 Jun 2017 17:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4d83be178608925c051e133ae39df3ff2356af15b9a4d2f981fe548bb9ec09`  
		Last Modified: Tue, 27 Jun 2017 17:53:09 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e522b4fe1f9f870d097957afa8442306e708e169519477c10e7f5138fd0e77f0`  
		Last Modified: Tue, 27 Jun 2017 17:53:09 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb46ca5be87172cb1cb63060f0620bd34cdaeff899462c9f7857dd74f17e1aa`  
		Last Modified: Tue, 27 Jun 2017 17:53:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17-alpine`

```console
$ docker pull postgres@sha256:bd5492f64a3706ea4b8f5f47a47e3b9f5973de389e8382a761499bf7b108e1de
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13953348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deeaa5610d51c89a007ca6206ab7c3d741779b313a5d714769d892144c4675cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:17:39 GMT
ENV PG_MAJOR=9.3
# Tue, 20 Jun 2017 00:17:40 GMT
ENV PG_VERSION=9.3.17
# Tue, 20 Jun 2017 00:17:41 GMT
ENV PG_SHA256=9c03e5f280cfe9bd202fa01af773eb146abd8ab3065f7279d574c568f6948dbe
# Tue, 20 Jun 2017 00:17:43 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 20 Jun 2017 00:17:43 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 20 Jun 2017 00:20:26 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:27:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:27:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:27:23 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:27:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:27:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:27:49 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:27:50 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:28:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:28:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:28:16 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:28:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812dfcb1d7afee68f32986e736c5da9fc7e1abd312ad030cc7b0b4688feacd7d`  
		Last Modified: Sat, 24 Jun 2017 20:05:13 GMT  
		Size: 12.0 MB (11974102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399c15cab4643460304a5ca41da5cbfa1bcffb00d0c5e21af740f2e45b07b4ab`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 6.5 KB (6463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bef650cbf2c0a0843b403bbd9575c4caef808d218e0bb9693f254f4248e52b9`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385639f79041690e5621d0bcce5a96ba797f89913cb335b88b3e9151bcad88f3`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69fe5ff156293b34feeeee034f768eb2c66ec54763046e58fb836d6e1b98916f`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df56064b2b8033e537098f2ee817ce27bd1f65171e8e44c02ba1840811e0f4`  
		Last Modified: Sat, 24 Jun 2017 20:05:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:bd5492f64a3706ea4b8f5f47a47e3b9f5973de389e8382a761499bf7b108e1de
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13953348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deeaa5610d51c89a007ca6206ab7c3d741779b313a5d714769d892144c4675cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:17:39 GMT
ENV PG_MAJOR=9.3
# Tue, 20 Jun 2017 00:17:40 GMT
ENV PG_VERSION=9.3.17
# Tue, 20 Jun 2017 00:17:41 GMT
ENV PG_SHA256=9c03e5f280cfe9bd202fa01af773eb146abd8ab3065f7279d574c568f6948dbe
# Tue, 20 Jun 2017 00:17:43 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 20 Jun 2017 00:17:43 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 20 Jun 2017 00:20:26 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:27:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:27:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:27:23 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:27:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:27:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:27:49 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:27:50 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:28:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:28:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:28:16 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:28:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812dfcb1d7afee68f32986e736c5da9fc7e1abd312ad030cc7b0b4688feacd7d`  
		Last Modified: Sat, 24 Jun 2017 20:05:13 GMT  
		Size: 12.0 MB (11974102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399c15cab4643460304a5ca41da5cbfa1bcffb00d0c5e21af740f2e45b07b4ab`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 6.5 KB (6463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bef650cbf2c0a0843b403bbd9575c4caef808d218e0bb9693f254f4248e52b9`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385639f79041690e5621d0bcce5a96ba797f89913cb335b88b3e9151bcad88f3`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69fe5ff156293b34feeeee034f768eb2c66ec54763046e58fb836d6e1b98916f`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df56064b2b8033e537098f2ee817ce27bd1f65171e8e44c02ba1840811e0f4`  
		Last Modified: Sat, 24 Jun 2017 20:05:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21`

```console
$ docker pull postgres@sha256:b204b715e45efe69cd79b322978d4b0679f167cc06be8de4809ba96bc96c0a00
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102991576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb6d438bb7db80a22b59292163a8f7af816d82aec21fe3ba4c0b350f3145383`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:40:47 GMT
ENV PG_MAJOR=9.2
# Tue, 27 Jun 2017 17:40:48 GMT
ENV PG_VERSION=9.2.21-1.pgdg80+1
# Tue, 27 Jun 2017 17:40:50 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:41:28 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:41:30 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:41:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:41:33 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:41:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:41:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:41:36 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:41:37 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:41:40 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:41:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058bf6486ff659519eef17f08828e52489fc4ff363216563b2d8d6da256d1aff`  
		Last Modified: Tue, 27 Jun 2017 17:56:01 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e145416b0ba7c430017ad173c06e2e38758a72cccf046caedb3a0dcf97692b0f`  
		Last Modified: Tue, 27 Jun 2017 17:56:09 GMT  
		Size: 41.9 MB (41942727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dab92cbcb423f7c91b16ed79336b01d465de8c8730a782631cd44675ec80066`  
		Last Modified: Tue, 27 Jun 2017 17:55:58 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12578e169c42c72c707113f6943cd18bbe68b64e2e72cf687dd3310022063124`  
		Last Modified: Tue, 27 Jun 2017 17:55:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b6eb8d27b8b368935d2de35494c20ed8abd316d2570d6b07b3f074f1f2b577`  
		Last Modified: Tue, 27 Jun 2017 17:55:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caec1a782c363115e0239ab68d26d1177456776e371dba103b190ea38a43ed9e`  
		Last Modified: Tue, 27 Jun 2017 17:55:58 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1823dbbee7daf63f78294215fa489ca833a6d4f8aa53f2900898184088fd61`  
		Last Modified: Tue, 27 Jun 2017 17:55:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:b204b715e45efe69cd79b322978d4b0679f167cc06be8de4809ba96bc96c0a00
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102991576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb6d438bb7db80a22b59292163a8f7af816d82aec21fe3ba4c0b350f3145383`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:40:47 GMT
ENV PG_MAJOR=9.2
# Tue, 27 Jun 2017 17:40:48 GMT
ENV PG_VERSION=9.2.21-1.pgdg80+1
# Tue, 27 Jun 2017 17:40:50 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:41:28 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:41:30 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:41:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:41:33 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:41:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:41:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:41:36 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:41:37 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:41:40 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:41:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058bf6486ff659519eef17f08828e52489fc4ff363216563b2d8d6da256d1aff`  
		Last Modified: Tue, 27 Jun 2017 17:56:01 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e145416b0ba7c430017ad173c06e2e38758a72cccf046caedb3a0dcf97692b0f`  
		Last Modified: Tue, 27 Jun 2017 17:56:09 GMT  
		Size: 41.9 MB (41942727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dab92cbcb423f7c91b16ed79336b01d465de8c8730a782631cd44675ec80066`  
		Last Modified: Tue, 27 Jun 2017 17:55:58 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12578e169c42c72c707113f6943cd18bbe68b64e2e72cf687dd3310022063124`  
		Last Modified: Tue, 27 Jun 2017 17:55:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b6eb8d27b8b368935d2de35494c20ed8abd316d2570d6b07b3f074f1f2b577`  
		Last Modified: Tue, 27 Jun 2017 17:55:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caec1a782c363115e0239ab68d26d1177456776e371dba103b190ea38a43ed9e`  
		Last Modified: Tue, 27 Jun 2017 17:55:58 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1823dbbee7daf63f78294215fa489ca833a6d4f8aa53f2900898184088fd61`  
		Last Modified: Tue, 27 Jun 2017 17:55:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21-alpine`

```console
$ docker pull postgres@sha256:3bd7a9df761374d41d5213385d0cbc91453eb34283af7d488f5232940cc774db
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13781541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf3a806bae92550c67c2c277176aa4205870bb0f6fbd6d783a7787b931d2915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:29:27 GMT
ENV PG_MAJOR=9.2
# Tue, 20 Jun 2017 00:29:28 GMT
ENV PG_VERSION=9.2.21
# Tue, 20 Jun 2017 00:29:29 GMT
ENV PG_SHA256=0697e843523ee60c563f987f9c65bc4201294b18525d6e5e4b2c50c6d4058ef9
# Tue, 20 Jun 2017 00:29:30 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 20 Jun 2017 00:29:54 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 20 Jun 2017 00:32:26 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:32:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:32:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:32:30 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:32:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:32:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:33:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:33:20 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:33:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:33:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:33:46 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:33:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac3fff594af17a567d2d72c3c246f6ac481107ed7d58bb8d399a6e0efb097b8`  
		Last Modified: Sat, 24 Jun 2017 20:07:27 GMT  
		Size: 11.8 MB (11802357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571d1c8b6a456f40a54a94bfee426de7bac9e40ed0ed0db5bf4bf85ec1004491`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 6.4 KB (6403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5318a987c26cbcc462e4a208b23b895d3094f97821b9d6a5f983ae15854a1168`  
		Last Modified: Sat, 24 Jun 2017 20:07:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb7912add3558f0729cfa85d74d588020db77dd5ea302e2e41b662221852cfd`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2f0e95cbbd07e2b68429c2a8bed10a59332c6ba1d6d9e33c0c751a59dee6d`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59a3094d70b38d18e347c3273afeb4c6c833a7898d1fa40159de664446fe2e3`  
		Last Modified: Sat, 24 Jun 2017 20:07:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:3bd7a9df761374d41d5213385d0cbc91453eb34283af7d488f5232940cc774db
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13781541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf3a806bae92550c67c2c277176aa4205870bb0f6fbd6d783a7787b931d2915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:29:27 GMT
ENV PG_MAJOR=9.2
# Tue, 20 Jun 2017 00:29:28 GMT
ENV PG_VERSION=9.2.21
# Tue, 20 Jun 2017 00:29:29 GMT
ENV PG_SHA256=0697e843523ee60c563f987f9c65bc4201294b18525d6e5e4b2c50c6d4058ef9
# Tue, 20 Jun 2017 00:29:30 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 20 Jun 2017 00:29:54 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 20 Jun 2017 00:32:26 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:32:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:32:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:32:30 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:32:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:32:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:33:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:33:20 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:33:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:33:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:33:46 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:33:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac3fff594af17a567d2d72c3c246f6ac481107ed7d58bb8d399a6e0efb097b8`  
		Last Modified: Sat, 24 Jun 2017 20:07:27 GMT  
		Size: 11.8 MB (11802357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571d1c8b6a456f40a54a94bfee426de7bac9e40ed0ed0db5bf4bf85ec1004491`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 6.4 KB (6403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5318a987c26cbcc462e4a208b23b895d3094f97821b9d6a5f983ae15854a1168`  
		Last Modified: Sat, 24 Jun 2017 20:07:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb7912add3558f0729cfa85d74d588020db77dd5ea302e2e41b662221852cfd`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2f0e95cbbd07e2b68429c2a8bed10a59332c6ba1d6d9e33c0c751a59dee6d`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59a3094d70b38d18e347c3273afeb4c6c833a7898d1fa40159de664446fe2e3`  
		Last Modified: Sat, 24 Jun 2017 20:07:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
