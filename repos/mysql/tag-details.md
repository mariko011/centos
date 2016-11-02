<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:8.0.0`](#mysql800)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8`](#mysql8)
-	[`mysql:5.7.16`](#mysql5716)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5`](#mysql5)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:5.6.34`](#mysql5634)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.5.53`](#mysql5553)
-	[`mysql:5.5`](#mysql55)

## `mysql:8.0.0`

```console
$ docker pull mysql@sha256:52f48529e1be1ef7a6bc538b2f7b5d3f951a0b98d31f849cc055ed0e5c75d0d1
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129651779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f217937eb78166561cb12b75a7fce7bb254a9a01505f1e988fe428471139f83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:06:34 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 21 Oct 2016 22:06:35 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Fri, 21 Oct 2016 22:06:36 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:06:57 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 01 Nov 2016 23:37:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 01 Nov 2016 23:37:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 01 Nov 2016 23:37:21 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:37:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:37:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:37:23 GMT
EXPOSE 3306/tcp
# Tue, 01 Nov 2016 23:37:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730202b1d7714f065ddb4bb5e5f2f79bca4276f4b499331b835c7c251f43552`  
		Last Modified: Fri, 21 Oct 2016 22:07:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a542801f024741405fe7d97f990dcfb7e1921f0741bdf25d081bb13e33c2fda7`  
		Last Modified: Fri, 21 Oct 2016 22:07:32 GMT  
		Size: 68.8 MB (68810174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e89a9c3d239cd5ac8643b8cde9d3986a0b3d84875015a100e3392d15f79b24`  
		Last Modified: Tue, 01 Nov 2016 23:37:44 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b537e06a94f6bbbcf76ec3d1412882f4b2fb73def96ce22da9c9416262826dd3`  
		Last Modified: Tue, 01 Nov 2016 23:37:44 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe9feeffa80db6dbecd8746bc0153e81563b5b176a2f52c7b293f76675fc73e`  
		Last Modified: Tue, 01 Nov 2016 23:37:45 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:52f48529e1be1ef7a6bc538b2f7b5d3f951a0b98d31f849cc055ed0e5c75d0d1
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129651779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f217937eb78166561cb12b75a7fce7bb254a9a01505f1e988fe428471139f83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:06:34 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 21 Oct 2016 22:06:35 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Fri, 21 Oct 2016 22:06:36 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:06:57 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 01 Nov 2016 23:37:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 01 Nov 2016 23:37:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 01 Nov 2016 23:37:21 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:37:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:37:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:37:23 GMT
EXPOSE 3306/tcp
# Tue, 01 Nov 2016 23:37:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730202b1d7714f065ddb4bb5e5f2f79bca4276f4b499331b835c7c251f43552`  
		Last Modified: Fri, 21 Oct 2016 22:07:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a542801f024741405fe7d97f990dcfb7e1921f0741bdf25d081bb13e33c2fda7`  
		Last Modified: Fri, 21 Oct 2016 22:07:32 GMT  
		Size: 68.8 MB (68810174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e89a9c3d239cd5ac8643b8cde9d3986a0b3d84875015a100e3392d15f79b24`  
		Last Modified: Tue, 01 Nov 2016 23:37:44 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b537e06a94f6bbbcf76ec3d1412882f4b2fb73def96ce22da9c9416262826dd3`  
		Last Modified: Tue, 01 Nov 2016 23:37:44 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe9feeffa80db6dbecd8746bc0153e81563b5b176a2f52c7b293f76675fc73e`  
		Last Modified: Tue, 01 Nov 2016 23:37:45 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:52f48529e1be1ef7a6bc538b2f7b5d3f951a0b98d31f849cc055ed0e5c75d0d1
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129651779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f217937eb78166561cb12b75a7fce7bb254a9a01505f1e988fe428471139f83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:06:34 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 21 Oct 2016 22:06:35 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Fri, 21 Oct 2016 22:06:36 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:06:57 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 01 Nov 2016 23:37:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 01 Nov 2016 23:37:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 01 Nov 2016 23:37:21 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:37:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:37:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:37:23 GMT
EXPOSE 3306/tcp
# Tue, 01 Nov 2016 23:37:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730202b1d7714f065ddb4bb5e5f2f79bca4276f4b499331b835c7c251f43552`  
		Last Modified: Fri, 21 Oct 2016 22:07:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a542801f024741405fe7d97f990dcfb7e1921f0741bdf25d081bb13e33c2fda7`  
		Last Modified: Fri, 21 Oct 2016 22:07:32 GMT  
		Size: 68.8 MB (68810174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e89a9c3d239cd5ac8643b8cde9d3986a0b3d84875015a100e3392d15f79b24`  
		Last Modified: Tue, 01 Nov 2016 23:37:44 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b537e06a94f6bbbcf76ec3d1412882f4b2fb73def96ce22da9c9416262826dd3`  
		Last Modified: Tue, 01 Nov 2016 23:37:44 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe9feeffa80db6dbecd8746bc0153e81563b5b176a2f52c7b293f76675fc73e`  
		Last Modified: Tue, 01 Nov 2016 23:37:45 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.16`

```console
$ docker pull mysql@sha256:2333b96e5ebfcbdb20f10654e87f7f4421a0c2d29ff8fbf0696a57055ae1ce7f
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.16` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131616844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d2ac54c707a80be94ae93c15734c0700f36ea6f5f3e354ab8c791d108f6e81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 21 Oct 2016 22:02:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:02:24 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 01 Nov 2016 23:37:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 01 Nov 2016 23:37:25 GMT
VOLUME [/var/lib/mysql]
# Tue, 01 Nov 2016 23:37:26 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:37:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:37:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:37:28 GMT
EXPOSE 3306/tcp
# Tue, 01 Nov 2016 23:37:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe147754144da915c0218c231a707685df2694255c7e4a40d0ec7b88a227864`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0de826b14cd6e4c7878ab071e4a52708aa3b60ba6a6e2757afe33b06c47283`  
		Last Modified: Fri, 21 Oct 2016 22:02:58 GMT  
		Size: 70.8 MB (70775189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df77a59438293246dfe41d8d7576860c3d0c5f1fd6866c3d4bfb35da7f98453`  
		Last Modified: Tue, 01 Nov 2016 23:38:27 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc0f49ce0c924c32c0ce0cd64e613e8216fb364c63ec9f13f74ce943c9bb441`  
		Last Modified: Tue, 01 Nov 2016 23:38:26 GMT  
		Size: 1.8 KB (1824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b806859ce6f420c3c69979ed73853fbadb50cf60a93cb9ada7e1eb647903e3dc`  
		Last Modified: Tue, 01 Nov 2016 23:38:27 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:2333b96e5ebfcbdb20f10654e87f7f4421a0c2d29ff8fbf0696a57055ae1ce7f
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131616844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d2ac54c707a80be94ae93c15734c0700f36ea6f5f3e354ab8c791d108f6e81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 21 Oct 2016 22:02:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:02:24 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 01 Nov 2016 23:37:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 01 Nov 2016 23:37:25 GMT
VOLUME [/var/lib/mysql]
# Tue, 01 Nov 2016 23:37:26 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:37:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:37:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:37:28 GMT
EXPOSE 3306/tcp
# Tue, 01 Nov 2016 23:37:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe147754144da915c0218c231a707685df2694255c7e4a40d0ec7b88a227864`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0de826b14cd6e4c7878ab071e4a52708aa3b60ba6a6e2757afe33b06c47283`  
		Last Modified: Fri, 21 Oct 2016 22:02:58 GMT  
		Size: 70.8 MB (70775189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df77a59438293246dfe41d8d7576860c3d0c5f1fd6866c3d4bfb35da7f98453`  
		Last Modified: Tue, 01 Nov 2016 23:38:27 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc0f49ce0c924c32c0ce0cd64e613e8216fb364c63ec9f13f74ce943c9bb441`  
		Last Modified: Tue, 01 Nov 2016 23:38:26 GMT  
		Size: 1.8 KB (1824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b806859ce6f420c3c69979ed73853fbadb50cf60a93cb9ada7e1eb647903e3dc`  
		Last Modified: Tue, 01 Nov 2016 23:38:27 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:83d00ccce1f44f0e101d33672535556eb55cc890ee122099aac27d37b5bda6d8
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131616816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6245a569970e3960906351ab9878266a5b760f527ee057a8f9ca595dcadaae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 21 Oct 2016 22:02:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:02:24 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:02:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 21 Oct 2016 22:02:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:21:02 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:04 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe147754144da915c0218c231a707685df2694255c7e4a40d0ec7b88a227864`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0de826b14cd6e4c7878ab071e4a52708aa3b60ba6a6e2757afe33b06c47283`  
		Last Modified: Fri, 21 Oct 2016 22:02:58 GMT  
		Size: 70.8 MB (70775189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f101168f9e7dbcf72b094a2ef37d32a7f1645a0b92e853e3dbd8412a2a75ee`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8890f85049ea738767735fc167c769f3918558ae36b314e12b52fa4d03d6b367`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c07e303ec7ae0612f0c91b7a4f4413551783e4db212bf0a4a451bd52958fad`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:2333b96e5ebfcbdb20f10654e87f7f4421a0c2d29ff8fbf0696a57055ae1ce7f
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131616844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d2ac54c707a80be94ae93c15734c0700f36ea6f5f3e354ab8c791d108f6e81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 21 Oct 2016 22:02:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:02:24 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 01 Nov 2016 23:37:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 01 Nov 2016 23:37:25 GMT
VOLUME [/var/lib/mysql]
# Tue, 01 Nov 2016 23:37:26 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:37:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:37:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:37:28 GMT
EXPOSE 3306/tcp
# Tue, 01 Nov 2016 23:37:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe147754144da915c0218c231a707685df2694255c7e4a40d0ec7b88a227864`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0de826b14cd6e4c7878ab071e4a52708aa3b60ba6a6e2757afe33b06c47283`  
		Last Modified: Fri, 21 Oct 2016 22:02:58 GMT  
		Size: 70.8 MB (70775189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df77a59438293246dfe41d8d7576860c3d0c5f1fd6866c3d4bfb35da7f98453`  
		Last Modified: Tue, 01 Nov 2016 23:38:27 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc0f49ce0c924c32c0ce0cd64e613e8216fb364c63ec9f13f74ce943c9bb441`  
		Last Modified: Tue, 01 Nov 2016 23:38:26 GMT  
		Size: 1.8 KB (1824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b806859ce6f420c3c69979ed73853fbadb50cf60a93cb9ada7e1eb647903e3dc`  
		Last Modified: Tue, 01 Nov 2016 23:38:27 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.34`

```console
$ docker pull mysql@sha256:9da93305efb430b97c8ef7cd9846f142bae56ff0da3351f18e3ed5fc0c7ed16a
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.34` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112608311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf1762429b67db4d65619b9b70f03296cade3f9b47c1cb8486da9f13b130f1b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:05:24 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 21 Oct 2016 22:05:24 GMT
ENV MYSQL_VERSION=5.6.34-1debian8
# Fri, 21 Oct 2016 22:05:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:05:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 01 Nov 2016 23:37:29 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 01 Nov 2016 23:37:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 01 Nov 2016 23:37:30 GMT
COPY file:cda007baf84395bb3d546732cef80265371cef33ce2575a909b2c9e58167e3d6 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:37:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:37:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:37:32 GMT
EXPOSE 3306/tcp
# Tue, 01 Nov 2016 23:37:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892bfb27c685130356345f97998fa7c948e84c2ddc76e95415b456e13ee962e2`  
		Last Modified: Fri, 21 Oct 2016 22:05:58 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02874ec7a2dc7e1c850a96836930a9da47b1700c8e7b6c1f0ee865a0d6a97020`  
		Last Modified: Fri, 21 Oct 2016 22:06:14 GMT  
		Size: 51.8 MB (51766335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b7332e5e87a331ad1fbc56d20f5298a9ffb21577a9d20166317b059d774248`  
		Last Modified: Tue, 01 Nov 2016 23:39:22 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69963f226ab11a666a86049994bc07ff68f854714e2573a96185bf4d7f1068d`  
		Last Modified: Tue, 01 Nov 2016 23:39:23 GMT  
		Size: 1.9 KB (1868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac021a23e0a16aa11c7d50132ec4b79302ecbdbc0fdf3ae93127dbc3268debc`  
		Last Modified: Tue, 01 Nov 2016 23:39:22 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:9da93305efb430b97c8ef7cd9846f142bae56ff0da3351f18e3ed5fc0c7ed16a
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112608311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf1762429b67db4d65619b9b70f03296cade3f9b47c1cb8486da9f13b130f1b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:05:24 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 21 Oct 2016 22:05:24 GMT
ENV MYSQL_VERSION=5.6.34-1debian8
# Fri, 21 Oct 2016 22:05:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:05:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 01 Nov 2016 23:37:29 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 01 Nov 2016 23:37:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 01 Nov 2016 23:37:30 GMT
COPY file:cda007baf84395bb3d546732cef80265371cef33ce2575a909b2c9e58167e3d6 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:37:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:37:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:37:32 GMT
EXPOSE 3306/tcp
# Tue, 01 Nov 2016 23:37:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892bfb27c685130356345f97998fa7c948e84c2ddc76e95415b456e13ee962e2`  
		Last Modified: Fri, 21 Oct 2016 22:05:58 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02874ec7a2dc7e1c850a96836930a9da47b1700c8e7b6c1f0ee865a0d6a97020`  
		Last Modified: Fri, 21 Oct 2016 22:06:14 GMT  
		Size: 51.8 MB (51766335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b7332e5e87a331ad1fbc56d20f5298a9ffb21577a9d20166317b059d774248`  
		Last Modified: Tue, 01 Nov 2016 23:39:22 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69963f226ab11a666a86049994bc07ff68f854714e2573a96185bf4d7f1068d`  
		Last Modified: Tue, 01 Nov 2016 23:39:23 GMT  
		Size: 1.9 KB (1868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac021a23e0a16aa11c7d50132ec4b79302ecbdbc0fdf3ae93127dbc3268debc`  
		Last Modified: Tue, 01 Nov 2016 23:39:22 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.53`

```console
$ docker pull mysql@sha256:65b5646dc1b1522ab992ab833604385332c93049d453ddb0a9af0d15628128fb
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.53` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87395564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f468d5c6501a8a4d4b1a033ffbb0f3ac40aa3ec2abd206eedd8940da6ed2e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:03:44 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:03:49 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:03:50 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 21 Oct 2016 22:03:50 GMT
ENV MYSQL_VERSION=5.5.53
# Fri, 21 Oct 2016 22:04:40 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 21 Oct 2016 22:04:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 21 Oct 2016 22:04:41 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 21 Oct 2016 22:04:42 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:04:43 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:21:08 GMT
COPY file:6043e9c7818db478624a89023dcfb9c06258577c0dc050e435bfae209bfe73db in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:09 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4485a0f7ab0cc305020e7825064ab4958e3778727479c474a64e4a01fa91ecd`  
		Last Modified: Fri, 21 Oct 2016 22:05:01 GMT  
		Size: 8.2 MB (8219804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aefc1bb8d8780195b137957929c4020a42a9221daddea1397a3d31901ddc5c`  
		Last Modified: Fri, 21 Oct 2016 22:04:57 GMT  
		Size: 100.8 KB (100767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7412e4c8021ea4ce4afed10081ccc5b42d9276782fa4013f7e75a7f3bce8d9`  
		Last Modified: Fri, 21 Oct 2016 22:05:05 GMT  
		Size: 26.5 MB (26500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712158d59cb9b0f523fb0664c5174eaa4ad757e035789797fd0d58566fb706f2`  
		Last Modified: Fri, 21 Oct 2016 22:04:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4883770aaa62640fa266a9a1301a8c8c57671d057134ce7798cc5b0b6438154`  
		Last Modified: Fri, 21 Oct 2016 22:04:55 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c73e0883df503782a7bd9eda034cbe70a92abcbd43643e05cad7f7f822a34d5`  
		Last Modified: Mon, 31 Oct 2016 22:23:21 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b355016737a871d448fcb231e4aebb7b2320392dbabb2f314a4dc8fb489b0af`  
		Last Modified: Mon, 31 Oct 2016 22:23:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:65b5646dc1b1522ab992ab833604385332c93049d453ddb0a9af0d15628128fb
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87395564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f468d5c6501a8a4d4b1a033ffbb0f3ac40aa3ec2abd206eedd8940da6ed2e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:03:44 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:03:49 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:03:50 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 21 Oct 2016 22:03:50 GMT
ENV MYSQL_VERSION=5.5.53
# Fri, 21 Oct 2016 22:04:40 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 21 Oct 2016 22:04:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 21 Oct 2016 22:04:41 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 21 Oct 2016 22:04:42 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:04:43 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:21:08 GMT
COPY file:6043e9c7818db478624a89023dcfb9c06258577c0dc050e435bfae209bfe73db in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:09 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4485a0f7ab0cc305020e7825064ab4958e3778727479c474a64e4a01fa91ecd`  
		Last Modified: Fri, 21 Oct 2016 22:05:01 GMT  
		Size: 8.2 MB (8219804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aefc1bb8d8780195b137957929c4020a42a9221daddea1397a3d31901ddc5c`  
		Last Modified: Fri, 21 Oct 2016 22:04:57 GMT  
		Size: 100.8 KB (100767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7412e4c8021ea4ce4afed10081ccc5b42d9276782fa4013f7e75a7f3bce8d9`  
		Last Modified: Fri, 21 Oct 2016 22:05:05 GMT  
		Size: 26.5 MB (26500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712158d59cb9b0f523fb0664c5174eaa4ad757e035789797fd0d58566fb706f2`  
		Last Modified: Fri, 21 Oct 2016 22:04:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4883770aaa62640fa266a9a1301a8c8c57671d057134ce7798cc5b0b6438154`  
		Last Modified: Fri, 21 Oct 2016 22:04:55 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c73e0883df503782a7bd9eda034cbe70a92abcbd43643e05cad7f7f822a34d5`  
		Last Modified: Mon, 31 Oct 2016 22:23:21 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b355016737a871d448fcb231e4aebb7b2320392dbabb2f314a4dc8fb489b0af`  
		Last Modified: Mon, 31 Oct 2016 22:23:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
