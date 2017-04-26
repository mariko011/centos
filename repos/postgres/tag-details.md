<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:9.6.2`](#postgres962)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.6.2-alpine`](#postgres962-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:9.5.6`](#postgres956)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.6-alpine`](#postgres956-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.4.11`](#postgres9411)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.11-alpine`](#postgres9411-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.3.16`](#postgres9316)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.16-alpine`](#postgres9316-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.2.20`](#postgres9220)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.2.20-alpine`](#postgres9220-alpine)
-	[`postgres:9.2-alpine`](#postgres92-alpine)

## `postgres:9.6.2`

```console
$ docker pull postgres@sha256:fd6c0e2a9d053bebb294bb13765b3e01be7817bf77b01d58c2377ff27a4a46dc
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104254425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390220867755ef4d1351705130960605d14a44518149e89c674189eefcb09306`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:08:03 GMT
ENV PG_MAJOR=9.6
# Tue, 25 Apr 2017 04:08:04 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 25 Apr 2017 04:08:06 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:08:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:08:52 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:08:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:08:54 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:08:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:09:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:09:12 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:09:13 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:09:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:09:32 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:09:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc930a4e09f51d3334809e42a7afeedc0b284f1e440030869e116cf33dba86cb`  
		Last Modified: Tue, 25 Apr 2017 21:01:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8650cce8ef01c166a4e56b69db0a54c8795a5aa5b2e791f3c33c83906bc64a28`  
		Last Modified: Tue, 25 Apr 2017 21:01:33 GMT  
		Size: 43.3 MB (43262082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61949acd8e523ea00b73838652d948c36bd11ff920221e59acfbc2dbc738af50`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527a203588c0f7065060fab3f9de27f3e79b8ad61d3df599423e4b4108e61092`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dec14ac775661620d3ee9c5e72a10b10f95741d70b225962f74a5f40cd6ed6`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efc0ed5a9e5634caf56c65f24a136cf6ae7a663f10181e84ae5531a8b538700`  
		Last Modified: Tue, 25 Apr 2017 21:01:19 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cd26695b38fcd575c4ae6e8369b9103d65c0b1a781dadb610aebeaaf2141d7`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:fd6c0e2a9d053bebb294bb13765b3e01be7817bf77b01d58c2377ff27a4a46dc
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104254425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390220867755ef4d1351705130960605d14a44518149e89c674189eefcb09306`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:08:03 GMT
ENV PG_MAJOR=9.6
# Tue, 25 Apr 2017 04:08:04 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 25 Apr 2017 04:08:06 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:08:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:08:52 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:08:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:08:54 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:08:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:09:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:09:12 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:09:13 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:09:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:09:32 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:09:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc930a4e09f51d3334809e42a7afeedc0b284f1e440030869e116cf33dba86cb`  
		Last Modified: Tue, 25 Apr 2017 21:01:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8650cce8ef01c166a4e56b69db0a54c8795a5aa5b2e791f3c33c83906bc64a28`  
		Last Modified: Tue, 25 Apr 2017 21:01:33 GMT  
		Size: 43.3 MB (43262082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61949acd8e523ea00b73838652d948c36bd11ff920221e59acfbc2dbc738af50`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527a203588c0f7065060fab3f9de27f3e79b8ad61d3df599423e4b4108e61092`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dec14ac775661620d3ee9c5e72a10b10f95741d70b225962f74a5f40cd6ed6`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efc0ed5a9e5634caf56c65f24a136cf6ae7a663f10181e84ae5531a8b538700`  
		Last Modified: Tue, 25 Apr 2017 21:01:19 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cd26695b38fcd575c4ae6e8369b9103d65c0b1a781dadb610aebeaaf2141d7`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:fd6c0e2a9d053bebb294bb13765b3e01be7817bf77b01d58c2377ff27a4a46dc
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104254425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390220867755ef4d1351705130960605d14a44518149e89c674189eefcb09306`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:08:03 GMT
ENV PG_MAJOR=9.6
# Tue, 25 Apr 2017 04:08:04 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 25 Apr 2017 04:08:06 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:08:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:08:52 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:08:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:08:54 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:08:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:09:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:09:12 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:09:13 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:09:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:09:32 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:09:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc930a4e09f51d3334809e42a7afeedc0b284f1e440030869e116cf33dba86cb`  
		Last Modified: Tue, 25 Apr 2017 21:01:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8650cce8ef01c166a4e56b69db0a54c8795a5aa5b2e791f3c33c83906bc64a28`  
		Last Modified: Tue, 25 Apr 2017 21:01:33 GMT  
		Size: 43.3 MB (43262082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61949acd8e523ea00b73838652d948c36bd11ff920221e59acfbc2dbc738af50`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527a203588c0f7065060fab3f9de27f3e79b8ad61d3df599423e4b4108e61092`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dec14ac775661620d3ee9c5e72a10b10f95741d70b225962f74a5f40cd6ed6`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efc0ed5a9e5634caf56c65f24a136cf6ae7a663f10181e84ae5531a8b538700`  
		Last Modified: Tue, 25 Apr 2017 21:01:19 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cd26695b38fcd575c4ae6e8369b9103d65c0b1a781dadb610aebeaaf2141d7`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:fd6c0e2a9d053bebb294bb13765b3e01be7817bf77b01d58c2377ff27a4a46dc
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104254425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390220867755ef4d1351705130960605d14a44518149e89c674189eefcb09306`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:08:03 GMT
ENV PG_MAJOR=9.6
# Tue, 25 Apr 2017 04:08:04 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 25 Apr 2017 04:08:06 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:08:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:08:52 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:08:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:08:54 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:08:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:09:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:09:12 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:09:13 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:09:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:09:32 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:09:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc930a4e09f51d3334809e42a7afeedc0b284f1e440030869e116cf33dba86cb`  
		Last Modified: Tue, 25 Apr 2017 21:01:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8650cce8ef01c166a4e56b69db0a54c8795a5aa5b2e791f3c33c83906bc64a28`  
		Last Modified: Tue, 25 Apr 2017 21:01:33 GMT  
		Size: 43.3 MB (43262082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61949acd8e523ea00b73838652d948c36bd11ff920221e59acfbc2dbc738af50`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527a203588c0f7065060fab3f9de27f3e79b8ad61d3df599423e4b4108e61092`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dec14ac775661620d3ee9c5e72a10b10f95741d70b225962f74a5f40cd6ed6`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efc0ed5a9e5634caf56c65f24a136cf6ae7a663f10181e84ae5531a8b538700`  
		Last Modified: Tue, 25 Apr 2017 21:01:19 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cd26695b38fcd575c4ae6e8369b9103d65c0b1a781dadb610aebeaaf2141d7`  
		Last Modified: Tue, 25 Apr 2017 21:01:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.2-alpine`

```console
$ docker pull postgres@sha256:7f3a59bc91a4c80c9a3ff0430ec012f7ce82f906ab0a2d7176fcbbf24ea9f893
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14593576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953120eb942e86685c6d25dff066a10af58df524adbbefde0c2efd53975f11b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:45:30 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Apr 2017 20:45:31 GMT
ENV PG_VERSION=9.6.2
# Wed, 26 Apr 2017 20:45:31 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Wed, 26 Apr 2017 20:48:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:48:06 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:48:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:48:08 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:48:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:48:10 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:48:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:48:12 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:48:15 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:48:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2931b310bc1e56ecceaffa69f1fae800e6e8eba1b937118795f129aa20748b52`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 12.7 MB (12678780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2996796a1321148ef08392a25154bc11ae984ff85b8b9f5f9984b70075bc9b06`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdf8bbd1a3503b475ae855dafccc7ac6e06fab392418e1dd278d6a65cbc8140`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47255f8e1bca9e9f96f8f6ba40a81620124821d1a8948e020ad57bc662404db4`  
		Last Modified: Wed, 26 Apr 2017 21:00:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4945582dcf7d655f4b832759f2ed0f770d367179745edf71db89ec66069a55ef`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92139846ff88ed88b074a290413ff6b4e2a0969772206204e7b51dc154162c23`  
		Last Modified: Wed, 26 Apr 2017 21:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:7f3a59bc91a4c80c9a3ff0430ec012f7ce82f906ab0a2d7176fcbbf24ea9f893
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14593576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953120eb942e86685c6d25dff066a10af58df524adbbefde0c2efd53975f11b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:45:30 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Apr 2017 20:45:31 GMT
ENV PG_VERSION=9.6.2
# Wed, 26 Apr 2017 20:45:31 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Wed, 26 Apr 2017 20:48:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:48:06 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:48:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:48:08 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:48:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:48:10 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:48:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:48:12 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:48:15 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:48:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2931b310bc1e56ecceaffa69f1fae800e6e8eba1b937118795f129aa20748b52`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 12.7 MB (12678780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2996796a1321148ef08392a25154bc11ae984ff85b8b9f5f9984b70075bc9b06`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdf8bbd1a3503b475ae855dafccc7ac6e06fab392418e1dd278d6a65cbc8140`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47255f8e1bca9e9f96f8f6ba40a81620124821d1a8948e020ad57bc662404db4`  
		Last Modified: Wed, 26 Apr 2017 21:00:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4945582dcf7d655f4b832759f2ed0f770d367179745edf71db89ec66069a55ef`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92139846ff88ed88b074a290413ff6b4e2a0969772206204e7b51dc154162c23`  
		Last Modified: Wed, 26 Apr 2017 21:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:7f3a59bc91a4c80c9a3ff0430ec012f7ce82f906ab0a2d7176fcbbf24ea9f893
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14593576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953120eb942e86685c6d25dff066a10af58df524adbbefde0c2efd53975f11b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:45:30 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Apr 2017 20:45:31 GMT
ENV PG_VERSION=9.6.2
# Wed, 26 Apr 2017 20:45:31 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Wed, 26 Apr 2017 20:48:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:48:06 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:48:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:48:08 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:48:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:48:10 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:48:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:48:12 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:48:15 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:48:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2931b310bc1e56ecceaffa69f1fae800e6e8eba1b937118795f129aa20748b52`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 12.7 MB (12678780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2996796a1321148ef08392a25154bc11ae984ff85b8b9f5f9984b70075bc9b06`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdf8bbd1a3503b475ae855dafccc7ac6e06fab392418e1dd278d6a65cbc8140`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47255f8e1bca9e9f96f8f6ba40a81620124821d1a8948e020ad57bc662404db4`  
		Last Modified: Wed, 26 Apr 2017 21:00:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4945582dcf7d655f4b832759f2ed0f770d367179745edf71db89ec66069a55ef`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92139846ff88ed88b074a290413ff6b4e2a0969772206204e7b51dc154162c23`  
		Last Modified: Wed, 26 Apr 2017 21:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:7f3a59bc91a4c80c9a3ff0430ec012f7ce82f906ab0a2d7176fcbbf24ea9f893
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14593576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953120eb942e86685c6d25dff066a10af58df524adbbefde0c2efd53975f11b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:45:30 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Apr 2017 20:45:31 GMT
ENV PG_VERSION=9.6.2
# Wed, 26 Apr 2017 20:45:31 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Wed, 26 Apr 2017 20:48:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:48:06 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:48:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:48:08 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:48:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:48:10 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:48:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:48:12 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:48:15 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:48:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2931b310bc1e56ecceaffa69f1fae800e6e8eba1b937118795f129aa20748b52`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 12.7 MB (12678780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2996796a1321148ef08392a25154bc11ae984ff85b8b9f5f9984b70075bc9b06`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdf8bbd1a3503b475ae855dafccc7ac6e06fab392418e1dd278d6a65cbc8140`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47255f8e1bca9e9f96f8f6ba40a81620124821d1a8948e020ad57bc662404db4`  
		Last Modified: Wed, 26 Apr 2017 21:00:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4945582dcf7d655f4b832759f2ed0f770d367179745edf71db89ec66069a55ef`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92139846ff88ed88b074a290413ff6b4e2a0969772206204e7b51dc154162c23`  
		Last Modified: Wed, 26 Apr 2017 21:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.6`

```console
$ docker pull postgres@sha256:ecdabeced57301998d183e2f3d7b8d9c6b72d8bfc0d7caf89d3fa7fad16add32
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103775015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec4e93e1479bc806ebc32680aa4afea07700d1e7d0f77fd6131bf448c133ec42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:16:50 GMT
ENV PG_MAJOR=9.5
# Tue, 25 Apr 2017 04:16:50 GMT
ENV PG_VERSION=9.5.6-1.pgdg80+1
# Tue, 25 Apr 2017 04:16:52 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:17:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:17:40 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:17:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:17:57 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:17:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:17:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:18:00 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:18:17 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:18:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:18:20 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:18:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d99bd66b8e6c1755a67714acd4a9c5d7d03c5806ca5f479fbeea601fd4d38a`  
		Last Modified: Tue, 25 Apr 2017 21:00:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541a4d2816743fde4df6eef50dc7f986651e65b0dc6f16a9e695e134a488eaad`  
		Last Modified: Tue, 25 Apr 2017 21:00:33 GMT  
		Size: 42.8 MB (42782943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab004dc9b3c3a23d20ca298368710105fb5ac5dc7f461914f6172b2de3214fc4`  
		Last Modified: Tue, 25 Apr 2017 21:00:20 GMT  
		Size: 6.8 KB (6821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4cbf44a07c1efd9725e893a640e19a129d54761cf769908efe904a8100e626`  
		Last Modified: Tue, 25 Apr 2017 21:00:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d246950ff41f23d1fa1be9eb30cfcb0deee01dfc0e1060e8ba5504710db21`  
		Last Modified: Tue, 25 Apr 2017 21:00:20 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f56f984b2959ca5e7586602322c85d62eb5d413b68f88dcb4a6b40dbab5ee`  
		Last Modified: Tue, 25 Apr 2017 21:00:20 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223640a793c24906827f804d7a930828b3088b603a32e97dd2925ceac13884b1`  
		Last Modified: Tue, 25 Apr 2017 21:00:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:ecdabeced57301998d183e2f3d7b8d9c6b72d8bfc0d7caf89d3fa7fad16add32
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103775015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec4e93e1479bc806ebc32680aa4afea07700d1e7d0f77fd6131bf448c133ec42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:16:50 GMT
ENV PG_MAJOR=9.5
# Tue, 25 Apr 2017 04:16:50 GMT
ENV PG_VERSION=9.5.6-1.pgdg80+1
# Tue, 25 Apr 2017 04:16:52 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:17:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:17:40 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:17:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:17:57 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:17:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:17:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:18:00 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:18:17 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:18:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:18:20 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:18:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d99bd66b8e6c1755a67714acd4a9c5d7d03c5806ca5f479fbeea601fd4d38a`  
		Last Modified: Tue, 25 Apr 2017 21:00:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541a4d2816743fde4df6eef50dc7f986651e65b0dc6f16a9e695e134a488eaad`  
		Last Modified: Tue, 25 Apr 2017 21:00:33 GMT  
		Size: 42.8 MB (42782943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab004dc9b3c3a23d20ca298368710105fb5ac5dc7f461914f6172b2de3214fc4`  
		Last Modified: Tue, 25 Apr 2017 21:00:20 GMT  
		Size: 6.8 KB (6821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4cbf44a07c1efd9725e893a640e19a129d54761cf769908efe904a8100e626`  
		Last Modified: Tue, 25 Apr 2017 21:00:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d246950ff41f23d1fa1be9eb30cfcb0deee01dfc0e1060e8ba5504710db21`  
		Last Modified: Tue, 25 Apr 2017 21:00:20 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f56f984b2959ca5e7586602322c85d62eb5d413b68f88dcb4a6b40dbab5ee`  
		Last Modified: Tue, 25 Apr 2017 21:00:20 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223640a793c24906827f804d7a930828b3088b603a32e97dd2925ceac13884b1`  
		Last Modified: Tue, 25 Apr 2017 21:00:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.6-alpine`

```console
$ docker pull postgres@sha256:274e0f2ac58403a82771f02300e02b3905fe329e28b017518a165674a5313c37
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.6-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14307767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989e0095722d9d5a9c0db4a1966db26708e1e142f4308228d2098f541a41860c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:48:34 GMT
ENV PG_MAJOR=9.5
# Wed, 26 Apr 2017 20:48:34 GMT
ENV PG_VERSION=9.5.6
# Wed, 26 Apr 2017 20:48:35 GMT
ENV PG_SHA256=bb9e5f6d34e20783e96e10c1d6c0c09c31749e802aaa46b793ce2522725ae12f
# Wed, 26 Apr 2017 20:50:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:50:34 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:50:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:50:36 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:50:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:50:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:50:39 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:50:40 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:50:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:50:43 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:50:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53160884394fff6eaf5389f5aed193c61ccc3158e0ed38b5573064a5b76a2a1`  
		Last Modified: Wed, 26 Apr 2017 21:02:18 GMT  
		Size: 12.4 MB (12393242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fda34d3ab2cbc956054c6de7755c05095243fcbb8c2ef0ee2e778f44b6eb77c`  
		Last Modified: Wed, 26 Apr 2017 21:02:11 GMT  
		Size: 6.8 KB (6788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:326ed1457bf316d63b4d4e339a6d79f5b2701f0b177eaf9b664a11c3b75f17cb`  
		Last Modified: Wed, 26 Apr 2017 21:02:12 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe39d5b884bfeefd5448ac2b998eca629b528e72683aeb82511fa030422153ba`  
		Last Modified: Wed, 26 Apr 2017 21:02:11 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e38a341a3111f7fc3d075b193385ad9c03862845dc35cec1f3e6ff53ba7bcc7`  
		Last Modified: Wed, 26 Apr 2017 21:02:12 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc6ea14b18f0f0ba693d68d242167c94b989adb71d078f5906e4f6ae2f69290`  
		Last Modified: Wed, 26 Apr 2017 21:02:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:274e0f2ac58403a82771f02300e02b3905fe329e28b017518a165674a5313c37
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14307767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989e0095722d9d5a9c0db4a1966db26708e1e142f4308228d2098f541a41860c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:48:34 GMT
ENV PG_MAJOR=9.5
# Wed, 26 Apr 2017 20:48:34 GMT
ENV PG_VERSION=9.5.6
# Wed, 26 Apr 2017 20:48:35 GMT
ENV PG_SHA256=bb9e5f6d34e20783e96e10c1d6c0c09c31749e802aaa46b793ce2522725ae12f
# Wed, 26 Apr 2017 20:50:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:50:34 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:50:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:50:36 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:50:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:50:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:50:39 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:50:40 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:50:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:50:43 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:50:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53160884394fff6eaf5389f5aed193c61ccc3158e0ed38b5573064a5b76a2a1`  
		Last Modified: Wed, 26 Apr 2017 21:02:18 GMT  
		Size: 12.4 MB (12393242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fda34d3ab2cbc956054c6de7755c05095243fcbb8c2ef0ee2e778f44b6eb77c`  
		Last Modified: Wed, 26 Apr 2017 21:02:11 GMT  
		Size: 6.8 KB (6788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:326ed1457bf316d63b4d4e339a6d79f5b2701f0b177eaf9b664a11c3b75f17cb`  
		Last Modified: Wed, 26 Apr 2017 21:02:12 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe39d5b884bfeefd5448ac2b998eca629b528e72683aeb82511fa030422153ba`  
		Last Modified: Wed, 26 Apr 2017 21:02:11 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e38a341a3111f7fc3d075b193385ad9c03862845dc35cec1f3e6ff53ba7bcc7`  
		Last Modified: Wed, 26 Apr 2017 21:02:12 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc6ea14b18f0f0ba693d68d242167c94b989adb71d078f5906e4f6ae2f69290`  
		Last Modified: Wed, 26 Apr 2017 21:02:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.11`

```console
$ docker pull postgres@sha256:036743fb5c62618782eaf1377e2104ebcf29f8567e4dc87c680dd94aa2e69f75
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.11` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103437866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928cc2132b5acd4b0336dd955d2a66699d1a0d2d8e80ee2a3b714504c6f0a7a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:14:53 GMT
ENV PG_MAJOR=9.4
# Tue, 25 Apr 2017 04:14:54 GMT
ENV PG_VERSION=9.4.11-1.pgdg80+1
# Tue, 25 Apr 2017 04:14:55 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:15:50 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:15:52 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:15:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:16:09 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:16:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:16:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:16:12 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:16:13 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:16:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:16:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:16:16 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:16:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc481626377e5cd3aa565b0b7a99d4a6cd412f6df99ea5574ffa6b412730159`  
		Last Modified: Tue, 25 Apr 2017 20:59:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76647c6901584d5ba00497ce5300e9e3a3debc91635aa7553b34603fbc7fa931`  
		Last Modified: Tue, 25 Apr 2017 20:59:37 GMT  
		Size: 42.4 MB (42445941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2327364079d642a402e51ebe933144854ee27607b16e56e12c11f8e995b32b3`  
		Last Modified: Tue, 25 Apr 2017 20:59:24 GMT  
		Size: 6.7 KB (6679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108e108ec8c07f5457d53a62688448e3e3d9c4e90ae1026ddb4219b444b0ed6b`  
		Last Modified: Tue, 25 Apr 2017 20:59:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dc83a6f3d5bed953356c203758330baf797d63f4b0918e8a18202888b947bf`  
		Last Modified: Tue, 25 Apr 2017 20:59:24 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6e357e09f9324b97a7d990f68f5b0ab4d6bff5b3b04b04a9263792c473a84b`  
		Last Modified: Tue, 25 Apr 2017 20:59:24 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587b8b2a084677f639f383b325310e0c875f5fd37901dd091afeaf3f4b8e837`  
		Last Modified: Tue, 25 Apr 2017 20:59:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:036743fb5c62618782eaf1377e2104ebcf29f8567e4dc87c680dd94aa2e69f75
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103437866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928cc2132b5acd4b0336dd955d2a66699d1a0d2d8e80ee2a3b714504c6f0a7a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:14:53 GMT
ENV PG_MAJOR=9.4
# Tue, 25 Apr 2017 04:14:54 GMT
ENV PG_VERSION=9.4.11-1.pgdg80+1
# Tue, 25 Apr 2017 04:14:55 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:15:50 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:15:52 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:15:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:16:09 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:16:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:16:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:16:12 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:16:13 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:16:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:16:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:16:16 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:16:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc481626377e5cd3aa565b0b7a99d4a6cd412f6df99ea5574ffa6b412730159`  
		Last Modified: Tue, 25 Apr 2017 20:59:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76647c6901584d5ba00497ce5300e9e3a3debc91635aa7553b34603fbc7fa931`  
		Last Modified: Tue, 25 Apr 2017 20:59:37 GMT  
		Size: 42.4 MB (42445941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2327364079d642a402e51ebe933144854ee27607b16e56e12c11f8e995b32b3`  
		Last Modified: Tue, 25 Apr 2017 20:59:24 GMT  
		Size: 6.7 KB (6679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108e108ec8c07f5457d53a62688448e3e3d9c4e90ae1026ddb4219b444b0ed6b`  
		Last Modified: Tue, 25 Apr 2017 20:59:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dc83a6f3d5bed953356c203758330baf797d63f4b0918e8a18202888b947bf`  
		Last Modified: Tue, 25 Apr 2017 20:59:24 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6e357e09f9324b97a7d990f68f5b0ab4d6bff5b3b04b04a9263792c473a84b`  
		Last Modified: Tue, 25 Apr 2017 20:59:24 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587b8b2a084677f639f383b325310e0c875f5fd37901dd091afeaf3f4b8e837`  
		Last Modified: Tue, 25 Apr 2017 20:59:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.11-alpine`

```console
$ docker pull postgres@sha256:705c9106f750a50fbd25e9ba3fea1644bbbb016f164965e154a9b94af7e12479
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.11-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14167653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc42acd44fca6d34f6c515372882f9aea87d918675b23ee7488436d2f146d1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:51:02 GMT
ENV PG_MAJOR=9.4
# Wed, 26 Apr 2017 20:51:03 GMT
ENV PG_VERSION=9.4.11
# Wed, 26 Apr 2017 20:51:03 GMT
ENV PG_SHA256=e3eb51d045c180b03d2de1f0c3af9356e10be49448e966ca01dfc2c6d1cc9d23
# Wed, 26 Apr 2017 20:53:06 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:53:07 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:53:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:53:09 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:53:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:53:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:53:12 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:53:13 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:53:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:53:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:53:15 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:53:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798b2570900bb8794a577da58027e3ec40bf225e778f19b4b917a59d0433b0e7`  
		Last Modified: Wed, 26 Apr 2017 21:03:43 GMT  
		Size: 12.3 MB (12253269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc5d7c9d4ce6d42ad6c42bdb6955ce08cb75db2e0c1ed481fc06bff1cfa0967`  
		Last Modified: Wed, 26 Apr 2017 21:03:39 GMT  
		Size: 6.6 KB (6647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9017cc26ccf546ef6cbc79baadaec4bdc1f6ceff12f98f5ce6ed97615078e2a9`  
		Last Modified: Wed, 26 Apr 2017 21:03:39 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1f4ac2dd153c4e8911d8e79e69171d97cb618d56d242eba257fbc455347c1b`  
		Last Modified: Wed, 26 Apr 2017 21:03:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1b821b215b973af191a3c1665dd922fd41caa83c4adc382fbb68a313fc6008`  
		Last Modified: Wed, 26 Apr 2017 21:03:39 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c9e07d155ccfe8b59ca21325443a458b2cad0f9af67b851fef4804a1c1943f`  
		Last Modified: Wed, 26 Apr 2017 21:03:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:705c9106f750a50fbd25e9ba3fea1644bbbb016f164965e154a9b94af7e12479
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14167653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc42acd44fca6d34f6c515372882f9aea87d918675b23ee7488436d2f146d1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:51:02 GMT
ENV PG_MAJOR=9.4
# Wed, 26 Apr 2017 20:51:03 GMT
ENV PG_VERSION=9.4.11
# Wed, 26 Apr 2017 20:51:03 GMT
ENV PG_SHA256=e3eb51d045c180b03d2de1f0c3af9356e10be49448e966ca01dfc2c6d1cc9d23
# Wed, 26 Apr 2017 20:53:06 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:53:07 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:53:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:53:09 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:53:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:53:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:53:12 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:53:13 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:53:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:53:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:53:15 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:53:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798b2570900bb8794a577da58027e3ec40bf225e778f19b4b917a59d0433b0e7`  
		Last Modified: Wed, 26 Apr 2017 21:03:43 GMT  
		Size: 12.3 MB (12253269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc5d7c9d4ce6d42ad6c42bdb6955ce08cb75db2e0c1ed481fc06bff1cfa0967`  
		Last Modified: Wed, 26 Apr 2017 21:03:39 GMT  
		Size: 6.6 KB (6647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9017cc26ccf546ef6cbc79baadaec4bdc1f6ceff12f98f5ce6ed97615078e2a9`  
		Last Modified: Wed, 26 Apr 2017 21:03:39 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1f4ac2dd153c4e8911d8e79e69171d97cb618d56d242eba257fbc455347c1b`  
		Last Modified: Wed, 26 Apr 2017 21:03:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1b821b215b973af191a3c1665dd922fd41caa83c4adc382fbb68a313fc6008`  
		Last Modified: Wed, 26 Apr 2017 21:03:39 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c9e07d155ccfe8b59ca21325443a458b2cad0f9af67b851fef4804a1c1943f`  
		Last Modified: Wed, 26 Apr 2017 21:03:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.16`

```console
$ docker pull postgres@sha256:45de96c958577c4ab9c723290a4841508ab306113d656fb414f4ff7a0a147171
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.16` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103089851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a66c1af43426326fb3b32e7acc0cf6e28639e1622cc78ac6ace6b4d3c860d8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:12:56 GMT
ENV PG_MAJOR=9.3
# Tue, 25 Apr 2017 04:12:57 GMT
ENV PG_VERSION=9.3.16-1.pgdg80+1
# Tue, 25 Apr 2017 04:12:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:13:53 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:13:55 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:13:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:13:57 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:13:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:13:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:14:00 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:14:01 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:14:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:14:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:14:19 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:14:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8357d04d01c681c769dca0d69c9b5f597e7b65346f637d1e82b20e7eddfc3651`  
		Last Modified: Tue, 25 Apr 2017 20:58:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a90e416350617f1f7f304e2861bf41236372c77046e904fcc22b49adc8247d1`  
		Last Modified: Tue, 25 Apr 2017 20:58:42 GMT  
		Size: 42.1 MB (42098103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29c449e6119ca35c8559c38a2f56f04fe3e59603157d2e490497c1ce2c4d7eb`  
		Last Modified: Tue, 25 Apr 2017 20:58:27 GMT  
		Size: 6.5 KB (6497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe438050e132dbd0ee86f9c5a06b4f4fc6522b911459a7d7cea480aca48d5d3c`  
		Last Modified: Tue, 25 Apr 2017 20:58:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e4fc032858bb5eac04f9d77f303e1354c53cfb0809980bab41f68ff6d93519`  
		Last Modified: Tue, 25 Apr 2017 20:58:26 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5221349889ffad91dd262a4490228049ad90cea32f21136e496a33df3cbde2bb`  
		Last Modified: Tue, 25 Apr 2017 20:58:27 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff63f7e55004c33163655c57b64b25818239b2601616c8e75d1145a991e8094`  
		Last Modified: Tue, 25 Apr 2017 20:58:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:45de96c958577c4ab9c723290a4841508ab306113d656fb414f4ff7a0a147171
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103089851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a66c1af43426326fb3b32e7acc0cf6e28639e1622cc78ac6ace6b4d3c860d8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:12:56 GMT
ENV PG_MAJOR=9.3
# Tue, 25 Apr 2017 04:12:57 GMT
ENV PG_VERSION=9.3.16-1.pgdg80+1
# Tue, 25 Apr 2017 04:12:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:13:53 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:13:55 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:13:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:13:57 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:13:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:13:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:14:00 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:14:01 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:14:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:14:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:14:19 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:14:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8357d04d01c681c769dca0d69c9b5f597e7b65346f637d1e82b20e7eddfc3651`  
		Last Modified: Tue, 25 Apr 2017 20:58:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a90e416350617f1f7f304e2861bf41236372c77046e904fcc22b49adc8247d1`  
		Last Modified: Tue, 25 Apr 2017 20:58:42 GMT  
		Size: 42.1 MB (42098103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29c449e6119ca35c8559c38a2f56f04fe3e59603157d2e490497c1ce2c4d7eb`  
		Last Modified: Tue, 25 Apr 2017 20:58:27 GMT  
		Size: 6.5 KB (6497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe438050e132dbd0ee86f9c5a06b4f4fc6522b911459a7d7cea480aca48d5d3c`  
		Last Modified: Tue, 25 Apr 2017 20:58:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e4fc032858bb5eac04f9d77f303e1354c53cfb0809980bab41f68ff6d93519`  
		Last Modified: Tue, 25 Apr 2017 20:58:26 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5221349889ffad91dd262a4490228049ad90cea32f21136e496a33df3cbde2bb`  
		Last Modified: Tue, 25 Apr 2017 20:58:27 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff63f7e55004c33163655c57b64b25818239b2601616c8e75d1145a991e8094`  
		Last Modified: Tue, 25 Apr 2017 20:58:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.16-alpine`

```console
$ docker pull postgres@sha256:6a2dbeb11d0a85c2d06d2b68ed1dbe7560e6fb50296b4492a390c929db00d31b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.16-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13882494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c420a080408a56dd199313408d39ddf2159ffec0158ca58ebd90fdacea6891c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:53:34 GMT
ENV PG_MAJOR=9.3
# Wed, 26 Apr 2017 20:53:35 GMT
ENV PG_VERSION=9.3.16
# Wed, 26 Apr 2017 20:53:35 GMT
ENV PG_SHA256=845f5e4ac8cf026b6a77c5a180a2fe869f51e9d06acf8d0365b05505a2c66873
# Wed, 26 Apr 2017 20:53:36 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 26 Apr 2017 20:53:36 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Wed, 26 Apr 2017 20:55:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:56:00 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:56:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:56:02 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:56:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:56:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:56:04 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:56:05 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:56:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:56:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:56:07 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:56:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cc21f0d3a1ef300c3d115d68fe484b59ec4940953e584de97bd954a53c077c`  
		Last Modified: Wed, 26 Apr 2017 21:05:10 GMT  
		Size: 12.0 MB (11968297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf6ac0000a176ca22af2a573142d1d55bd5c854a0f36f949aa0211aa5bc203f`  
		Last Modified: Wed, 26 Apr 2017 21:05:06 GMT  
		Size: 6.5 KB (6464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e84d0acb5f33b26f5043c85de50c27695a4977193e4c238d488173eb701657f`  
		Last Modified: Wed, 26 Apr 2017 21:05:06 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4004d40e060495a62c421f7222dd90610dd10bf521ab40e8bcce2caf9d05573e`  
		Last Modified: Wed, 26 Apr 2017 21:05:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8bf0821b7d99017ff0659de349155ce06aaa90d7264997d9fb7d60bbec907e`  
		Last Modified: Wed, 26 Apr 2017 21:05:06 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804337fb3be6b7ebb4a00e4ddd24559872dc6c0bb6bebaec612f22c3d9dee9a9`  
		Last Modified: Wed, 26 Apr 2017 21:05:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:6a2dbeb11d0a85c2d06d2b68ed1dbe7560e6fb50296b4492a390c929db00d31b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13882494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c420a080408a56dd199313408d39ddf2159ffec0158ca58ebd90fdacea6891c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:53:34 GMT
ENV PG_MAJOR=9.3
# Wed, 26 Apr 2017 20:53:35 GMT
ENV PG_VERSION=9.3.16
# Wed, 26 Apr 2017 20:53:35 GMT
ENV PG_SHA256=845f5e4ac8cf026b6a77c5a180a2fe869f51e9d06acf8d0365b05505a2c66873
# Wed, 26 Apr 2017 20:53:36 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 26 Apr 2017 20:53:36 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Wed, 26 Apr 2017 20:55:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:56:00 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:56:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:56:02 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:56:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:56:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:56:04 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:56:05 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:56:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:56:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:56:07 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:56:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cc21f0d3a1ef300c3d115d68fe484b59ec4940953e584de97bd954a53c077c`  
		Last Modified: Wed, 26 Apr 2017 21:05:10 GMT  
		Size: 12.0 MB (11968297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf6ac0000a176ca22af2a573142d1d55bd5c854a0f36f949aa0211aa5bc203f`  
		Last Modified: Wed, 26 Apr 2017 21:05:06 GMT  
		Size: 6.5 KB (6464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e84d0acb5f33b26f5043c85de50c27695a4977193e4c238d488173eb701657f`  
		Last Modified: Wed, 26 Apr 2017 21:05:06 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4004d40e060495a62c421f7222dd90610dd10bf521ab40e8bcce2caf9d05573e`  
		Last Modified: Wed, 26 Apr 2017 21:05:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8bf0821b7d99017ff0659de349155ce06aaa90d7264997d9fb7d60bbec907e`  
		Last Modified: Wed, 26 Apr 2017 21:05:06 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804337fb3be6b7ebb4a00e4ddd24559872dc6c0bb6bebaec612f22c3d9dee9a9`  
		Last Modified: Wed, 26 Apr 2017 21:05:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.20`

```console
$ docker pull postgres@sha256:f7e13a81fd86640aaac427e17467e8df7fa099db53fee6faa84aaa58075122dd
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.20` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102926650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f36582ebc722106bf91f8e4f79ac607e7d06b83876bab49d008f94be81db9ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:10:21 GMT
ENV PG_MAJOR=9.2
# Tue, 25 Apr 2017 04:10:22 GMT
ENV PG_VERSION=9.2.20-1.pgdg80+1
# Tue, 25 Apr 2017 04:10:23 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:11:20 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:11:26 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:11:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:11:44 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:11:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:11:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:12:03 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:12:04 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:12:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:12:22 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:12:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bcae6048269076b6575fc366bde824e1625e570e23589a0c6f0b26ea2f1b9e`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d67793fba98f46383d9e3fa2ce1dfd9f7a4b10542daeb8b3b50223f5dd5b18`  
		Last Modified: Tue, 25 Apr 2017 20:57:43 GMT  
		Size: 41.9 MB (41934965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0100b00d16a34ad1e9c81cd3051d595ae457d712408be4be5bd089a62979ba`  
		Last Modified: Tue, 25 Apr 2017 20:57:30 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56776fc06542df56532ba8c294a457a7726d129f55c9e41580718231838963d2`  
		Last Modified: Tue, 25 Apr 2017 20:57:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c098e48deada6d035464083a561a47a5304f83056210e7434d7e094306f4b37a`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5929b33295fd62d9391776e2f8f881469124d0dc464a03db12599c8f3eabe2`  
		Last Modified: Tue, 25 Apr 2017 20:57:30 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53c2f7ee0ea1dbdf858a0e38fb8d9d8d4a93888c14ed8a8e7c58b31fa4fc703`  
		Last Modified: Tue, 25 Apr 2017 20:57:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:f7e13a81fd86640aaac427e17467e8df7fa099db53fee6faa84aaa58075122dd
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102926650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f36582ebc722106bf91f8e4f79ac607e7d06b83876bab49d008f94be81db9ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:07:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 25 Apr 2017 04:07:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:07:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:07:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 25 Apr 2017 04:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 25 Apr 2017 04:07:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 04:07:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:10:21 GMT
ENV PG_MAJOR=9.2
# Tue, 25 Apr 2017 04:10:22 GMT
ENV PG_VERSION=9.2.20-1.pgdg80+1
# Tue, 25 Apr 2017 04:10:23 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 25 Apr 2017 04:11:20 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:11:26 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 25 Apr 2017 04:11:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 25 Apr 2017 04:11:44 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:11:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Apr 2017 04:11:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 25 Apr 2017 04:12:03 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Apr 2017 04:12:04 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:12:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:12:22 GMT
EXPOSE 5432/tcp
# Tue, 25 Apr 2017 04:12:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c784d04dcb093d973443d53da4caa360237c8402351f61ec29a7a4d94e74223`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dddf7e66202708c779d83f4155703ded0b0a34273d20ff88c587ce18619fb`  
		Last Modified: Tue, 25 Apr 2017 20:57:35 GMT  
		Size: 1.3 MB (1308214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bff71e3ce6a34b054c75497bf6d379053ee0bf2348b1b3b7941f0901fbcb38`  
		Last Modified: Tue, 25 Apr 2017 20:57:36 GMT  
		Size: 7.1 MB (7117661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e0a8654888a301af8ce50e4c63c7e3762dca8a4cd1b165ec0b80f6dcf6c03`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295d654cd5ed8581f46fbe2b7fb364302bcb01a58b887b934a4686f31e1cd9`  
		Last Modified: Tue, 25 Apr 2017 20:57:34 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bcae6048269076b6575fc366bde824e1625e570e23589a0c6f0b26ea2f1b9e`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d67793fba98f46383d9e3fa2ce1dfd9f7a4b10542daeb8b3b50223f5dd5b18`  
		Last Modified: Tue, 25 Apr 2017 20:57:43 GMT  
		Size: 41.9 MB (41934965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0100b00d16a34ad1e9c81cd3051d595ae457d712408be4be5bd089a62979ba`  
		Last Modified: Tue, 25 Apr 2017 20:57:30 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56776fc06542df56532ba8c294a457a7726d129f55c9e41580718231838963d2`  
		Last Modified: Tue, 25 Apr 2017 20:57:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c098e48deada6d035464083a561a47a5304f83056210e7434d7e094306f4b37a`  
		Last Modified: Tue, 25 Apr 2017 20:57:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5929b33295fd62d9391776e2f8f881469124d0dc464a03db12599c8f3eabe2`  
		Last Modified: Tue, 25 Apr 2017 20:57:30 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53c2f7ee0ea1dbdf858a0e38fb8d9d8d4a93888c14ed8a8e7c58b31fa4fc703`  
		Last Modified: Tue, 25 Apr 2017 20:57:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.20-alpine`

```console
$ docker pull postgres@sha256:58a56a7e52f2d1b3e0c777309fd19cac7f90d74ae4d65cd18a636314f64fd1a2
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.20-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13714440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5337c266539574948009a96bbd7bcb410228b92a4fd82fdbd16beaa7ce4865b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:56:26 GMT
ENV PG_MAJOR=9.2
# Wed, 26 Apr 2017 20:56:27 GMT
ENV PG_VERSION=9.2.20
# Wed, 26 Apr 2017 20:56:27 GMT
ENV PG_SHA256=0b8abdae8400cabea5587a726003c9dd71c73c049bdae523abc35f9312dd8f26
# Wed, 26 Apr 2017 20:56:28 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 26 Apr 2017 20:56:28 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Wed, 26 Apr 2017 20:58:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:58:16 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:58:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:58:18 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:58:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:58:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:58:21 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:58:22 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:58:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:58:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:58:25 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:58:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a308a32d1dbde4f46ce64958608284a65799d65e623eaf92961bf3b32d23378`  
		Last Modified: Wed, 26 Apr 2017 21:06:36 GMT  
		Size: 11.8 MB (11800302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91a27a90415114d5a124279b96ff1435e56b418fa986accc40aefe16d135033`  
		Last Modified: Wed, 26 Apr 2017 21:06:32 GMT  
		Size: 6.4 KB (6403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859d19597f5fe40f27be426af01f08a86440591b1844454cd30bac1de77e1e7c`  
		Last Modified: Wed, 26 Apr 2017 21:06:32 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5c445244e5affad5f5e76490466fa2cd8102252a2385dcfda41c2a7f0dc026`  
		Last Modified: Wed, 26 Apr 2017 21:06:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf89e9b8f24d37cf445a9009275f089c9e0ffaf197da82f23f2ef438c4ab5b78`  
		Last Modified: Wed, 26 Apr 2017 21:06:43 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cab09d7578f3c4c5345ef2238f7d795ba6681524479ba428545516ce46afcc`  
		Last Modified: Wed, 26 Apr 2017 21:06:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:58a56a7e52f2d1b3e0c777309fd19cac7f90d74ae4d65cd18a636314f64fd1a2
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13714440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5337c266539574948009a96bbd7bcb410228b92a4fd82fdbd16beaa7ce4865b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:56:26 GMT
ENV PG_MAJOR=9.2
# Wed, 26 Apr 2017 20:56:27 GMT
ENV PG_VERSION=9.2.20
# Wed, 26 Apr 2017 20:56:27 GMT
ENV PG_SHA256=0b8abdae8400cabea5587a726003c9dd71c73c049bdae523abc35f9312dd8f26
# Wed, 26 Apr 2017 20:56:28 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 26 Apr 2017 20:56:28 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Wed, 26 Apr 2017 20:58:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:58:16 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:58:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:58:18 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:58:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:58:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:58:21 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:58:22 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:58:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:58:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:58:25 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:58:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a308a32d1dbde4f46ce64958608284a65799d65e623eaf92961bf3b32d23378`  
		Last Modified: Wed, 26 Apr 2017 21:06:36 GMT  
		Size: 11.8 MB (11800302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91a27a90415114d5a124279b96ff1435e56b418fa986accc40aefe16d135033`  
		Last Modified: Wed, 26 Apr 2017 21:06:32 GMT  
		Size: 6.4 KB (6403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859d19597f5fe40f27be426af01f08a86440591b1844454cd30bac1de77e1e7c`  
		Last Modified: Wed, 26 Apr 2017 21:06:32 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5c445244e5affad5f5e76490466fa2cd8102252a2385dcfda41c2a7f0dc026`  
		Last Modified: Wed, 26 Apr 2017 21:06:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf89e9b8f24d37cf445a9009275f089c9e0ffaf197da82f23f2ef438c4ab5b78`  
		Last Modified: Wed, 26 Apr 2017 21:06:43 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cab09d7578f3c4c5345ef2238f7d795ba6681524479ba428545516ce46afcc`  
		Last Modified: Wed, 26 Apr 2017 21:06:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
