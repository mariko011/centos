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
$ docker pull postgres@sha256:3b51a72ca2642f24fa782c2fb99ddb0d29cbcd38f32639c98a80966a25ae2a64
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102090190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0943ecbb3c5e05b6b79b9a2f439e8da3b293a5932752deacbf5aa6d339e2ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_MAJOR=9.6
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 21 Mar 2017 23:38:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:39:35 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:39:36 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:39:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:39:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:39:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:37:53 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:37:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:37:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:37:56 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:37:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cef76ed67ea8d88d69ce88edc0c5b0aacb6a9ad5be49f825c6372d68dc0fd5`  
		Last Modified: Fri, 24 Mar 2017 00:11:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9236ca589ab42ba1deb8891f4bef7235a220b2e7768215fec469ef4eda6676bb`  
		Last Modified: Fri, 24 Mar 2017 00:11:35 GMT  
		Size: 42.4 MB (42409238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b3e91b94c544edcb87448c260fdc1f3ffe840fd2e560cbb42a9933a64e9963`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc577dbd56f127ab86ce5db879714aa5e36ec188741354156795658e0e703b1`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908b0ac3de984dd97cee898d458d648a43586b00a90ba545097ced925a9faf`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80323bca9d7bce11b20583e675b5d8a48c23b935ea310da69fe980db1dfc20e`  
		Last Modified: Fri, 07 Apr 2017 19:39:01 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f943a70bad98e5109491de3439cf1e82aa6fe004dc0138656880e02c3ad9d5`  
		Last Modified: Fri, 07 Apr 2017 19:39:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:3b51a72ca2642f24fa782c2fb99ddb0d29cbcd38f32639c98a80966a25ae2a64
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102090190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0943ecbb3c5e05b6b79b9a2f439e8da3b293a5932752deacbf5aa6d339e2ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_MAJOR=9.6
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 21 Mar 2017 23:38:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:39:35 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:39:36 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:39:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:39:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:39:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:37:53 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:37:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:37:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:37:56 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:37:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cef76ed67ea8d88d69ce88edc0c5b0aacb6a9ad5be49f825c6372d68dc0fd5`  
		Last Modified: Fri, 24 Mar 2017 00:11:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9236ca589ab42ba1deb8891f4bef7235a220b2e7768215fec469ef4eda6676bb`  
		Last Modified: Fri, 24 Mar 2017 00:11:35 GMT  
		Size: 42.4 MB (42409238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b3e91b94c544edcb87448c260fdc1f3ffe840fd2e560cbb42a9933a64e9963`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc577dbd56f127ab86ce5db879714aa5e36ec188741354156795658e0e703b1`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908b0ac3de984dd97cee898d458d648a43586b00a90ba545097ced925a9faf`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80323bca9d7bce11b20583e675b5d8a48c23b935ea310da69fe980db1dfc20e`  
		Last Modified: Fri, 07 Apr 2017 19:39:01 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f943a70bad98e5109491de3439cf1e82aa6fe004dc0138656880e02c3ad9d5`  
		Last Modified: Fri, 07 Apr 2017 19:39:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:3b51a72ca2642f24fa782c2fb99ddb0d29cbcd38f32639c98a80966a25ae2a64
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102090190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0943ecbb3c5e05b6b79b9a2f439e8da3b293a5932752deacbf5aa6d339e2ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_MAJOR=9.6
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 21 Mar 2017 23:38:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:39:35 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:39:36 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:39:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:39:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:39:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:37:53 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:37:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:37:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:37:56 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:37:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cef76ed67ea8d88d69ce88edc0c5b0aacb6a9ad5be49f825c6372d68dc0fd5`  
		Last Modified: Fri, 24 Mar 2017 00:11:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9236ca589ab42ba1deb8891f4bef7235a220b2e7768215fec469ef4eda6676bb`  
		Last Modified: Fri, 24 Mar 2017 00:11:35 GMT  
		Size: 42.4 MB (42409238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b3e91b94c544edcb87448c260fdc1f3ffe840fd2e560cbb42a9933a64e9963`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc577dbd56f127ab86ce5db879714aa5e36ec188741354156795658e0e703b1`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908b0ac3de984dd97cee898d458d648a43586b00a90ba545097ced925a9faf`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80323bca9d7bce11b20583e675b5d8a48c23b935ea310da69fe980db1dfc20e`  
		Last Modified: Fri, 07 Apr 2017 19:39:01 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f943a70bad98e5109491de3439cf1e82aa6fe004dc0138656880e02c3ad9d5`  
		Last Modified: Fri, 07 Apr 2017 19:39:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:3b51a72ca2642f24fa782c2fb99ddb0d29cbcd38f32639c98a80966a25ae2a64
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102090190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0943ecbb3c5e05b6b79b9a2f439e8da3b293a5932752deacbf5aa6d339e2ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_MAJOR=9.6
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 21 Mar 2017 23:38:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:39:35 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:39:36 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:39:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:39:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:39:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:37:53 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:37:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:37:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:37:56 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:37:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cef76ed67ea8d88d69ce88edc0c5b0aacb6a9ad5be49f825c6372d68dc0fd5`  
		Last Modified: Fri, 24 Mar 2017 00:11:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9236ca589ab42ba1deb8891f4bef7235a220b2e7768215fec469ef4eda6676bb`  
		Last Modified: Fri, 24 Mar 2017 00:11:35 GMT  
		Size: 42.4 MB (42409238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b3e91b94c544edcb87448c260fdc1f3ffe840fd2e560cbb42a9933a64e9963`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc577dbd56f127ab86ce5db879714aa5e36ec188741354156795658e0e703b1`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908b0ac3de984dd97cee898d458d648a43586b00a90ba545097ced925a9faf`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80323bca9d7bce11b20583e675b5d8a48c23b935ea310da69fe980db1dfc20e`  
		Last Modified: Fri, 07 Apr 2017 19:39:01 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f943a70bad98e5109491de3439cf1e82aa6fe004dc0138656880e02c3ad9d5`  
		Last Modified: Fri, 07 Apr 2017 19:39:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.2-alpine`

```console
$ docker pull postgres@sha256:b2eb0b1194dfc7a42d496fc2c333ffad8c38e552a0d5411450c7b307a7c9774b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d97e2c873f406c524c1570befca758e15655991637ee4babfe293a3269804b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:37:58 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:37:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:01 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b381a833e6a77ec7b403e905ef396df4b953f35b4e1d228bbc9f725f781b9b`  
		Last Modified: Fri, 07 Apr 2017 19:40:25 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacfe251908ed14b80e9ef71ca688dc086f674a6f0e4ed5da6ae3c8a09abdce0`  
		Last Modified: Fri, 07 Apr 2017 19:40:25 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:b2eb0b1194dfc7a42d496fc2c333ffad8c38e552a0d5411450c7b307a7c9774b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d97e2c873f406c524c1570befca758e15655991637ee4babfe293a3269804b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:37:58 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:37:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:01 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b381a833e6a77ec7b403e905ef396df4b953f35b4e1d228bbc9f725f781b9b`  
		Last Modified: Fri, 07 Apr 2017 19:40:25 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacfe251908ed14b80e9ef71ca688dc086f674a6f0e4ed5da6ae3c8a09abdce0`  
		Last Modified: Fri, 07 Apr 2017 19:40:25 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:b2eb0b1194dfc7a42d496fc2c333ffad8c38e552a0d5411450c7b307a7c9774b
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d97e2c873f406c524c1570befca758e15655991637ee4babfe293a3269804b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:37:58 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:37:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:01 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b381a833e6a77ec7b403e905ef396df4b953f35b4e1d228bbc9f725f781b9b`  
		Last Modified: Fri, 07 Apr 2017 19:40:25 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacfe251908ed14b80e9ef71ca688dc086f674a6f0e4ed5da6ae3c8a09abdce0`  
		Last Modified: Fri, 07 Apr 2017 19:40:25 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:b2eb0b1194dfc7a42d496fc2c333ffad8c38e552a0d5411450c7b307a7c9774b
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d97e2c873f406c524c1570befca758e15655991637ee4babfe293a3269804b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:37:58 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:37:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:01 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b381a833e6a77ec7b403e905ef396df4b953f35b4e1d228bbc9f725f781b9b`  
		Last Modified: Fri, 07 Apr 2017 19:40:25 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacfe251908ed14b80e9ef71ca688dc086f674a6f0e4ed5da6ae3c8a09abdce0`  
		Last Modified: Fri, 07 Apr 2017 19:40:25 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.6`

```console
$ docker pull postgres@sha256:ae6aed7509b24c99d22eea879a999cc5296bf8512cb0ca806710c21e28199258
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101620667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b5a2e24152446a7077da85c428ca9560b266446115b3e7e54703b6f99e39fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:41:47 GMT
ENV PG_MAJOR=9.5
# Tue, 21 Mar 2017 23:41:47 GMT
ENV PG_VERSION=9.5.6-1.pgdg80+1
# Tue, 21 Mar 2017 23:41:48 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:42:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:24 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:42:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:42:25 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:42:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:42:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:42:27 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:03 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:05 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed067dfd9fa024f6f2ec3189d020e7dcc280518d8d8f54508d8de9dd22d999cb`  
		Last Modified: Fri, 24 Mar 2017 00:10:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b521d237ee601dc6c2dc851e75915a0a7a01e9b5552e316453704922c35cf3e0`  
		Last Modified: Fri, 24 Mar 2017 00:10:28 GMT  
		Size: 41.9 MB (41939981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee512509160164bfbe878d854cae90298c10169d6002d2489f4c371d0811e2a`  
		Last Modified: Fri, 24 Mar 2017 00:10:10 GMT  
		Size: 6.9 KB (6858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab834064cf659128dfccea24185056a31323cc7bbac6db75fd6b2689b0cbcd8f`  
		Last Modified: Fri, 24 Mar 2017 00:10:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7778ac4a9d29408ef86b47b419e729c45a41185e86b3d8e486016070669b8142`  
		Last Modified: Fri, 24 Mar 2017 00:10:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009030d35c578300bd9a7443e4b2d3866bdc99350346ee1ea03c264806f73b1d`  
		Last Modified: Fri, 07 Apr 2017 19:41:49 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde5022b16f87af7d8a3b0c20128c5d0c81b7887b7c9de12bb5c91486e118944`  
		Last Modified: Fri, 07 Apr 2017 19:41:49 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:ae6aed7509b24c99d22eea879a999cc5296bf8512cb0ca806710c21e28199258
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101620667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b5a2e24152446a7077da85c428ca9560b266446115b3e7e54703b6f99e39fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:41:47 GMT
ENV PG_MAJOR=9.5
# Tue, 21 Mar 2017 23:41:47 GMT
ENV PG_VERSION=9.5.6-1.pgdg80+1
# Tue, 21 Mar 2017 23:41:48 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:42:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:24 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:42:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:42:25 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:42:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:42:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:42:27 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:03 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:05 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed067dfd9fa024f6f2ec3189d020e7dcc280518d8d8f54508d8de9dd22d999cb`  
		Last Modified: Fri, 24 Mar 2017 00:10:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b521d237ee601dc6c2dc851e75915a0a7a01e9b5552e316453704922c35cf3e0`  
		Last Modified: Fri, 24 Mar 2017 00:10:28 GMT  
		Size: 41.9 MB (41939981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee512509160164bfbe878d854cae90298c10169d6002d2489f4c371d0811e2a`  
		Last Modified: Fri, 24 Mar 2017 00:10:10 GMT  
		Size: 6.9 KB (6858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab834064cf659128dfccea24185056a31323cc7bbac6db75fd6b2689b0cbcd8f`  
		Last Modified: Fri, 24 Mar 2017 00:10:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7778ac4a9d29408ef86b47b419e729c45a41185e86b3d8e486016070669b8142`  
		Last Modified: Fri, 24 Mar 2017 00:10:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009030d35c578300bd9a7443e4b2d3866bdc99350346ee1ea03c264806f73b1d`  
		Last Modified: Fri, 07 Apr 2017 19:41:49 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde5022b16f87af7d8a3b0c20128c5d0c81b7887b7c9de12bb5c91486e118944`  
		Last Modified: Fri, 07 Apr 2017 19:41:49 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.6-alpine`

```console
$ docker pull postgres@sha256:b7036712877ce6c7d9421f4a68507dc1dca95edc5d87847298f870e68a7b001a
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13716808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba4cab9a5a74bd3d316412ab0fe31fd7c33d3329e06d4e4b8f8b118bff6f2a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_MAJOR=9.5
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_VERSION=9.5.6
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_SHA256=bb9e5f6d34e20783e96e10c1d6c0c09c31749e802aaa46b793ce2522725ae12f
# Tue, 07 Mar 2017 23:48:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:48:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:48:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:48:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:48:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:07 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:10 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:11 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6789a263b11913de4f1595d043997a51861fed8c900bf47363109078ce2dea9b`  
		Last Modified: Tue, 07 Mar 2017 23:57:44 GMT  
		Size: 11.8 MB (11802382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295eaa9cb244d6b039eadf337b376d74fde716c32388978e3ed6c37a5858be99`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 6.8 KB (6827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc851e9ab61a5d4d9c2dd937c06d64dba56e651a9cc39ff84bfa94fc96e1e62`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014af74535f5ae07fcf81973c636678d144ca4b694b37c22eb0dff428aaba178`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fbb0857842cc1919482afffd7d973c3013fefb21b9fdc40cb30bbb0e9c2a9e`  
		Last Modified: Fri, 07 Apr 2017 19:42:33 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e37f7e8e848d0feee58b45fed2126b9b5ce8ce95aecd53fbdadcc9176df4a6b`  
		Last Modified: Fri, 07 Apr 2017 19:42:33 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:b7036712877ce6c7d9421f4a68507dc1dca95edc5d87847298f870e68a7b001a
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13716808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba4cab9a5a74bd3d316412ab0fe31fd7c33d3329e06d4e4b8f8b118bff6f2a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_MAJOR=9.5
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_VERSION=9.5.6
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_SHA256=bb9e5f6d34e20783e96e10c1d6c0c09c31749e802aaa46b793ce2522725ae12f
# Tue, 07 Mar 2017 23:48:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:48:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:48:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:48:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:48:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:07 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:10 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:11 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6789a263b11913de4f1595d043997a51861fed8c900bf47363109078ce2dea9b`  
		Last Modified: Tue, 07 Mar 2017 23:57:44 GMT  
		Size: 11.8 MB (11802382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295eaa9cb244d6b039eadf337b376d74fde716c32388978e3ed6c37a5858be99`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 6.8 KB (6827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc851e9ab61a5d4d9c2dd937c06d64dba56e651a9cc39ff84bfa94fc96e1e62`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014af74535f5ae07fcf81973c636678d144ca4b694b37c22eb0dff428aaba178`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fbb0857842cc1919482afffd7d973c3013fefb21b9fdc40cb30bbb0e9c2a9e`  
		Last Modified: Fri, 07 Apr 2017 19:42:33 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e37f7e8e848d0feee58b45fed2126b9b5ce8ce95aecd53fbdadcc9176df4a6b`  
		Last Modified: Fri, 07 Apr 2017 19:42:33 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.11`

```console
$ docker pull postgres@sha256:83a05c1cc6e75bc24795690d54dd259c757db19a0885890a661cf0d1899ea237
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101207950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afdbe79b925ef5f42fa5758f12101348a50cd47faac2d894f32be4fe0242bc55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:41:13 GMT
ENV PG_MAJOR=9.4
# Tue, 21 Mar 2017 23:41:14 GMT
ENV PG_VERSION=9.4.11-1.pgdg80+1
# Tue, 21 Mar 2017 23:41:15 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:41:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:41:41 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:41:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:41:42 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:41:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:41:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:41:44 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:12 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:15 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888b5c13b5e121794f81041e6c5620fcf7a478042204245095219ee9a3c7bd09`  
		Last Modified: Fri, 24 Mar 2017 00:09:09 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd083cfecff7a4adfc879736d38efdf879e8bc7480ebe265b95f073b3a7ee03b`  
		Last Modified: Fri, 24 Mar 2017 00:09:25 GMT  
		Size: 41.5 MB (41527411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f052b8f77bfb60f9480da7eadc0d30f048cb4e57a1e8935b0fb5008172a85c83`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 6.7 KB (6710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fba0edc28ab8f640e112e4fdc519e333ec69032813f950533b7bf30d73af83`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdcc5391528e5253d5f898bcee89d8a732e279acb5d1a25c439feb7236cfaf0f`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be41713a757a2c7f43ecb40044bca00ee66b943f1a25ad722839ce44383ca9d`  
		Last Modified: Fri, 07 Apr 2017 19:43:18 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe580a66c7618a3a8cd62d5e6e324d18efcb7147071fcedacb089f5cb2fa5240`  
		Last Modified: Fri, 07 Apr 2017 19:43:17 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:83a05c1cc6e75bc24795690d54dd259c757db19a0885890a661cf0d1899ea237
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101207950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afdbe79b925ef5f42fa5758f12101348a50cd47faac2d894f32be4fe0242bc55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:41:13 GMT
ENV PG_MAJOR=9.4
# Tue, 21 Mar 2017 23:41:14 GMT
ENV PG_VERSION=9.4.11-1.pgdg80+1
# Tue, 21 Mar 2017 23:41:15 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:41:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:41:41 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:41:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:41:42 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:41:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:41:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:41:44 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:12 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:15 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888b5c13b5e121794f81041e6c5620fcf7a478042204245095219ee9a3c7bd09`  
		Last Modified: Fri, 24 Mar 2017 00:09:09 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd083cfecff7a4adfc879736d38efdf879e8bc7480ebe265b95f073b3a7ee03b`  
		Last Modified: Fri, 24 Mar 2017 00:09:25 GMT  
		Size: 41.5 MB (41527411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f052b8f77bfb60f9480da7eadc0d30f048cb4e57a1e8935b0fb5008172a85c83`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 6.7 KB (6710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fba0edc28ab8f640e112e4fdc519e333ec69032813f950533b7bf30d73af83`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdcc5391528e5253d5f898bcee89d8a732e279acb5d1a25c439feb7236cfaf0f`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be41713a757a2c7f43ecb40044bca00ee66b943f1a25ad722839ce44383ca9d`  
		Last Modified: Fri, 07 Apr 2017 19:43:18 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe580a66c7618a3a8cd62d5e6e324d18efcb7147071fcedacb089f5cb2fa5240`  
		Last Modified: Fri, 07 Apr 2017 19:43:17 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.11-alpine`

```console
$ docker pull postgres@sha256:d6909cefbfb646100391809c11e09c0ccd62768b8438fc763d9f45b5b4a8a7f7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.11-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13499589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db1c965790f3afca1a43648a4f7c2691385ae34a1dca3ea45d77ef76c649e2cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_MAJOR=9.4
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_VERSION=9.4.11
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_SHA256=e3eb51d045c180b03d2de1f0c3af9356e10be49448e966ca01dfc2c6d1cc9d23
# Tue, 07 Mar 2017 23:50:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:50:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:50:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:50:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:50:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:17 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:19 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c18a3c8964dac6af66fbb8019f745c4a3a505b76fd2d9d1c2dd928254bbadd`  
		Last Modified: Tue, 07 Mar 2017 23:59:09 GMT  
		Size: 11.6 MB (11585312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b267450e72588146f59d8ff9380819020b3d94bb3cf2bbbfdf35eb4c350cbe`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 6.7 KB (6681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6caa9d3c92f9f5e51b3a9b3738ff299ca5ca2eb95b334f50a835318e29d9f19c`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd699c4e0041857e3692a1352646479562ddee9855bbca18a178c64ba637bff`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ca1281761eb38db42f86765d86cd272de721772587789b0ddfc3576bbf605d`  
		Last Modified: Fri, 07 Apr 2017 19:44:02 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249161d7adb8a8d7d173cb1c674ac2ea68fe593e013a3904030abca3665c89b3`  
		Last Modified: Fri, 07 Apr 2017 19:44:03 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:d6909cefbfb646100391809c11e09c0ccd62768b8438fc763d9f45b5b4a8a7f7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13499589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db1c965790f3afca1a43648a4f7c2691385ae34a1dca3ea45d77ef76c649e2cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_MAJOR=9.4
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_VERSION=9.4.11
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_SHA256=e3eb51d045c180b03d2de1f0c3af9356e10be49448e966ca01dfc2c6d1cc9d23
# Tue, 07 Mar 2017 23:50:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:50:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:50:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:50:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:50:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:17 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:19 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c18a3c8964dac6af66fbb8019f745c4a3a505b76fd2d9d1c2dd928254bbadd`  
		Last Modified: Tue, 07 Mar 2017 23:59:09 GMT  
		Size: 11.6 MB (11585312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b267450e72588146f59d8ff9380819020b3d94bb3cf2bbbfdf35eb4c350cbe`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 6.7 KB (6681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6caa9d3c92f9f5e51b3a9b3738ff299ca5ca2eb95b334f50a835318e29d9f19c`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd699c4e0041857e3692a1352646479562ddee9855bbca18a178c64ba637bff`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ca1281761eb38db42f86765d86cd272de721772587789b0ddfc3576bbf605d`  
		Last Modified: Fri, 07 Apr 2017 19:44:02 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249161d7adb8a8d7d173cb1c674ac2ea68fe593e013a3904030abca3665c89b3`  
		Last Modified: Fri, 07 Apr 2017 19:44:03 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.16`

```console
$ docker pull postgres@sha256:bcc0c90fadd00927440556771264de4de03c7a3475f6e1109dfe66a7b32f61a5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.16` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100855317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50544c487eb367af57228c01b454669e5a4e94f2d73592f5851af1fb82bb18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:40:28 GMT
ENV PG_MAJOR=9.3
# Tue, 21 Mar 2017 23:40:28 GMT
ENV PG_VERSION=9.3.16-1.pgdg80+1
# Tue, 21 Mar 2017 23:40:29 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:41:06 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:41:07 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:41:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:41:08 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:41:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:41:10 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:41:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:21 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:24 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a01dd4b2fc9af802a3e02a0185c8219ddb3e8b876413de6a5ffcb1015e48`  
		Last Modified: Fri, 24 Mar 2017 00:08:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58ac0efef385642578769b938580cbf0bf821f6cca701443b16d7bd9cf1f7bc`  
		Last Modified: Fri, 24 Mar 2017 00:08:23 GMT  
		Size: 41.2 MB (41174958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5b75bd9df19747253900f1675cdd94ee75958eab12be1acb14af5bc4fc31c5`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 6.5 KB (6531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd95a9a837c9a6b4949942953217f0c1a6996b06f03fb6ff44010d1beefdcc5`  
		Last Modified: Fri, 24 Mar 2017 00:08:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3117ec042bdb6ec952c50cee8a10e7aee7be5392aed49fe374e280a6f1b5b6b6`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0587eb78003dea987a1677e61959c85fe862147273c8e50388a043760bbd76`  
		Last Modified: Fri, 07 Apr 2017 19:44:46 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc5f9cf4b7b1e32369d924e96cfbad29ba977f762804d5f73d5dc34c349dfa`  
		Last Modified: Fri, 07 Apr 2017 19:44:46 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:bcc0c90fadd00927440556771264de4de03c7a3475f6e1109dfe66a7b32f61a5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100855317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50544c487eb367af57228c01b454669e5a4e94f2d73592f5851af1fb82bb18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:40:28 GMT
ENV PG_MAJOR=9.3
# Tue, 21 Mar 2017 23:40:28 GMT
ENV PG_VERSION=9.3.16-1.pgdg80+1
# Tue, 21 Mar 2017 23:40:29 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:41:06 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:41:07 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:41:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:41:08 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:41:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:41:10 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:41:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:21 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:24 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a01dd4b2fc9af802a3e02a0185c8219ddb3e8b876413de6a5ffcb1015e48`  
		Last Modified: Fri, 24 Mar 2017 00:08:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58ac0efef385642578769b938580cbf0bf821f6cca701443b16d7bd9cf1f7bc`  
		Last Modified: Fri, 24 Mar 2017 00:08:23 GMT  
		Size: 41.2 MB (41174958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5b75bd9df19747253900f1675cdd94ee75958eab12be1acb14af5bc4fc31c5`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 6.5 KB (6531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd95a9a837c9a6b4949942953217f0c1a6996b06f03fb6ff44010d1beefdcc5`  
		Last Modified: Fri, 24 Mar 2017 00:08:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3117ec042bdb6ec952c50cee8a10e7aee7be5392aed49fe374e280a6f1b5b6b6`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0587eb78003dea987a1677e61959c85fe862147273c8e50388a043760bbd76`  
		Last Modified: Fri, 07 Apr 2017 19:44:46 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc5f9cf4b7b1e32369d924e96cfbad29ba977f762804d5f73d5dc34c349dfa`  
		Last Modified: Fri, 07 Apr 2017 19:44:46 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.16-alpine`

```console
$ docker pull postgres@sha256:c6569acf708bc83f256a7e52d996d346d8ed766bf1a084cbd3c91936e14aaea4
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.16-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13217490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f059da9aecc9a2407afd1bb70d0305df542f39aa962b5147ff8a74f97b4819c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_MAJOR=9.3
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_VERSION=9.3.16
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_SHA256=845f5e4ac8cf026b6a77c5a180a2fe869f51e9d06acf8d0365b05505a2c66873
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:52:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:52:02 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:52:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:52:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:52:05 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:26 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:28 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d1e980580d9f579a793a4fe6ca708e19b24ec924ccb1499639649428bdb275`  
		Last Modified: Wed, 08 Mar 2017 00:00:34 GMT  
		Size: 11.3 MB (11303392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236ec5465be330f965a7ae1966e7ac4f4eadd4ce01db42bbddf0015cff70aca9`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5bbf428c85abd245e7b0444252f650dd1d7a821ac2724fd47c868a5a495188`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2c49c2c3be9a5c599c00e999a030f7966b1d8fae776192c87c978f04f08d83`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc30b90adcb515bf1439c4e20fe2be630063879441f140f1051cfabe2c385b7`  
		Last Modified: Fri, 07 Apr 2017 19:45:30 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a32c490fa16699c4f3fe8e569ad0c69027ac7d412c83ecbc69957a98b9d7c0`  
		Last Modified: Fri, 07 Apr 2017 19:45:31 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:c6569acf708bc83f256a7e52d996d346d8ed766bf1a084cbd3c91936e14aaea4
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13217490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f059da9aecc9a2407afd1bb70d0305df542f39aa962b5147ff8a74f97b4819c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_MAJOR=9.3
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_VERSION=9.3.16
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_SHA256=845f5e4ac8cf026b6a77c5a180a2fe869f51e9d06acf8d0365b05505a2c66873
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:52:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:52:02 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:52:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:52:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:52:05 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:26 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:28 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d1e980580d9f579a793a4fe6ca708e19b24ec924ccb1499639649428bdb275`  
		Last Modified: Wed, 08 Mar 2017 00:00:34 GMT  
		Size: 11.3 MB (11303392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236ec5465be330f965a7ae1966e7ac4f4eadd4ce01db42bbddf0015cff70aca9`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5bbf428c85abd245e7b0444252f650dd1d7a821ac2724fd47c868a5a495188`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2c49c2c3be9a5c599c00e999a030f7966b1d8fae776192c87c978f04f08d83`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc30b90adcb515bf1439c4e20fe2be630063879441f140f1051cfabe2c385b7`  
		Last Modified: Fri, 07 Apr 2017 19:45:30 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a32c490fa16699c4f3fe8e569ad0c69027ac7d412c83ecbc69957a98b9d7c0`  
		Last Modified: Fri, 07 Apr 2017 19:45:31 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.20`

```console
$ docker pull postgres@sha256:5518278ff152168954a04c168f9d16180f69aa401bb7a6455264ffd323273dc9
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.20` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100691648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7b979e77515354701b4fbfaf0c00247744eb8d5d90a00f1f49cb21a599c66f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:39:43 GMT
ENV PG_MAJOR=9.2
# Tue, 21 Mar 2017 23:39:43 GMT
ENV PG_VERSION=9.2.20-1.pgdg80+1
# Tue, 21 Mar 2017 23:39:44 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:40:20 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:40:22 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:40:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:40:23 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:40:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:40:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:40:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:30 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:33 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ddf7864eca2eefe09c48a9d68bdd7dccfa21511eb192fafb81b2ed2c6b086c`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645059b306b7095447a603ab500bd553fe3bbd48c8caaca89d679ab262a0589e`  
		Last Modified: Fri, 24 Mar 2017 00:06:48 GMT  
		Size: 41.0 MB (41011350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e03bbc5b789d0807f8e60366d1653e10386d36330e7d36e3852d13817e559d`  
		Last Modified: Fri, 24 Mar 2017 00:06:28 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db74ea88326303004cb41121cb655e9f200bd33cb5b5456d1981117bba4e066`  
		Last Modified: Fri, 24 Mar 2017 00:06:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dead0a6449edbaec264c3a580684c32e9f173bddf71ebf47737fae1f06b4f1`  
		Last Modified: Fri, 24 Mar 2017 00:06:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1662a75db466d3ec04148f0b0f140a6c3b99d5836d6e3c80555fc8d5e6d3de`  
		Last Modified: Fri, 07 Apr 2017 19:46:13 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848a856a478af2555f223a43db58ae0c90cc2b77b6d6008342f8a3a94261dc35`  
		Last Modified: Fri, 07 Apr 2017 19:46:13 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:5518278ff152168954a04c168f9d16180f69aa401bb7a6455264ffd323273dc9
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100691648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7b979e77515354701b4fbfaf0c00247744eb8d5d90a00f1f49cb21a599c66f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:39:43 GMT
ENV PG_MAJOR=9.2
# Tue, 21 Mar 2017 23:39:43 GMT
ENV PG_VERSION=9.2.20-1.pgdg80+1
# Tue, 21 Mar 2017 23:39:44 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:40:20 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:40:22 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:40:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:40:23 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:40:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:40:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:40:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:30 GMT
COPY file:e7038391d43a570dfa6f5c9fd1327eab0e66c902a643f547a29a71cbc660b950 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:33 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ddf7864eca2eefe09c48a9d68bdd7dccfa21511eb192fafb81b2ed2c6b086c`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645059b306b7095447a603ab500bd553fe3bbd48c8caaca89d679ab262a0589e`  
		Last Modified: Fri, 24 Mar 2017 00:06:48 GMT  
		Size: 41.0 MB (41011350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e03bbc5b789d0807f8e60366d1653e10386d36330e7d36e3852d13817e559d`  
		Last Modified: Fri, 24 Mar 2017 00:06:28 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db74ea88326303004cb41121cb655e9f200bd33cb5b5456d1981117bba4e066`  
		Last Modified: Fri, 24 Mar 2017 00:06:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dead0a6449edbaec264c3a580684c32e9f173bddf71ebf47737fae1f06b4f1`  
		Last Modified: Fri, 24 Mar 2017 00:06:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1662a75db466d3ec04148f0b0f140a6c3b99d5836d6e3c80555fc8d5e6d3de`  
		Last Modified: Fri, 07 Apr 2017 19:46:13 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848a856a478af2555f223a43db58ae0c90cc2b77b6d6008342f8a3a94261dc35`  
		Last Modified: Fri, 07 Apr 2017 19:46:13 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.20-alpine`

```console
$ docker pull postgres@sha256:b2ddde0b73dcaa1112ec28bdce468320d5599125a930a2fb9776fe161ad12ab0
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.20-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13056477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53ab9dd5a4733e1f61b1536d45f99902218272a2b4389f72419aa5bb89318f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_MAJOR=9.2
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_VERSION=9.2.20
# Fri, 03 Mar 2017 23:15:06 GMT
ENV PG_SHA256=0b8abdae8400cabea5587a726003c9dd71c73c049bdae523abc35f9312dd8f26
# Tue, 07 Mar 2017 23:52:08 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:52:09 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:53:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:53:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:53:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:53:59 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:54:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:54:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:54:01 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:35 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:37 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908cab65d826e3e5528a77aa78dd4095dbfa401aabe7f96e5a9582be7afc2506`  
		Last Modified: Wed, 08 Mar 2017 00:01:58 GMT  
		Size: 11.1 MB (11142443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98467d97f26c50371afa1081247ce58b5537819982efd768c3f7489123bb6706`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 6.4 KB (6441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeab08d17c64c29309ec77d9559ff3d3209942c67683a915641178f1a87216c1`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc12f9a571d32c40fc6da9a7279f40efd2b24241be47ff33c3f79b89e75f964d`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63e9ca61a483c64d9d8c38125bc3b8f0126c3a2d7a6d01971a03ffc62000f3b`  
		Last Modified: Fri, 07 Apr 2017 19:46:58 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e748771246279c92285e5e2be0e0aca9f1d615f2d97b825a009f50426a085b4`  
		Last Modified: Fri, 07 Apr 2017 19:46:58 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:b2ddde0b73dcaa1112ec28bdce468320d5599125a930a2fb9776fe161ad12ab0
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13056477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53ab9dd5a4733e1f61b1536d45f99902218272a2b4389f72419aa5bb89318f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_MAJOR=9.2
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_VERSION=9.2.20
# Fri, 03 Mar 2017 23:15:06 GMT
ENV PG_SHA256=0b8abdae8400cabea5587a726003c9dd71c73c049bdae523abc35f9312dd8f26
# Tue, 07 Mar 2017 23:52:08 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:52:09 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:53:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:53:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:53:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:53:59 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:54:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:54:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:54:01 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 07 Apr 2017 19:38:35 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:38:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:38:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:38:37 GMT
EXPOSE 5432/tcp
# Fri, 07 Apr 2017 19:38:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908cab65d826e3e5528a77aa78dd4095dbfa401aabe7f96e5a9582be7afc2506`  
		Last Modified: Wed, 08 Mar 2017 00:01:58 GMT  
		Size: 11.1 MB (11142443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98467d97f26c50371afa1081247ce58b5537819982efd768c3f7489123bb6706`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 6.4 KB (6441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeab08d17c64c29309ec77d9559ff3d3209942c67683a915641178f1a87216c1`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc12f9a571d32c40fc6da9a7279f40efd2b24241be47ff33c3f79b89e75f964d`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63e9ca61a483c64d9d8c38125bc3b8f0126c3a2d7a6d01971a03ffc62000f3b`  
		Last Modified: Fri, 07 Apr 2017 19:46:58 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e748771246279c92285e5e2be0e0aca9f1d615f2d97b825a009f50426a085b4`  
		Last Modified: Fri, 07 Apr 2017 19:46:58 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
