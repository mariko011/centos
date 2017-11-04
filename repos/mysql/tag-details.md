<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5`](#mysql5)
-	[`mysql:5.5`](#mysql55)
-	[`mysql:5.5.58`](#mysql5558)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.6.38`](#mysql5638)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5.7.20`](#mysql5720)
-	[`mysql:8`](#mysql8)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8.0.3`](#mysql803)
-	[`mysql:latest`](#mysqllatest)

## `mysql:5`

```console
$ docker pull mysql@sha256:1a2f9361228e9b10b4c77a651b460828514845dc7ac51735b919c2c4aec864b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:a0423a7d021b7a7775f1d2db1014bd15fde029f538c1f8d97c9832aa4a25209f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144191461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5709795eeffac51eca46cf40ab36669aad27e8cb4b0e91876d5e9f7bafad6acb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 14:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:11:20 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 04 Nov 2017 14:11:41 GMT
ENV MYSQL_MAJOR=5.7
# Sat, 04 Nov 2017 14:11:41 GMT
ENV MYSQL_VERSION=5.7.20-1debian8
# Sat, 04 Nov 2017 14:11:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Nov 2017 14:12:05 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 14:12:06 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 14:12:06 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:12:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 14:12:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:12:07 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 14:12:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05808866e6f9aa32dd0d90e8ddf2fa61f0aadf1ea3a6cd241e4d8560599730e5`  
		Last Modified: Sat, 04 Nov 2017 14:14:25 GMT  
		Size: 10.7 MB (10711104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8c65d48cfafbaa45aa6fee3838f34839e3f1a15a6fe3e6279106876480f971`  
		Last Modified: Sat, 04 Nov 2017 14:14:22 GMT  
		Size: 20.1 KB (20087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e189e187b2b50cee94b84c7ba30e897f70a6bc9edd5f6f4b13c1e2c86834cf93`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d3e6011ee86731c6442c2989f3dbe0ca0fa32e2d3d2cb4298655e60e105023`  
		Last Modified: Sat, 04 Nov 2017 14:15:01 GMT  
		Size: 79.6 MB (79556940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43b32d5ce043b6cbbbbae384ae8e2a34f3ee1264676e3e1f23201bcf1e6a99a`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a809168ab453ee345099ca10ee1914ecd855151127c2ecf00be4b645119c034`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:f9479fb9e7dc7bc365d787808552d1e9c411d48988ea5f4500b365b80944e209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:782ebb4317d1778134f5f9e1d5850bc03aef981031afb4499ed252e8a36ecc15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90190521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f9c7888779a67a40c59591c84a67c9a36798709fc0eddfc6bbbeb09e9bbe56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 14:13:00 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:13:08 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:13:10 GMT
ENV MYSQL_MAJOR=5.5
# Sat, 04 Nov 2017 14:13:10 GMT
ENV MYSQL_VERSION=5.5.58
# Sat, 04 Nov 2017 14:13:54 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Sat, 04 Nov 2017 14:13:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Sat, 04 Nov 2017 14:13:56 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Sat, 04 Nov 2017 14:13:56 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 04 Nov 2017 14:13:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 14:13:57 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:13:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 14:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:13:58 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 14:14:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b84d8af630006968ce855c6c94d9deba28e0ffa593c50523b48593d6e507358`  
		Last Modified: Sat, 04 Nov 2017 14:15:45 GMT  
		Size: 8.4 MB (8441111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c1c82b871084f632baf3911f66f7cd4d7d25a621682a9fe1cbc4b0ce3bedb5`  
		Last Modified: Sat, 04 Nov 2017 14:15:44 GMT  
		Size: 302.0 KB (301959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b29bb7178378f16d4388a6354504866bb6f79291eb7f41835a383736fe196ad`  
		Last Modified: Sat, 04 Nov 2017 14:15:47 GMT  
		Size: 27.5 MB (27544021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7263b192aca889f7b8ccd7f428bc6aa1a8a339ab29fc0e4487281db0007dd2dc`  
		Last Modified: Sat, 04 Nov 2017 14:15:41 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d368d385094c549184b4a291077fcd65e51dccc6bc08f0b2229809fed7f7e614`  
		Last Modified: Sat, 04 Nov 2017 14:15:41 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f273b183f297fd809c088a6dfeefc0add15b961f60644af0061a40022b2f1374`  
		Last Modified: Sat, 04 Nov 2017 14:15:41 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d85c54760ce9d873491757c747fa8632f4ef349128ef9f8732d96581e3721`  
		Last Modified: Sat, 04 Nov 2017 14:15:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.58`

```console
$ docker pull mysql@sha256:f9479fb9e7dc7bc365d787808552d1e9c411d48988ea5f4500b365b80944e209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.58` - linux; amd64

```console
$ docker pull mysql@sha256:782ebb4317d1778134f5f9e1d5850bc03aef981031afb4499ed252e8a36ecc15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90190521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f9c7888779a67a40c59591c84a67c9a36798709fc0eddfc6bbbeb09e9bbe56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 14:13:00 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:13:08 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:13:10 GMT
ENV MYSQL_MAJOR=5.5
# Sat, 04 Nov 2017 14:13:10 GMT
ENV MYSQL_VERSION=5.5.58
# Sat, 04 Nov 2017 14:13:54 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Sat, 04 Nov 2017 14:13:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Sat, 04 Nov 2017 14:13:56 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Sat, 04 Nov 2017 14:13:56 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 04 Nov 2017 14:13:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 14:13:57 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:13:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 14:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:13:58 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 14:14:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b84d8af630006968ce855c6c94d9deba28e0ffa593c50523b48593d6e507358`  
		Last Modified: Sat, 04 Nov 2017 14:15:45 GMT  
		Size: 8.4 MB (8441111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c1c82b871084f632baf3911f66f7cd4d7d25a621682a9fe1cbc4b0ce3bedb5`  
		Last Modified: Sat, 04 Nov 2017 14:15:44 GMT  
		Size: 302.0 KB (301959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b29bb7178378f16d4388a6354504866bb6f79291eb7f41835a383736fe196ad`  
		Last Modified: Sat, 04 Nov 2017 14:15:47 GMT  
		Size: 27.5 MB (27544021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7263b192aca889f7b8ccd7f428bc6aa1a8a339ab29fc0e4487281db0007dd2dc`  
		Last Modified: Sat, 04 Nov 2017 14:15:41 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d368d385094c549184b4a291077fcd65e51dccc6bc08f0b2229809fed7f7e614`  
		Last Modified: Sat, 04 Nov 2017 14:15:41 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f273b183f297fd809c088a6dfeefc0add15b961f60644af0061a40022b2f1374`  
		Last Modified: Sat, 04 Nov 2017 14:15:41 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d85c54760ce9d873491757c747fa8632f4ef349128ef9f8732d96581e3721`  
		Last Modified: Sat, 04 Nov 2017 14:15:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:eefb17f6a7ccd8507d55be5c6ba1a75e5851a88d851faa297955027f0527208f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:9460ec7601ab1627678df7662ec9a01ec93fea4a9f0d38cd5501c67740b0858c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105051992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96dc914914f599472c2d4e9cafe4711915d2bd71e963b8fe5412a9800d0f93b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 14:12:20 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:12:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 04 Nov 2017 14:12:23 GMT
ENV MYSQL_MAJOR=5.6
# Sat, 04 Nov 2017 14:12:23 GMT
ENV MYSQL_VERSION=5.6.38-1debian8
# Sat, 04 Nov 2017 14:12:24 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Nov 2017 14:12:42 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 14:12:42 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 14:12:43 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:12:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 14:12:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:12:45 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 14:12:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81169f0c357a657f1972223e2ede56849ce542e8c875151882566e70601d7ba`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 8.5 MB (8460651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f840da30e0459330a8ca814569ae4ae041c2281bbc9e86f002d83c0bd66cd7d0`  
		Last Modified: Sat, 04 Nov 2017 14:15:21 GMT  
		Size: 20.1 KB (20087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477a4640854e51d3403659a25d7818ae093295adfcb7d39dab95ade47e1678e1`  
		Last Modified: Sat, 04 Nov 2017 14:15:21 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a774a535571cf7819b6024751a2e749f1975deb0dfc541013d62ebe5b64df08`  
		Last Modified: Sat, 04 Nov 2017 14:15:28 GMT  
		Size: 42.7 MB (42668053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cd8830150005216fcad75c8a6e638efbcc11893aebd250f7db51417ce54712`  
		Last Modified: Sat, 04 Nov 2017 14:15:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cbc4fda4a5dc4ba2ff341e65250b59861b69aacb8627d91d4d8d4551ff3754`  
		Last Modified: Sat, 04 Nov 2017 14:15:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.38`

```console
$ docker pull mysql@sha256:eefb17f6a7ccd8507d55be5c6ba1a75e5851a88d851faa297955027f0527208f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.38` - linux; amd64

```console
$ docker pull mysql@sha256:9460ec7601ab1627678df7662ec9a01ec93fea4a9f0d38cd5501c67740b0858c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105051992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96dc914914f599472c2d4e9cafe4711915d2bd71e963b8fe5412a9800d0f93b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 14:12:20 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:12:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 04 Nov 2017 14:12:23 GMT
ENV MYSQL_MAJOR=5.6
# Sat, 04 Nov 2017 14:12:23 GMT
ENV MYSQL_VERSION=5.6.38-1debian8
# Sat, 04 Nov 2017 14:12:24 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Nov 2017 14:12:42 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 14:12:42 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 14:12:43 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:12:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 14:12:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:12:45 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 14:12:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81169f0c357a657f1972223e2ede56849ce542e8c875151882566e70601d7ba`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 8.5 MB (8460651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f840da30e0459330a8ca814569ae4ae041c2281bbc9e86f002d83c0bd66cd7d0`  
		Last Modified: Sat, 04 Nov 2017 14:15:21 GMT  
		Size: 20.1 KB (20087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477a4640854e51d3403659a25d7818ae093295adfcb7d39dab95ade47e1678e1`  
		Last Modified: Sat, 04 Nov 2017 14:15:21 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a774a535571cf7819b6024751a2e749f1975deb0dfc541013d62ebe5b64df08`  
		Last Modified: Sat, 04 Nov 2017 14:15:28 GMT  
		Size: 42.7 MB (42668053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cd8830150005216fcad75c8a6e638efbcc11893aebd250f7db51417ce54712`  
		Last Modified: Sat, 04 Nov 2017 14:15:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cbc4fda4a5dc4ba2ff341e65250b59861b69aacb8627d91d4d8d4551ff3754`  
		Last Modified: Sat, 04 Nov 2017 14:15:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:1a2f9361228e9b10b4c77a651b460828514845dc7ac51735b919c2c4aec864b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:a0423a7d021b7a7775f1d2db1014bd15fde029f538c1f8d97c9832aa4a25209f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144191461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5709795eeffac51eca46cf40ab36669aad27e8cb4b0e91876d5e9f7bafad6acb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 14:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:11:20 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 04 Nov 2017 14:11:41 GMT
ENV MYSQL_MAJOR=5.7
# Sat, 04 Nov 2017 14:11:41 GMT
ENV MYSQL_VERSION=5.7.20-1debian8
# Sat, 04 Nov 2017 14:11:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Nov 2017 14:12:05 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 14:12:06 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 14:12:06 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:12:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 14:12:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:12:07 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 14:12:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05808866e6f9aa32dd0d90e8ddf2fa61f0aadf1ea3a6cd241e4d8560599730e5`  
		Last Modified: Sat, 04 Nov 2017 14:14:25 GMT  
		Size: 10.7 MB (10711104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8c65d48cfafbaa45aa6fee3838f34839e3f1a15a6fe3e6279106876480f971`  
		Last Modified: Sat, 04 Nov 2017 14:14:22 GMT  
		Size: 20.1 KB (20087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e189e187b2b50cee94b84c7ba30e897f70a6bc9edd5f6f4b13c1e2c86834cf93`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d3e6011ee86731c6442c2989f3dbe0ca0fa32e2d3d2cb4298655e60e105023`  
		Last Modified: Sat, 04 Nov 2017 14:15:01 GMT  
		Size: 79.6 MB (79556940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43b32d5ce043b6cbbbbae384ae8e2a34f3ee1264676e3e1f23201bcf1e6a99a`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a809168ab453ee345099ca10ee1914ecd855151127c2ecf00be4b645119c034`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.20`

```console
$ docker pull mysql@sha256:1a2f9361228e9b10b4c77a651b460828514845dc7ac51735b919c2c4aec864b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.20` - linux; amd64

```console
$ docker pull mysql@sha256:a0423a7d021b7a7775f1d2db1014bd15fde029f538c1f8d97c9832aa4a25209f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144191461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5709795eeffac51eca46cf40ab36669aad27e8cb4b0e91876d5e9f7bafad6acb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 14:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:11:20 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 04 Nov 2017 14:11:41 GMT
ENV MYSQL_MAJOR=5.7
# Sat, 04 Nov 2017 14:11:41 GMT
ENV MYSQL_VERSION=5.7.20-1debian8
# Sat, 04 Nov 2017 14:11:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Nov 2017 14:12:05 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 14:12:06 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 14:12:06 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:12:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 14:12:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:12:07 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 14:12:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05808866e6f9aa32dd0d90e8ddf2fa61f0aadf1ea3a6cd241e4d8560599730e5`  
		Last Modified: Sat, 04 Nov 2017 14:14:25 GMT  
		Size: 10.7 MB (10711104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8c65d48cfafbaa45aa6fee3838f34839e3f1a15a6fe3e6279106876480f971`  
		Last Modified: Sat, 04 Nov 2017 14:14:22 GMT  
		Size: 20.1 KB (20087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e189e187b2b50cee94b84c7ba30e897f70a6bc9edd5f6f4b13c1e2c86834cf93`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d3e6011ee86731c6442c2989f3dbe0ca0fa32e2d3d2cb4298655e60e105023`  
		Last Modified: Sat, 04 Nov 2017 14:15:01 GMT  
		Size: 79.6 MB (79556940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43b32d5ce043b6cbbbbae384ae8e2a34f3ee1264676e3e1f23201bcf1e6a99a`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a809168ab453ee345099ca10ee1914ecd855151127c2ecf00be4b645119c034`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:db85194e904cc47767f4e513e0ae56d20f0f5938ebac14241f59ea952aaa2508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:6b45f04ed57ead58a5d2d3246a4a5f8fc4a08d9da601178f7f6c1762967606c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112861771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e691422324d8def9846f17db582043de4995665b7741829667311dba2870ff4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 14:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:11:20 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 04 Nov 2017 14:11:20 GMT
ENV MYSQL_MAJOR=8.0
# Sat, 04 Nov 2017 14:11:20 GMT
ENV MYSQL_VERSION=8.0.3-rc-1debian8
# Sat, 04 Nov 2017 14:11:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Nov 2017 14:11:35 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 04 Nov 2017 14:11:35 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 14:11:35 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Sat, 04 Nov 2017 14:11:36 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:11:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 14:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:11:37 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 14:11:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05808866e6f9aa32dd0d90e8ddf2fa61f0aadf1ea3a6cd241e4d8560599730e5`  
		Last Modified: Sat, 04 Nov 2017 14:14:25 GMT  
		Size: 10.7 MB (10711104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8c65d48cfafbaa45aa6fee3838f34839e3f1a15a6fe3e6279106876480f971`  
		Last Modified: Sat, 04 Nov 2017 14:14:22 GMT  
		Size: 20.1 KB (20087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e6f1904ca4a10628e18b6248d858745b359cf0c01665f4886fa5be20809e88`  
		Last Modified: Sat, 04 Nov 2017 14:14:21 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d608406e7dba7d13eb57bc6c3767277f94e0b4deaf2d99eebc19f8ccc9b60f0`  
		Last Modified: Sat, 04 Nov 2017 14:14:28 GMT  
		Size: 48.2 MB (48226358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c401b02fc8853601ba67bbc000b66ad454d8bbb1be434c6ca4832906cdbe4ee`  
		Last Modified: Sat, 04 Nov 2017 14:14:20 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78042f3c4bb5b2d15d2a42c438ce616be618caf70bb096db11cf341753c5b32f`  
		Last Modified: Sat, 04 Nov 2017 14:14:20 GMT  
		Size: 2.7 KB (2734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8eeb21dbdb0b58c289bf9f8f3e4774075628055a690a28d8fc6fa9ca0d88e78`  
		Last Modified: Sat, 04 Nov 2017 14:14:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:db85194e904cc47767f4e513e0ae56d20f0f5938ebac14241f59ea952aaa2508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:6b45f04ed57ead58a5d2d3246a4a5f8fc4a08d9da601178f7f6c1762967606c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112861771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e691422324d8def9846f17db582043de4995665b7741829667311dba2870ff4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 14:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:11:20 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 04 Nov 2017 14:11:20 GMT
ENV MYSQL_MAJOR=8.0
# Sat, 04 Nov 2017 14:11:20 GMT
ENV MYSQL_VERSION=8.0.3-rc-1debian8
# Sat, 04 Nov 2017 14:11:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Nov 2017 14:11:35 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 04 Nov 2017 14:11:35 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 14:11:35 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Sat, 04 Nov 2017 14:11:36 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:11:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 14:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:11:37 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 14:11:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05808866e6f9aa32dd0d90e8ddf2fa61f0aadf1ea3a6cd241e4d8560599730e5`  
		Last Modified: Sat, 04 Nov 2017 14:14:25 GMT  
		Size: 10.7 MB (10711104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8c65d48cfafbaa45aa6fee3838f34839e3f1a15a6fe3e6279106876480f971`  
		Last Modified: Sat, 04 Nov 2017 14:14:22 GMT  
		Size: 20.1 KB (20087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e6f1904ca4a10628e18b6248d858745b359cf0c01665f4886fa5be20809e88`  
		Last Modified: Sat, 04 Nov 2017 14:14:21 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d608406e7dba7d13eb57bc6c3767277f94e0b4deaf2d99eebc19f8ccc9b60f0`  
		Last Modified: Sat, 04 Nov 2017 14:14:28 GMT  
		Size: 48.2 MB (48226358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c401b02fc8853601ba67bbc000b66ad454d8bbb1be434c6ca4832906cdbe4ee`  
		Last Modified: Sat, 04 Nov 2017 14:14:20 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78042f3c4bb5b2d15d2a42c438ce616be618caf70bb096db11cf341753c5b32f`  
		Last Modified: Sat, 04 Nov 2017 14:14:20 GMT  
		Size: 2.7 KB (2734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8eeb21dbdb0b58c289bf9f8f3e4774075628055a690a28d8fc6fa9ca0d88e78`  
		Last Modified: Sat, 04 Nov 2017 14:14:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.3`

```console
$ docker pull mysql@sha256:db85194e904cc47767f4e513e0ae56d20f0f5938ebac14241f59ea952aaa2508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.3` - linux; amd64

```console
$ docker pull mysql@sha256:6b45f04ed57ead58a5d2d3246a4a5f8fc4a08d9da601178f7f6c1762967606c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112861771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e691422324d8def9846f17db582043de4995665b7741829667311dba2870ff4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 14:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:11:20 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 04 Nov 2017 14:11:20 GMT
ENV MYSQL_MAJOR=8.0
# Sat, 04 Nov 2017 14:11:20 GMT
ENV MYSQL_VERSION=8.0.3-rc-1debian8
# Sat, 04 Nov 2017 14:11:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Nov 2017 14:11:35 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 04 Nov 2017 14:11:35 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 14:11:35 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Sat, 04 Nov 2017 14:11:36 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:11:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 14:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:11:37 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 14:11:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05808866e6f9aa32dd0d90e8ddf2fa61f0aadf1ea3a6cd241e4d8560599730e5`  
		Last Modified: Sat, 04 Nov 2017 14:14:25 GMT  
		Size: 10.7 MB (10711104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8c65d48cfafbaa45aa6fee3838f34839e3f1a15a6fe3e6279106876480f971`  
		Last Modified: Sat, 04 Nov 2017 14:14:22 GMT  
		Size: 20.1 KB (20087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e6f1904ca4a10628e18b6248d858745b359cf0c01665f4886fa5be20809e88`  
		Last Modified: Sat, 04 Nov 2017 14:14:21 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d608406e7dba7d13eb57bc6c3767277f94e0b4deaf2d99eebc19f8ccc9b60f0`  
		Last Modified: Sat, 04 Nov 2017 14:14:28 GMT  
		Size: 48.2 MB (48226358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c401b02fc8853601ba67bbc000b66ad454d8bbb1be434c6ca4832906cdbe4ee`  
		Last Modified: Sat, 04 Nov 2017 14:14:20 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78042f3c4bb5b2d15d2a42c438ce616be618caf70bb096db11cf341753c5b32f`  
		Last Modified: Sat, 04 Nov 2017 14:14:20 GMT  
		Size: 2.7 KB (2734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8eeb21dbdb0b58c289bf9f8f3e4774075628055a690a28d8fc6fa9ca0d88e78`  
		Last Modified: Sat, 04 Nov 2017 14:14:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:1a2f9361228e9b10b4c77a651b460828514845dc7ac51735b919c2c4aec864b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:a0423a7d021b7a7775f1d2db1014bd15fde029f538c1f8d97c9832aa4a25209f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144191461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5709795eeffac51eca46cf40ab36669aad27e8cb4b0e91876d5e9f7bafad6acb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 14:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:11:20 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 04 Nov 2017 14:11:41 GMT
ENV MYSQL_MAJOR=5.7
# Sat, 04 Nov 2017 14:11:41 GMT
ENV MYSQL_VERSION=5.7.20-1debian8
# Sat, 04 Nov 2017 14:11:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Nov 2017 14:12:05 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 14:12:06 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 14:12:06 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:12:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 14:12:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:12:07 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 14:12:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05808866e6f9aa32dd0d90e8ddf2fa61f0aadf1ea3a6cd241e4d8560599730e5`  
		Last Modified: Sat, 04 Nov 2017 14:14:25 GMT  
		Size: 10.7 MB (10711104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8c65d48cfafbaa45aa6fee3838f34839e3f1a15a6fe3e6279106876480f971`  
		Last Modified: Sat, 04 Nov 2017 14:14:22 GMT  
		Size: 20.1 KB (20087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e189e187b2b50cee94b84c7ba30e897f70a6bc9edd5f6f4b13c1e2c86834cf93`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d3e6011ee86731c6442c2989f3dbe0ca0fa32e2d3d2cb4298655e60e105023`  
		Last Modified: Sat, 04 Nov 2017 14:15:01 GMT  
		Size: 79.6 MB (79556940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43b32d5ce043b6cbbbbae384ae8e2a34f3ee1264676e3e1f23201bcf1e6a99a`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a809168ab453ee345099ca10ee1914ecd855151127c2ecf00be4b645119c034`  
		Last Modified: Sat, 04 Nov 2017 14:14:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
