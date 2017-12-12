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
$ docker pull mysql@sha256:1f95a2ba07ea2ee2800ec8ce3b5370ed4754b0a71d9d11c0c35c934e9708dcf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:4bd987ff054f8c31b05fd7ee2cc0196dea098f5c60e554309ebd881e3ffe60da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144196126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d83a47ab2d2d0f803aa230fdac1c4e53d251bfafe9b7265a3777bcc95163755`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:23:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:23:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 12 Dec 2017 02:23:52 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 12 Dec 2017 02:23:52 GMT
ENV MYSQL_VERSION=5.7.20-1debian8
# Tue, 12 Dec 2017 02:23:53 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 12 Dec 2017 02:24:18 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Dec 2017 02:25:57 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Dec 2017 02:25:58 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:25:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:25:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:25:59 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:25:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1056cf29b9f156636008257f45baf554adb9e1587e3eab7eaf07fda577e75ffa`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 10.7 MB (10711163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f3913b029a07790d452d2812d9d340cff1668930d6c69a5f3ee6cd63edbe97`  
		Last Modified: Tue, 12 Dec 2017 02:34:34 GMT  
		Size: 20.1 KB (20149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbbfc9aebabaa322a95408752dc849f8366685e54410bd6957c779ebd92da22`  
		Last Modified: Tue, 12 Dec 2017 02:35:16 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffd0352f6a85e665774d9e2b26d6d579037a82a08231b10948b4a2af1b72354`  
		Last Modified: Tue, 12 Dec 2017 02:35:30 GMT  
		Size: 79.6 MB (79556819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d90f823f97384a912d32c39465fae91b17f929acbea0066b213f187aaf0e6f`  
		Last Modified: Tue, 12 Dec 2017 02:35:16 GMT  
		Size: 2.7 KB (2737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2a791aeb351c35bd311e8f2f182a0c737ca9f4e747f38894c7b1a44bcff074`  
		Last Modified: Tue, 12 Dec 2017 02:35:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:32af8f2a33e56243e410ebba0810f6ca7ccf609fb941a33b206c2af337d468f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:a2f21fe9b469dba28f71ef9c54435244e2f590018c0251c2e5cfcfb06b39780c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90195283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af2cc4e31e34be520666031bd94517f1d8ee01f7d77e0c2ca3f35b3f9aac4420`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:27:23 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:27:31 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:27:32 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 12 Dec 2017 02:27:32 GMT
ENV MYSQL_VERSION=5.5.58
# Tue, 12 Dec 2017 02:28:11 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 12 Dec 2017 02:33:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 12 Dec 2017 02:33:34 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 12 Dec 2017 02:33:34 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 12 Dec 2017 02:33:35 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Dec 2017 02:33:35 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:33:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:33:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:34:07 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:34:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b5a0115c5a0747812d3d5312b509ce43887db1c835d98b7557a02b5d0fb1d2`  
		Last Modified: Tue, 12 Dec 2017 02:36:49 GMT  
		Size: 8.4 MB (8441373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4b0da7a8b46bff79dc3e0402ae499e0260c8deea5d4e4eb50249c6ce626f16`  
		Last Modified: Tue, 12 Dec 2017 02:36:46 GMT  
		Size: 301.9 KB (301922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aec0ba53aa8166a752e6353f7f6b3228e4a94b49fc6fd3b25c42e878dd1c8eb`  
		Last Modified: Tue, 12 Dec 2017 02:36:52 GMT  
		Size: 27.5 MB (27543902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aeadbe109b8d85c2203cc4813f156ccb4ca6f3e667b5ca24d1a63add4e3185d`  
		Last Modified: Tue, 12 Dec 2017 02:36:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c8a3ed9ae27d27ce1bf3603a02adc6f55b81a790348841aa565554bc779abd`  
		Last Modified: Tue, 12 Dec 2017 02:36:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462bd2d221d22d3fe876e338747423b31cdbaac06e35a1d0e04c473b2dcba8c1`  
		Last Modified: Tue, 12 Dec 2017 02:36:45 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0310cef29548de94f33c5968346a6b7fcfee5f2322998cbeab1fad09ab064bd4`  
		Last Modified: Tue, 12 Dec 2017 02:36:44 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.58`

```console
$ docker pull mysql@sha256:32af8f2a33e56243e410ebba0810f6ca7ccf609fb941a33b206c2af337d468f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.58` - linux; amd64

```console
$ docker pull mysql@sha256:a2f21fe9b469dba28f71ef9c54435244e2f590018c0251c2e5cfcfb06b39780c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90195283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af2cc4e31e34be520666031bd94517f1d8ee01f7d77e0c2ca3f35b3f9aac4420`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:27:23 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:27:31 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:27:32 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 12 Dec 2017 02:27:32 GMT
ENV MYSQL_VERSION=5.5.58
# Tue, 12 Dec 2017 02:28:11 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 12 Dec 2017 02:33:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 12 Dec 2017 02:33:34 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 12 Dec 2017 02:33:34 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 12 Dec 2017 02:33:35 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Dec 2017 02:33:35 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:33:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:33:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:34:07 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:34:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b5a0115c5a0747812d3d5312b509ce43887db1c835d98b7557a02b5d0fb1d2`  
		Last Modified: Tue, 12 Dec 2017 02:36:49 GMT  
		Size: 8.4 MB (8441373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4b0da7a8b46bff79dc3e0402ae499e0260c8deea5d4e4eb50249c6ce626f16`  
		Last Modified: Tue, 12 Dec 2017 02:36:46 GMT  
		Size: 301.9 KB (301922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aec0ba53aa8166a752e6353f7f6b3228e4a94b49fc6fd3b25c42e878dd1c8eb`  
		Last Modified: Tue, 12 Dec 2017 02:36:52 GMT  
		Size: 27.5 MB (27543902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aeadbe109b8d85c2203cc4813f156ccb4ca6f3e667b5ca24d1a63add4e3185d`  
		Last Modified: Tue, 12 Dec 2017 02:36:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c8a3ed9ae27d27ce1bf3603a02adc6f55b81a790348841aa565554bc779abd`  
		Last Modified: Tue, 12 Dec 2017 02:36:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462bd2d221d22d3fe876e338747423b31cdbaac06e35a1d0e04c473b2dcba8c1`  
		Last Modified: Tue, 12 Dec 2017 02:36:45 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0310cef29548de94f33c5968346a6b7fcfee5f2322998cbeab1fad09ab064bd4`  
		Last Modified: Tue, 12 Dec 2017 02:36:44 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:3ca011ce4091fd36fe72cf334176c72101c19798058d9032edd386c8578bb644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:92cd157a4d73a00a56993bce76d467ae170a86b264d24536648834d7f7501cdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105056648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7972822e0cfe7af284610af68fd23ab1c6e36566070199a2ecae0c540a6213`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:26:30 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:26:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 12 Dec 2017 02:26:44 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 12 Dec 2017 02:26:44 GMT
ENV MYSQL_VERSION=5.6.38-1debian8
# Tue, 12 Dec 2017 02:26:45 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 12 Dec 2017 02:27:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Dec 2017 02:27:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Dec 2017 02:27:04 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:27:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:27:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:27:05 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:27:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dd7bab809dc36871733509f298775d6e7e9a7b48411969fd40bbc5d42d4872`  
		Last Modified: Tue, 12 Dec 2017 02:36:14 GMT  
		Size: 8.5 MB (8460664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b95be8b8d363b4fd0d3de912d206a4a83f9f445e7a0761c61e4225b55aa3f6a`  
		Last Modified: Tue, 12 Dec 2017 02:36:08 GMT  
		Size: 20.1 KB (20149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ee8c6f60b5ee191862ae0beee2e27fc242c1548e724d42491aff9599783f14`  
		Last Modified: Tue, 12 Dec 2017 02:36:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74616d0d8b72cce832e728b721a055ee94112f55d9152ea75c0c11df9255e5fe`  
		Last Modified: Tue, 12 Dec 2017 02:36:17 GMT  
		Size: 42.7 MB (42667970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7ad7dfbf08cb21ae35a041aeceb634a80f6145d371fb793e18c9be75b491ce`  
		Last Modified: Tue, 12 Dec 2017 02:36:09 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b597896d30e83b6451b5d287503c6ad5b966afcfe983beaac073cd14d3327e`  
		Last Modified: Tue, 12 Dec 2017 02:36:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.38`

```console
$ docker pull mysql@sha256:3ca011ce4091fd36fe72cf334176c72101c19798058d9032edd386c8578bb644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.38` - linux; amd64

```console
$ docker pull mysql@sha256:92cd157a4d73a00a56993bce76d467ae170a86b264d24536648834d7f7501cdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105056648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7972822e0cfe7af284610af68fd23ab1c6e36566070199a2ecae0c540a6213`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:26:30 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:26:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 12 Dec 2017 02:26:44 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 12 Dec 2017 02:26:44 GMT
ENV MYSQL_VERSION=5.6.38-1debian8
# Tue, 12 Dec 2017 02:26:45 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 12 Dec 2017 02:27:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Dec 2017 02:27:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Dec 2017 02:27:04 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:27:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:27:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:27:05 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:27:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dd7bab809dc36871733509f298775d6e7e9a7b48411969fd40bbc5d42d4872`  
		Last Modified: Tue, 12 Dec 2017 02:36:14 GMT  
		Size: 8.5 MB (8460664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b95be8b8d363b4fd0d3de912d206a4a83f9f445e7a0761c61e4225b55aa3f6a`  
		Last Modified: Tue, 12 Dec 2017 02:36:08 GMT  
		Size: 20.1 KB (20149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ee8c6f60b5ee191862ae0beee2e27fc242c1548e724d42491aff9599783f14`  
		Last Modified: Tue, 12 Dec 2017 02:36:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74616d0d8b72cce832e728b721a055ee94112f55d9152ea75c0c11df9255e5fe`  
		Last Modified: Tue, 12 Dec 2017 02:36:17 GMT  
		Size: 42.7 MB (42667970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7ad7dfbf08cb21ae35a041aeceb634a80f6145d371fb793e18c9be75b491ce`  
		Last Modified: Tue, 12 Dec 2017 02:36:09 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b597896d30e83b6451b5d287503c6ad5b966afcfe983beaac073cd14d3327e`  
		Last Modified: Tue, 12 Dec 2017 02:36:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:1f95a2ba07ea2ee2800ec8ce3b5370ed4754b0a71d9d11c0c35c934e9708dcf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:4bd987ff054f8c31b05fd7ee2cc0196dea098f5c60e554309ebd881e3ffe60da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144196126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d83a47ab2d2d0f803aa230fdac1c4e53d251bfafe9b7265a3777bcc95163755`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:23:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:23:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 12 Dec 2017 02:23:52 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 12 Dec 2017 02:23:52 GMT
ENV MYSQL_VERSION=5.7.20-1debian8
# Tue, 12 Dec 2017 02:23:53 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 12 Dec 2017 02:24:18 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Dec 2017 02:25:57 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Dec 2017 02:25:58 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:25:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:25:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:25:59 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:25:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1056cf29b9f156636008257f45baf554adb9e1587e3eab7eaf07fda577e75ffa`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 10.7 MB (10711163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f3913b029a07790d452d2812d9d340cff1668930d6c69a5f3ee6cd63edbe97`  
		Last Modified: Tue, 12 Dec 2017 02:34:34 GMT  
		Size: 20.1 KB (20149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbbfc9aebabaa322a95408752dc849f8366685e54410bd6957c779ebd92da22`  
		Last Modified: Tue, 12 Dec 2017 02:35:16 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffd0352f6a85e665774d9e2b26d6d579037a82a08231b10948b4a2af1b72354`  
		Last Modified: Tue, 12 Dec 2017 02:35:30 GMT  
		Size: 79.6 MB (79556819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d90f823f97384a912d32c39465fae91b17f929acbea0066b213f187aaf0e6f`  
		Last Modified: Tue, 12 Dec 2017 02:35:16 GMT  
		Size: 2.7 KB (2737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2a791aeb351c35bd311e8f2f182a0c737ca9f4e747f38894c7b1a44bcff074`  
		Last Modified: Tue, 12 Dec 2017 02:35:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.20`

```console
$ docker pull mysql@sha256:1f95a2ba07ea2ee2800ec8ce3b5370ed4754b0a71d9d11c0c35c934e9708dcf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.20` - linux; amd64

```console
$ docker pull mysql@sha256:4bd987ff054f8c31b05fd7ee2cc0196dea098f5c60e554309ebd881e3ffe60da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144196126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d83a47ab2d2d0f803aa230fdac1c4e53d251bfafe9b7265a3777bcc95163755`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:23:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:23:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 12 Dec 2017 02:23:52 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 12 Dec 2017 02:23:52 GMT
ENV MYSQL_VERSION=5.7.20-1debian8
# Tue, 12 Dec 2017 02:23:53 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 12 Dec 2017 02:24:18 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Dec 2017 02:25:57 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Dec 2017 02:25:58 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:25:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:25:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:25:59 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:25:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1056cf29b9f156636008257f45baf554adb9e1587e3eab7eaf07fda577e75ffa`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 10.7 MB (10711163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f3913b029a07790d452d2812d9d340cff1668930d6c69a5f3ee6cd63edbe97`  
		Last Modified: Tue, 12 Dec 2017 02:34:34 GMT  
		Size: 20.1 KB (20149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbbfc9aebabaa322a95408752dc849f8366685e54410bd6957c779ebd92da22`  
		Last Modified: Tue, 12 Dec 2017 02:35:16 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffd0352f6a85e665774d9e2b26d6d579037a82a08231b10948b4a2af1b72354`  
		Last Modified: Tue, 12 Dec 2017 02:35:30 GMT  
		Size: 79.6 MB (79556819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d90f823f97384a912d32c39465fae91b17f929acbea0066b213f187aaf0e6f`  
		Last Modified: Tue, 12 Dec 2017 02:35:16 GMT  
		Size: 2.7 KB (2737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2a791aeb351c35bd311e8f2f182a0c737ca9f4e747f38894c7b1a44bcff074`  
		Last Modified: Tue, 12 Dec 2017 02:35:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:21cc59a132e029c688734a66b50bfa7e5b31af9f2f19267f463c247d51c67b5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:c6a388006b8f706b031279a0102c3b454d9cbee74390a84f3735769f3070d07b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112866641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26bd364f80bf23283c579400bab4bff2d0cd743fbe0df942ad714fbe50111e5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:23:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:23:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 12 Dec 2017 02:23:23 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 12 Dec 2017 02:23:23 GMT
ENV MYSQL_VERSION=8.0.3-rc-1debian8
# Tue, 12 Dec 2017 02:23:24 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 12 Dec 2017 02:23:38 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 12 Dec 2017 02:23:40 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Dec 2017 02:23:41 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 12 Dec 2017 02:23:41 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:23:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:23:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:23:42 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:23:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1056cf29b9f156636008257f45baf554adb9e1587e3eab7eaf07fda577e75ffa`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 10.7 MB (10711163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f3913b029a07790d452d2812d9d340cff1668930d6c69a5f3ee6cd63edbe97`  
		Last Modified: Tue, 12 Dec 2017 02:34:34 GMT  
		Size: 20.1 KB (20149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ee0a67381b6a6d1793cc236d13c8d45ddc579e7113876cbdc811625dc896ea`  
		Last Modified: Tue, 12 Dec 2017 02:34:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bcb8298f42a5cdd7e12145d37bd3bdb8ceef95fb635c60aba8a2a65a1c2146`  
		Last Modified: Tue, 12 Dec 2017 02:34:43 GMT  
		Size: 48.2 MB (48226439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f60b590748244c44a81302a2ef651af2550e649110a4256a89ea5d19e9cbe6`  
		Last Modified: Tue, 12 Dec 2017 02:34:32 GMT  
		Size: 898.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dca38a0e6a09a838cad1361cd0f7cf94f7959dcc16f66e7bbac61cd38e19016`  
		Last Modified: Tue, 12 Dec 2017 02:34:32 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c6d825c7b1f55b0df9477c0717a6bce62911e080b4befed14fa01e782b039a`  
		Last Modified: Tue, 12 Dec 2017 02:34:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:21cc59a132e029c688734a66b50bfa7e5b31af9f2f19267f463c247d51c67b5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:c6a388006b8f706b031279a0102c3b454d9cbee74390a84f3735769f3070d07b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112866641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26bd364f80bf23283c579400bab4bff2d0cd743fbe0df942ad714fbe50111e5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:23:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:23:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 12 Dec 2017 02:23:23 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 12 Dec 2017 02:23:23 GMT
ENV MYSQL_VERSION=8.0.3-rc-1debian8
# Tue, 12 Dec 2017 02:23:24 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 12 Dec 2017 02:23:38 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 12 Dec 2017 02:23:40 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Dec 2017 02:23:41 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 12 Dec 2017 02:23:41 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:23:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:23:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:23:42 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:23:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1056cf29b9f156636008257f45baf554adb9e1587e3eab7eaf07fda577e75ffa`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 10.7 MB (10711163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f3913b029a07790d452d2812d9d340cff1668930d6c69a5f3ee6cd63edbe97`  
		Last Modified: Tue, 12 Dec 2017 02:34:34 GMT  
		Size: 20.1 KB (20149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ee0a67381b6a6d1793cc236d13c8d45ddc579e7113876cbdc811625dc896ea`  
		Last Modified: Tue, 12 Dec 2017 02:34:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bcb8298f42a5cdd7e12145d37bd3bdb8ceef95fb635c60aba8a2a65a1c2146`  
		Last Modified: Tue, 12 Dec 2017 02:34:43 GMT  
		Size: 48.2 MB (48226439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f60b590748244c44a81302a2ef651af2550e649110a4256a89ea5d19e9cbe6`  
		Last Modified: Tue, 12 Dec 2017 02:34:32 GMT  
		Size: 898.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dca38a0e6a09a838cad1361cd0f7cf94f7959dcc16f66e7bbac61cd38e19016`  
		Last Modified: Tue, 12 Dec 2017 02:34:32 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c6d825c7b1f55b0df9477c0717a6bce62911e080b4befed14fa01e782b039a`  
		Last Modified: Tue, 12 Dec 2017 02:34:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.3`

```console
$ docker pull mysql@sha256:21cc59a132e029c688734a66b50bfa7e5b31af9f2f19267f463c247d51c67b5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.3` - linux; amd64

```console
$ docker pull mysql@sha256:c6a388006b8f706b031279a0102c3b454d9cbee74390a84f3735769f3070d07b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112866641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26bd364f80bf23283c579400bab4bff2d0cd743fbe0df942ad714fbe50111e5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:23:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:23:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 12 Dec 2017 02:23:23 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 12 Dec 2017 02:23:23 GMT
ENV MYSQL_VERSION=8.0.3-rc-1debian8
# Tue, 12 Dec 2017 02:23:24 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 12 Dec 2017 02:23:38 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 12 Dec 2017 02:23:40 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Dec 2017 02:23:41 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 12 Dec 2017 02:23:41 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:23:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:23:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:23:42 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:23:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1056cf29b9f156636008257f45baf554adb9e1587e3eab7eaf07fda577e75ffa`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 10.7 MB (10711163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f3913b029a07790d452d2812d9d340cff1668930d6c69a5f3ee6cd63edbe97`  
		Last Modified: Tue, 12 Dec 2017 02:34:34 GMT  
		Size: 20.1 KB (20149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ee0a67381b6a6d1793cc236d13c8d45ddc579e7113876cbdc811625dc896ea`  
		Last Modified: Tue, 12 Dec 2017 02:34:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bcb8298f42a5cdd7e12145d37bd3bdb8ceef95fb635c60aba8a2a65a1c2146`  
		Last Modified: Tue, 12 Dec 2017 02:34:43 GMT  
		Size: 48.2 MB (48226439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f60b590748244c44a81302a2ef651af2550e649110a4256a89ea5d19e9cbe6`  
		Last Modified: Tue, 12 Dec 2017 02:34:32 GMT  
		Size: 898.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dca38a0e6a09a838cad1361cd0f7cf94f7959dcc16f66e7bbac61cd38e19016`  
		Last Modified: Tue, 12 Dec 2017 02:34:32 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c6d825c7b1f55b0df9477c0717a6bce62911e080b4befed14fa01e782b039a`  
		Last Modified: Tue, 12 Dec 2017 02:34:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:1f95a2ba07ea2ee2800ec8ce3b5370ed4754b0a71d9d11c0c35c934e9708dcf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:4bd987ff054f8c31b05fd7ee2cc0196dea098f5c60e554309ebd881e3ffe60da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144196126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d83a47ab2d2d0f803aa230fdac1c4e53d251bfafe9b7265a3777bcc95163755`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:23:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:23:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 12 Dec 2017 02:23:52 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 12 Dec 2017 02:23:52 GMT
ENV MYSQL_VERSION=5.7.20-1debian8
# Tue, 12 Dec 2017 02:23:53 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 12 Dec 2017 02:24:18 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Dec 2017 02:25:57 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Dec 2017 02:25:58 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:25:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:25:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:25:59 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:25:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1056cf29b9f156636008257f45baf554adb9e1587e3eab7eaf07fda577e75ffa`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 10.7 MB (10711163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f3913b029a07790d452d2812d9d340cff1668930d6c69a5f3ee6cd63edbe97`  
		Last Modified: Tue, 12 Dec 2017 02:34:34 GMT  
		Size: 20.1 KB (20149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbbfc9aebabaa322a95408752dc849f8366685e54410bd6957c779ebd92da22`  
		Last Modified: Tue, 12 Dec 2017 02:35:16 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffd0352f6a85e665774d9e2b26d6d579037a82a08231b10948b4a2af1b72354`  
		Last Modified: Tue, 12 Dec 2017 02:35:30 GMT  
		Size: 79.6 MB (79556819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d90f823f97384a912d32c39465fae91b17f929acbea0066b213f187aaf0e6f`  
		Last Modified: Tue, 12 Dec 2017 02:35:16 GMT  
		Size: 2.7 KB (2737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2a791aeb351c35bd311e8f2f182a0c737ca9f4e747f38894c7b1a44bcff074`  
		Last Modified: Tue, 12 Dec 2017 02:35:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
