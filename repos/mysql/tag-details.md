<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:8.0.2`](#mysql802)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8`](#mysql8)
-	[`mysql:5.7.19`](#mysql5719)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5`](#mysql5)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:5.6.37`](#mysql5637)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.5.57`](#mysql5557)
-	[`mysql:5.5`](#mysql55)

## `mysql:8.0.2`

```console
$ docker pull mysql@sha256:7fa70f1a46e2f2ac3e71550dd89beedc3e70f64618a905df54120ccc9e52d62b
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91849898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70995c269f2d63b4b6dd17030dbcc33da81eb8a2030f3e767f127a0629151b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:16:47 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 08 Sep 2017 08:16:47 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 08 Sep 2017 08:16:48 GMT
ENV MYSQL_VERSION=8.0.2-dmr-1debian8
# Fri, 08 Sep 2017 08:16:49 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 08 Sep 2017 08:17:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:17:07 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:17:07 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 08 Sep 2017 08:17:08 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:17:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:17:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:17:09 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:17:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6a01e515fb0614e7d5634dd0f5be6d6afcbd53e0da7d1812aabcded981f620`  
		Last Modified: Fri, 08 Sep 2017 23:38:09 GMT  
		Size: 10.7 MB (10710801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71e1163fa7ee5c0bd152d81910fecc55e0e0f6117ee0dd56e2bc2f82802b078`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a124ea6e13221edcd8c9d424deb952b712bb9eb1ed59b4707fafa7915e3e03b6`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9175712cc04c99dd5460b00e5b11ff0d737a0cd5308f01d97c247bc2e201eec2`  
		Last Modified: Fri, 08 Sep 2017 23:38:08 GMT  
		Size: 27.2 MB (27215384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36580fef7d40bba1fe65b1e69e20436e173086cb369a9d8f32bf2739442a741`  
		Last Modified: Fri, 08 Sep 2017 23:38:01 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0614c1815b6965a7f30afee02e6e56568bce85df12a308ac45fa93e6c80168`  
		Last Modified: Fri, 08 Sep 2017 23:38:01 GMT  
		Size: 2.7 KB (2732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a5db89c5c8d100e9cd1964710f90b6895e945d80d65f492131ae302c36bf9c`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:7fa70f1a46e2f2ac3e71550dd89beedc3e70f64618a905df54120ccc9e52d62b
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91849898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70995c269f2d63b4b6dd17030dbcc33da81eb8a2030f3e767f127a0629151b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:16:47 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 08 Sep 2017 08:16:47 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 08 Sep 2017 08:16:48 GMT
ENV MYSQL_VERSION=8.0.2-dmr-1debian8
# Fri, 08 Sep 2017 08:16:49 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 08 Sep 2017 08:17:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:17:07 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:17:07 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 08 Sep 2017 08:17:08 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:17:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:17:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:17:09 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:17:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6a01e515fb0614e7d5634dd0f5be6d6afcbd53e0da7d1812aabcded981f620`  
		Last Modified: Fri, 08 Sep 2017 23:38:09 GMT  
		Size: 10.7 MB (10710801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71e1163fa7ee5c0bd152d81910fecc55e0e0f6117ee0dd56e2bc2f82802b078`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a124ea6e13221edcd8c9d424deb952b712bb9eb1ed59b4707fafa7915e3e03b6`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9175712cc04c99dd5460b00e5b11ff0d737a0cd5308f01d97c247bc2e201eec2`  
		Last Modified: Fri, 08 Sep 2017 23:38:08 GMT  
		Size: 27.2 MB (27215384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36580fef7d40bba1fe65b1e69e20436e173086cb369a9d8f32bf2739442a741`  
		Last Modified: Fri, 08 Sep 2017 23:38:01 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0614c1815b6965a7f30afee02e6e56568bce85df12a308ac45fa93e6c80168`  
		Last Modified: Fri, 08 Sep 2017 23:38:01 GMT  
		Size: 2.7 KB (2732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a5db89c5c8d100e9cd1964710f90b6895e945d80d65f492131ae302c36bf9c`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:7fa70f1a46e2f2ac3e71550dd89beedc3e70f64618a905df54120ccc9e52d62b
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91849898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70995c269f2d63b4b6dd17030dbcc33da81eb8a2030f3e767f127a0629151b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:16:47 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 08 Sep 2017 08:16:47 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 08 Sep 2017 08:16:48 GMT
ENV MYSQL_VERSION=8.0.2-dmr-1debian8
# Fri, 08 Sep 2017 08:16:49 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 08 Sep 2017 08:17:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:17:07 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:17:07 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 08 Sep 2017 08:17:08 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:17:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:17:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:17:09 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:17:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6a01e515fb0614e7d5634dd0f5be6d6afcbd53e0da7d1812aabcded981f620`  
		Last Modified: Fri, 08 Sep 2017 23:38:09 GMT  
		Size: 10.7 MB (10710801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71e1163fa7ee5c0bd152d81910fecc55e0e0f6117ee0dd56e2bc2f82802b078`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a124ea6e13221edcd8c9d424deb952b712bb9eb1ed59b4707fafa7915e3e03b6`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9175712cc04c99dd5460b00e5b11ff0d737a0cd5308f01d97c247bc2e201eec2`  
		Last Modified: Fri, 08 Sep 2017 23:38:08 GMT  
		Size: 27.2 MB (27215384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36580fef7d40bba1fe65b1e69e20436e173086cb369a9d8f32bf2739442a741`  
		Last Modified: Fri, 08 Sep 2017 23:38:01 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0614c1815b6965a7f30afee02e6e56568bce85df12a308ac45fa93e6c80168`  
		Last Modified: Fri, 08 Sep 2017 23:38:01 GMT  
		Size: 2.7 KB (2732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a5db89c5c8d100e9cd1964710f90b6895e945d80d65f492131ae302c36bf9c`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.19`

```console
$ docker pull mysql@sha256:790b7b18b832822ef400e44ad9fac885a746db1a7028ec52325730cf9b831753
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.19` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141d24fea983762df4ac56412efa996064e1db106eca2e2c150d821944b82a1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:16:47 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 08 Sep 2017 08:17:15 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 08 Sep 2017 08:17:15 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Fri, 08 Sep 2017 08:17:16 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 08 Sep 2017 08:17:45 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:17:46 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 08:17:47 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:17:47 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:17:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:17:48 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:17:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6a01e515fb0614e7d5634dd0f5be6d6afcbd53e0da7d1812aabcded981f620`  
		Last Modified: Fri, 08 Sep 2017 23:38:09 GMT  
		Size: 10.7 MB (10710801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71e1163fa7ee5c0bd152d81910fecc55e0e0f6117ee0dd56e2bc2f82802b078`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1a568fa442b647dec76552a6fccc0e5ee563bfa5b067078d409c89baac0f64`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a69cecc1734bd86cecf3654bb9762bf95e2b9745df396ca2c3a2fbc8e03e51`  
		Last Modified: Fri, 08 Sep 2017 23:38:53 GMT  
		Size: 79.6 MB (79609834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9759a0f979a1818d3356cf00d8ac2d06fbd2883854ec2a1e9552c61155fc9398`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f71dac6110f586008b1a18a9d0836775fb8fdf41ae5939b36f6e292962a6a2b`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 2.7 KB (2725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f37de543925e737c644c32823540883a1921d64f597e2bd3857edc6f576d79`  
		Last Modified: Fri, 08 Sep 2017 23:38:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:790b7b18b832822ef400e44ad9fac885a746db1a7028ec52325730cf9b831753
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141d24fea983762df4ac56412efa996064e1db106eca2e2c150d821944b82a1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:16:47 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 08 Sep 2017 08:17:15 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 08 Sep 2017 08:17:15 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Fri, 08 Sep 2017 08:17:16 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 08 Sep 2017 08:17:45 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:17:46 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 08:17:47 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:17:47 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:17:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:17:48 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:17:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6a01e515fb0614e7d5634dd0f5be6d6afcbd53e0da7d1812aabcded981f620`  
		Last Modified: Fri, 08 Sep 2017 23:38:09 GMT  
		Size: 10.7 MB (10710801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71e1163fa7ee5c0bd152d81910fecc55e0e0f6117ee0dd56e2bc2f82802b078`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1a568fa442b647dec76552a6fccc0e5ee563bfa5b067078d409c89baac0f64`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a69cecc1734bd86cecf3654bb9762bf95e2b9745df396ca2c3a2fbc8e03e51`  
		Last Modified: Fri, 08 Sep 2017 23:38:53 GMT  
		Size: 79.6 MB (79609834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9759a0f979a1818d3356cf00d8ac2d06fbd2883854ec2a1e9552c61155fc9398`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f71dac6110f586008b1a18a9d0836775fb8fdf41ae5939b36f6e292962a6a2b`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 2.7 KB (2725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f37de543925e737c644c32823540883a1921d64f597e2bd3857edc6f576d79`  
		Last Modified: Fri, 08 Sep 2017 23:38:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:790b7b18b832822ef400e44ad9fac885a746db1a7028ec52325730cf9b831753
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141d24fea983762df4ac56412efa996064e1db106eca2e2c150d821944b82a1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:16:47 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 08 Sep 2017 08:17:15 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 08 Sep 2017 08:17:15 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Fri, 08 Sep 2017 08:17:16 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 08 Sep 2017 08:17:45 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:17:46 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 08:17:47 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:17:47 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:17:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:17:48 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:17:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6a01e515fb0614e7d5634dd0f5be6d6afcbd53e0da7d1812aabcded981f620`  
		Last Modified: Fri, 08 Sep 2017 23:38:09 GMT  
		Size: 10.7 MB (10710801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71e1163fa7ee5c0bd152d81910fecc55e0e0f6117ee0dd56e2bc2f82802b078`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1a568fa442b647dec76552a6fccc0e5ee563bfa5b067078d409c89baac0f64`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a69cecc1734bd86cecf3654bb9762bf95e2b9745df396ca2c3a2fbc8e03e51`  
		Last Modified: Fri, 08 Sep 2017 23:38:53 GMT  
		Size: 79.6 MB (79609834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9759a0f979a1818d3356cf00d8ac2d06fbd2883854ec2a1e9552c61155fc9398`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f71dac6110f586008b1a18a9d0836775fb8fdf41ae5939b36f6e292962a6a2b`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 2.7 KB (2725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f37de543925e737c644c32823540883a1921d64f597e2bd3857edc6f576d79`  
		Last Modified: Fri, 08 Sep 2017 23:38:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:790b7b18b832822ef400e44ad9fac885a746db1a7028ec52325730cf9b831753
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141d24fea983762df4ac56412efa996064e1db106eca2e2c150d821944b82a1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:16:47 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 08 Sep 2017 08:17:15 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 08 Sep 2017 08:17:15 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Fri, 08 Sep 2017 08:17:16 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 08 Sep 2017 08:17:45 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:17:46 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 08:17:47 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:17:47 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:17:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:17:48 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:17:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6a01e515fb0614e7d5634dd0f5be6d6afcbd53e0da7d1812aabcded981f620`  
		Last Modified: Fri, 08 Sep 2017 23:38:09 GMT  
		Size: 10.7 MB (10710801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71e1163fa7ee5c0bd152d81910fecc55e0e0f6117ee0dd56e2bc2f82802b078`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1a568fa442b647dec76552a6fccc0e5ee563bfa5b067078d409c89baac0f64`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a69cecc1734bd86cecf3654bb9762bf95e2b9745df396ca2c3a2fbc8e03e51`  
		Last Modified: Fri, 08 Sep 2017 23:38:53 GMT  
		Size: 79.6 MB (79609834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9759a0f979a1818d3356cf00d8ac2d06fbd2883854ec2a1e9552c61155fc9398`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f71dac6110f586008b1a18a9d0836775fb8fdf41ae5939b36f6e292962a6a2b`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 2.7 KB (2725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f37de543925e737c644c32823540883a1921d64f597e2bd3857edc6f576d79`  
		Last Modified: Fri, 08 Sep 2017 23:38:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.37`

```console
$ docker pull mysql@sha256:939db72743e382bc4b59f419d8384a279fd371c97e7aae4f0f22038ce2de33f7
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.37` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104841650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b7e4bf468d4aae3b7721676f84efbf2bc9273628c7137395e17c77e406d945`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:18:09 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:18:13 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 08 Sep 2017 08:18:13 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 08 Sep 2017 08:18:14 GMT
ENV MYSQL_VERSION=5.6.37-1debian8
# Fri, 08 Sep 2017 08:18:14 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 08 Sep 2017 08:18:40 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:18:41 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 08:18:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:18:42 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:18:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:18:43 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:18:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c67bf42bf024e0fd6e84e16795b135883c7af257dd76090b525fbaecc9ecb5`  
		Last Modified: Fri, 08 Sep 2017 23:39:37 GMT  
		Size: 8.3 MB (8255771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe78b1c808fd46067444efd9c795c2468674fda29523a98b311eac18ac3696b0`  
		Last Modified: Fri, 08 Sep 2017 23:39:30 GMT  
		Size: 19.2 KB (19201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b0187b9792c078d95c834e56aad41d3528fcad301f6e40c81aead8c639915b`  
		Last Modified: Fri, 08 Sep 2017 23:39:30 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76af2ad193b591abdaf758300b317d16267ee9ca32a14f06d834b32d5149ae05`  
		Last Modified: Fri, 08 Sep 2017 23:39:39 GMT  
		Size: 42.7 MB (42662353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99d40e12cc167d3ab972101bdd123851aad9f4d1393a5aa05efa7e084a00d87`  
		Last Modified: Fri, 08 Sep 2017 23:39:30 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e55b49249e0fed8bd23f74eb7432b18c7ad2c6a3f46e644499aee6302271432`  
		Last Modified: Fri, 08 Sep 2017 23:39:30 GMT  
		Size: 2.6 KB (2588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f5140cc37c83d11ebe722846000f57beb4ec332d9e646bcc72bd9b406c77a7`  
		Last Modified: Fri, 08 Sep 2017 23:39:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:939db72743e382bc4b59f419d8384a279fd371c97e7aae4f0f22038ce2de33f7
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104841650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b7e4bf468d4aae3b7721676f84efbf2bc9273628c7137395e17c77e406d945`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:18:09 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:18:13 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 08 Sep 2017 08:18:13 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 08 Sep 2017 08:18:14 GMT
ENV MYSQL_VERSION=5.6.37-1debian8
# Fri, 08 Sep 2017 08:18:14 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 08 Sep 2017 08:18:40 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:18:41 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 08:18:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:18:42 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:18:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:18:43 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:18:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c67bf42bf024e0fd6e84e16795b135883c7af257dd76090b525fbaecc9ecb5`  
		Last Modified: Fri, 08 Sep 2017 23:39:37 GMT  
		Size: 8.3 MB (8255771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe78b1c808fd46067444efd9c795c2468674fda29523a98b311eac18ac3696b0`  
		Last Modified: Fri, 08 Sep 2017 23:39:30 GMT  
		Size: 19.2 KB (19201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b0187b9792c078d95c834e56aad41d3528fcad301f6e40c81aead8c639915b`  
		Last Modified: Fri, 08 Sep 2017 23:39:30 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76af2ad193b591abdaf758300b317d16267ee9ca32a14f06d834b32d5149ae05`  
		Last Modified: Fri, 08 Sep 2017 23:39:39 GMT  
		Size: 42.7 MB (42662353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99d40e12cc167d3ab972101bdd123851aad9f4d1393a5aa05efa7e084a00d87`  
		Last Modified: Fri, 08 Sep 2017 23:39:30 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e55b49249e0fed8bd23f74eb7432b18c7ad2c6a3f46e644499aee6302271432`  
		Last Modified: Fri, 08 Sep 2017 23:39:30 GMT  
		Size: 2.6 KB (2588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f5140cc37c83d11ebe722846000f57beb4ec332d9e646bcc72bd9b406c77a7`  
		Last Modified: Fri, 08 Sep 2017 23:39:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.57`

```console
$ docker pull mysql@sha256:2fe765f4188b5f33258d1fee8c818aa8f5930d9ac442ab18579c7bbe6c756d4a
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.57` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89761295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:428e13bd4f1e6d8c4828cc28bd13415867b96193ccff43c6a0eb18d279e635c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:19:04 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:19:18 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:19:18 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 08 Sep 2017 08:19:18 GMT
ENV MYSQL_VERSION=5.5.57
# Fri, 08 Sep 2017 08:20:15 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 08 Sep 2017 08:20:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 08 Sep 2017 08:20:16 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 08 Sep 2017 08:20:17 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:20:17 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:20:18 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:20:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:20:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:20:19 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:20:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91d1d6db6040cc4f80f17ffdb80565353cf3d3ccd82f4cf537b82a2bf8c742c`  
		Last Modified: Fri, 08 Sep 2017 23:40:06 GMT  
		Size: 8.2 MB (8235891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd955c6333982013c34ae65ba1cf7562d518191c7c55bf5cc32695d9d8fa8b6`  
		Last Modified: Fri, 08 Sep 2017 23:40:00 GMT  
		Size: 96.7 KB (96689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c816a8492b2620e10dd9418822ceec7ad2de2b16b080e5321d4d4d51aa2cfa01`  
		Last Modified: Fri, 08 Sep 2017 23:40:06 GMT  
		Size: 27.5 MB (27525013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f93132f92e60463b403d40458276e37d3ce9d1709cff2ceee0f037f3483abd`  
		Last Modified: Fri, 08 Sep 2017 23:40:00 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f7a7031c1cd231c4737db536204450c10a0ec6da62b81170ffb5a9a321be8d`  
		Last Modified: Fri, 08 Sep 2017 23:40:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f70eb2a347e40247a47d5589207d7253ebb12b1ca03046d4bb7bc878bbafa50`  
		Last Modified: Fri, 08 Sep 2017 23:40:00 GMT  
		Size: 2.6 KB (2624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a147d67ebf43f3ca6a8180b9612c2e88798886aef1593b1fb2f3b0b059d6089`  
		Last Modified: Fri, 08 Sep 2017 23:40:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:2fe765f4188b5f33258d1fee8c818aa8f5930d9ac442ab18579c7bbe6c756d4a
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89761295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:428e13bd4f1e6d8c4828cc28bd13415867b96193ccff43c6a0eb18d279e635c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:19:04 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:19:18 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:19:18 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 08 Sep 2017 08:19:18 GMT
ENV MYSQL_VERSION=5.5.57
# Fri, 08 Sep 2017 08:20:15 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 08 Sep 2017 08:20:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 08 Sep 2017 08:20:16 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 08 Sep 2017 08:20:17 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:20:17 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:20:18 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:20:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:20:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:20:19 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:20:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91d1d6db6040cc4f80f17ffdb80565353cf3d3ccd82f4cf537b82a2bf8c742c`  
		Last Modified: Fri, 08 Sep 2017 23:40:06 GMT  
		Size: 8.2 MB (8235891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd955c6333982013c34ae65ba1cf7562d518191c7c55bf5cc32695d9d8fa8b6`  
		Last Modified: Fri, 08 Sep 2017 23:40:00 GMT  
		Size: 96.7 KB (96689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c816a8492b2620e10dd9418822ceec7ad2de2b16b080e5321d4d4d51aa2cfa01`  
		Last Modified: Fri, 08 Sep 2017 23:40:06 GMT  
		Size: 27.5 MB (27525013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f93132f92e60463b403d40458276e37d3ce9d1709cff2ceee0f037f3483abd`  
		Last Modified: Fri, 08 Sep 2017 23:40:00 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f7a7031c1cd231c4737db536204450c10a0ec6da62b81170ffb5a9a321be8d`  
		Last Modified: Fri, 08 Sep 2017 23:40:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f70eb2a347e40247a47d5589207d7253ebb12b1ca03046d4bb7bc878bbafa50`  
		Last Modified: Fri, 08 Sep 2017 23:40:00 GMT  
		Size: 2.6 KB (2624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a147d67ebf43f3ca6a8180b9612c2e88798886aef1593b1fb2f3b0b059d6089`  
		Last Modified: Fri, 08 Sep 2017 23:40:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
