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
$ docker pull mysql@sha256:1035ced6270f73e708588e207f17111aaa64f4add4f23b55051ad9a810160e4a
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129653041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f00bb05a2ca77ea62f63b85cb91fccb6210ea8da2c7407c3b0b9572edf27a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 20:19:33 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:19:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 14 Oct 2016 23:10:41 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 14 Oct 2016 23:10:41 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Fri, 14 Oct 2016 23:10:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 14 Oct 2016 23:11:05 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 14 Oct 2016 23:11:07 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 14 Oct 2016 23:11:07 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 23:11:07 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Fri, 14 Oct 2016 23:11:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 23:11:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 23:11:09 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 23:11:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df41d8a4cfbca1436df0417cc1abfe2167d581398055ebe6674d999c497394a`  
		Last Modified: Fri, 23 Sep 2016 20:20:14 GMT  
		Size: 8.2 MB (8247964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a004859318dc253dd6b10dc368ecba7d2d9b9d479f4cbd2cf3e0c0d5c4f47`  
		Last Modified: Fri, 23 Sep 2016 20:20:10 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d8b68c211aa54337e30a8c6df87bbd3d364c463d1337af123b900599c6a80b`  
		Last Modified: Fri, 14 Oct 2016 23:11:18 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f57863bf3c82999d8290bf4157c118a20cf8dbee5df6c50c366ffd9b622802`  
		Last Modified: Fri, 14 Oct 2016 23:11:38 GMT  
		Size: 68.8 MB (68810212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb123c49cf84b3762e3d838c9a57436f86224287265aff45e124a4da64759b8`  
		Last Modified: Fri, 14 Oct 2016 23:11:19 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e78d93cb67b9779c20b00d47daa2ba76ff2e2274bae00d9b5b60ec3ff79e3d`  
		Last Modified: Fri, 14 Oct 2016 23:11:18 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bad2de462b977443b08b758f9c18e73b32d9380645e4080f72c9f34e847ae`  
		Last Modified: Fri, 14 Oct 2016 23:11:20 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:1035ced6270f73e708588e207f17111aaa64f4add4f23b55051ad9a810160e4a
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129653041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f00bb05a2ca77ea62f63b85cb91fccb6210ea8da2c7407c3b0b9572edf27a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 20:19:33 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:19:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 14 Oct 2016 23:10:41 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 14 Oct 2016 23:10:41 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Fri, 14 Oct 2016 23:10:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 14 Oct 2016 23:11:05 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 14 Oct 2016 23:11:07 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 14 Oct 2016 23:11:07 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 23:11:07 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Fri, 14 Oct 2016 23:11:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 23:11:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 23:11:09 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 23:11:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df41d8a4cfbca1436df0417cc1abfe2167d581398055ebe6674d999c497394a`  
		Last Modified: Fri, 23 Sep 2016 20:20:14 GMT  
		Size: 8.2 MB (8247964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a004859318dc253dd6b10dc368ecba7d2d9b9d479f4cbd2cf3e0c0d5c4f47`  
		Last Modified: Fri, 23 Sep 2016 20:20:10 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d8b68c211aa54337e30a8c6df87bbd3d364c463d1337af123b900599c6a80b`  
		Last Modified: Fri, 14 Oct 2016 23:11:18 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f57863bf3c82999d8290bf4157c118a20cf8dbee5df6c50c366ffd9b622802`  
		Last Modified: Fri, 14 Oct 2016 23:11:38 GMT  
		Size: 68.8 MB (68810212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb123c49cf84b3762e3d838c9a57436f86224287265aff45e124a4da64759b8`  
		Last Modified: Fri, 14 Oct 2016 23:11:19 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e78d93cb67b9779c20b00d47daa2ba76ff2e2274bae00d9b5b60ec3ff79e3d`  
		Last Modified: Fri, 14 Oct 2016 23:11:18 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bad2de462b977443b08b758f9c18e73b32d9380645e4080f72c9f34e847ae`  
		Last Modified: Fri, 14 Oct 2016 23:11:20 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

**does not exist** (yet?)

## `mysql:5.7.16`

```console
$ docker pull mysql@sha256:6e5a07485c36913cbfc4d0f4fed81ac76986356909f5fd937cc307567d78e196
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.16` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131617950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda6a4884645a9d810d81662201adaf5371c547a2a169051e95de951baadf452`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 20:19:33 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:19:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 23 Sep 2016 20:19:36 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 14 Oct 2016 17:38:32 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 14 Oct 2016 17:38:33 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 14 Oct 2016 17:38:52 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 14 Oct 2016 17:38:53 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 14 Oct 2016 17:38:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 17:38:54 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:38:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:38:56 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 17:38:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df41d8a4cfbca1436df0417cc1abfe2167d581398055ebe6674d999c497394a`  
		Last Modified: Fri, 23 Sep 2016 20:20:14 GMT  
		Size: 8.2 MB (8247964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a004859318dc253dd6b10dc368ecba7d2d9b9d479f4cbd2cf3e0c0d5c4f47`  
		Last Modified: Fri, 23 Sep 2016 20:20:10 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b78f2f183068daf2e5c141f135ad3f074165fc9cfe134e0d3257796fdc8647`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130396dbaf5e6ad5ebf072300ed66d42c5b58c08995e45eb08ff4572e4615846`  
		Last Modified: Fri, 14 Oct 2016 17:40:46 GMT  
		Size: 70.8 MB (70775069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c404f63082fda3af016574906380654f05474af84e343c08fbf1121cffa59b`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5111b1656f317b86fcf71a1da1fcc19253221830ed0bb40b425e29e414afa9d`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc620c1ba7f6f7c345159bf0ae90830220a8a72c6b8d770b5b1eacb11fbf669`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:6e5a07485c36913cbfc4d0f4fed81ac76986356909f5fd937cc307567d78e196
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131617950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda6a4884645a9d810d81662201adaf5371c547a2a169051e95de951baadf452`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 20:19:33 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:19:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 23 Sep 2016 20:19:36 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 14 Oct 2016 17:38:32 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 14 Oct 2016 17:38:33 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 14 Oct 2016 17:38:52 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 14 Oct 2016 17:38:53 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 14 Oct 2016 17:38:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 17:38:54 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:38:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:38:56 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 17:38:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df41d8a4cfbca1436df0417cc1abfe2167d581398055ebe6674d999c497394a`  
		Last Modified: Fri, 23 Sep 2016 20:20:14 GMT  
		Size: 8.2 MB (8247964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a004859318dc253dd6b10dc368ecba7d2d9b9d479f4cbd2cf3e0c0d5c4f47`  
		Last Modified: Fri, 23 Sep 2016 20:20:10 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b78f2f183068daf2e5c141f135ad3f074165fc9cfe134e0d3257796fdc8647`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130396dbaf5e6ad5ebf072300ed66d42c5b58c08995e45eb08ff4572e4615846`  
		Last Modified: Fri, 14 Oct 2016 17:40:46 GMT  
		Size: 70.8 MB (70775069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c404f63082fda3af016574906380654f05474af84e343c08fbf1121cffa59b`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5111b1656f317b86fcf71a1da1fcc19253221830ed0bb40b425e29e414afa9d`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc620c1ba7f6f7c345159bf0ae90830220a8a72c6b8d770b5b1eacb11fbf669`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:6e5a07485c36913cbfc4d0f4fed81ac76986356909f5fd937cc307567d78e196
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131617950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda6a4884645a9d810d81662201adaf5371c547a2a169051e95de951baadf452`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 20:19:33 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:19:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 23 Sep 2016 20:19:36 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 14 Oct 2016 17:38:32 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 14 Oct 2016 17:38:33 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 14 Oct 2016 17:38:52 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 14 Oct 2016 17:38:53 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 14 Oct 2016 17:38:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 17:38:54 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:38:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:38:56 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 17:38:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df41d8a4cfbca1436df0417cc1abfe2167d581398055ebe6674d999c497394a`  
		Last Modified: Fri, 23 Sep 2016 20:20:14 GMT  
		Size: 8.2 MB (8247964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a004859318dc253dd6b10dc368ecba7d2d9b9d479f4cbd2cf3e0c0d5c4f47`  
		Last Modified: Fri, 23 Sep 2016 20:20:10 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b78f2f183068daf2e5c141f135ad3f074165fc9cfe134e0d3257796fdc8647`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130396dbaf5e6ad5ebf072300ed66d42c5b58c08995e45eb08ff4572e4615846`  
		Last Modified: Fri, 14 Oct 2016 17:40:46 GMT  
		Size: 70.8 MB (70775069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c404f63082fda3af016574906380654f05474af84e343c08fbf1121cffa59b`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5111b1656f317b86fcf71a1da1fcc19253221830ed0bb40b425e29e414afa9d`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc620c1ba7f6f7c345159bf0ae90830220a8a72c6b8d770b5b1eacb11fbf669`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:6e5a07485c36913cbfc4d0f4fed81ac76986356909f5fd937cc307567d78e196
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131617950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda6a4884645a9d810d81662201adaf5371c547a2a169051e95de951baadf452`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 20:19:33 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:19:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 23 Sep 2016 20:19:36 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 14 Oct 2016 17:38:32 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 14 Oct 2016 17:38:33 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 14 Oct 2016 17:38:52 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 14 Oct 2016 17:38:53 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 14 Oct 2016 17:38:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 17:38:54 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:38:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:38:56 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 17:38:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df41d8a4cfbca1436df0417cc1abfe2167d581398055ebe6674d999c497394a`  
		Last Modified: Fri, 23 Sep 2016 20:20:14 GMT  
		Size: 8.2 MB (8247964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a004859318dc253dd6b10dc368ecba7d2d9b9d479f4cbd2cf3e0c0d5c4f47`  
		Last Modified: Fri, 23 Sep 2016 20:20:10 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b78f2f183068daf2e5c141f135ad3f074165fc9cfe134e0d3257796fdc8647`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130396dbaf5e6ad5ebf072300ed66d42c5b58c08995e45eb08ff4572e4615846`  
		Last Modified: Fri, 14 Oct 2016 17:40:46 GMT  
		Size: 70.8 MB (70775069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c404f63082fda3af016574906380654f05474af84e343c08fbf1121cffa59b`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5111b1656f317b86fcf71a1da1fcc19253221830ed0bb40b425e29e414afa9d`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc620c1ba7f6f7c345159bf0ae90830220a8a72c6b8d770b5b1eacb11fbf669`  
		Last Modified: Fri, 14 Oct 2016 17:40:26 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.34`

```console
$ docker pull mysql@sha256:fa23b996c951b5fcfa569dff1cae870fc5144c8f9c4fb3a0914a8fc180039418
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.34` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112609455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07c28d2a09addcd98b32fe62229f4f14e9dac7f5d564ad3483b2ebf3811d1c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 20:19:33 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:19:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 23 Sep 2016 20:22:48 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 14 Oct 2016 17:38:57 GMT
ENV MYSQL_VERSION=5.6.34-1debian8
# Fri, 14 Oct 2016 17:38:58 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 14 Oct 2016 17:39:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 14 Oct 2016 17:39:18 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 14 Oct 2016 17:39:18 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 17:39:19 GMT
COPY file:ef4ca25e3d06af1ec0f18036bab9ea6d8389951ecda6b394326e2b8e985ed5b9 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:39:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:39:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:39:20 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 17:39:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df41d8a4cfbca1436df0417cc1abfe2167d581398055ebe6674d999c497394a`  
		Last Modified: Fri, 23 Sep 2016 20:20:14 GMT  
		Size: 8.2 MB (8247964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a004859318dc253dd6b10dc368ecba7d2d9b9d479f4cbd2cf3e0c0d5c4f47`  
		Last Modified: Fri, 23 Sep 2016 20:20:10 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574b57461fa27c079f68026443bd38f627bafe7b80dfc06d45a075a22274e535`  
		Last Modified: Fri, 14 Oct 2016 17:41:35 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f393afad920bd35df9318e5d37bb54b59517a7e701348523330c4a354782c49`  
		Last Modified: Fri, 14 Oct 2016 17:41:49 GMT  
		Size: 51.8 MB (51766268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0473f910cd73e75e89aa3be4588d4d5c70dcf6e67b9689694842b1fe49e5f459`  
		Last Modified: Fri, 14 Oct 2016 17:41:34 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ea9246cb0a81d485d1452536b9bab63137f1d6262bc8f1cc538b7b38e2904f`  
		Last Modified: Fri, 14 Oct 2016 17:41:36 GMT  
		Size: 1.9 KB (1861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bf546564f64693cdfe1803962cb55eee71525bfb1feb1304dc9d1bac97e605`  
		Last Modified: Fri, 14 Oct 2016 17:41:35 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:fa23b996c951b5fcfa569dff1cae870fc5144c8f9c4fb3a0914a8fc180039418
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112609455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07c28d2a09addcd98b32fe62229f4f14e9dac7f5d564ad3483b2ebf3811d1c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 20:19:33 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:19:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 23 Sep 2016 20:22:48 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 14 Oct 2016 17:38:57 GMT
ENV MYSQL_VERSION=5.6.34-1debian8
# Fri, 14 Oct 2016 17:38:58 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 14 Oct 2016 17:39:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 14 Oct 2016 17:39:18 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 14 Oct 2016 17:39:18 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 17:39:19 GMT
COPY file:ef4ca25e3d06af1ec0f18036bab9ea6d8389951ecda6b394326e2b8e985ed5b9 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:39:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:39:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:39:20 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 17:39:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df41d8a4cfbca1436df0417cc1abfe2167d581398055ebe6674d999c497394a`  
		Last Modified: Fri, 23 Sep 2016 20:20:14 GMT  
		Size: 8.2 MB (8247964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a004859318dc253dd6b10dc368ecba7d2d9b9d479f4cbd2cf3e0c0d5c4f47`  
		Last Modified: Fri, 23 Sep 2016 20:20:10 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574b57461fa27c079f68026443bd38f627bafe7b80dfc06d45a075a22274e535`  
		Last Modified: Fri, 14 Oct 2016 17:41:35 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f393afad920bd35df9318e5d37bb54b59517a7e701348523330c4a354782c49`  
		Last Modified: Fri, 14 Oct 2016 17:41:49 GMT  
		Size: 51.8 MB (51766268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0473f910cd73e75e89aa3be4588d4d5c70dcf6e67b9689694842b1fe49e5f459`  
		Last Modified: Fri, 14 Oct 2016 17:41:34 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ea9246cb0a81d485d1452536b9bab63137f1d6262bc8f1cc538b7b38e2904f`  
		Last Modified: Fri, 14 Oct 2016 17:41:36 GMT  
		Size: 1.9 KB (1861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bf546564f64693cdfe1803962cb55eee71525bfb1feb1304dc9d1bac97e605`  
		Last Modified: Fri, 14 Oct 2016 17:41:35 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.53`

```console
$ docker pull mysql@sha256:386ba1cb22962e98940b9b9d196ee3e3c352a15159e61b50794c849e1d2b2033
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.53` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87396961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ed00d0828385eb03c355d64c571e5176739c31119477b31e8c4d1de4b7f4ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 20:21:13 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:21:19 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:21:19 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 14 Oct 2016 17:39:21 GMT
ENV MYSQL_VERSION=5.5.53
# Fri, 14 Oct 2016 17:40:12 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 14 Oct 2016 17:40:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 14 Oct 2016 17:40:13 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 14 Oct 2016 17:40:14 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 14 Oct 2016 17:40:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 17:40:15 GMT
COPY file:7d52eb36eb3f1396d87c264f1522352fd8906b68fefaa4c9a5147fe36ef318a8 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:40:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:40:17 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 17:40:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da1c22b09bafa4b5bd8ff7316a8d325a870334d7d8a883556fe5e9a24ac0d4b`  
		Last Modified: Fri, 23 Sep 2016 20:22:31 GMT  
		Size: 8.2 MB (8219895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb58c0fc56b8bfb88a242f65f5595d1b63074e1e2b74a8cff0c806663e2213c`  
		Last Modified: Fri, 23 Sep 2016 20:22:28 GMT  
		Size: 100.8 KB (100790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e452b934a424e1c5ecbce184e6fe409c890b0cd79d63b21a0b885cc9ccb5050`  
		Last Modified: Fri, 14 Oct 2016 17:42:24 GMT  
		Size: 26.5 MB (26501016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0538d5013f91374f94642d602760f9187752e9b7dace20e50830dd8ad54ff401`  
		Last Modified: Fri, 14 Oct 2016 17:42:17 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef7c43da620e6fb122901843b637052fb085374c2d7c4b98174951b4244af23`  
		Last Modified: Fri, 14 Oct 2016 17:42:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c7e282290222433fd1331b65c271c76566e9432749e1daacd88e6c1b0fdb3f`  
		Last Modified: Fri, 14 Oct 2016 17:42:16 GMT  
		Size: 1.9 KB (1895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5d534409a6edefecb89be19f044a03644522a17e074f0a94135b02ef805073`  
		Last Modified: Fri, 14 Oct 2016 17:42:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:386ba1cb22962e98940b9b9d196ee3e3c352a15159e61b50794c849e1d2b2033
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87396961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ed00d0828385eb03c355d64c571e5176739c31119477b31e8c4d1de4b7f4ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 20:21:13 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:21:19 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:21:19 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 14 Oct 2016 17:39:21 GMT
ENV MYSQL_VERSION=5.5.53
# Fri, 14 Oct 2016 17:40:12 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 14 Oct 2016 17:40:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 14 Oct 2016 17:40:13 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 14 Oct 2016 17:40:14 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 14 Oct 2016 17:40:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 17:40:15 GMT
COPY file:7d52eb36eb3f1396d87c264f1522352fd8906b68fefaa4c9a5147fe36ef318a8 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:40:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:40:17 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 17:40:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da1c22b09bafa4b5bd8ff7316a8d325a870334d7d8a883556fe5e9a24ac0d4b`  
		Last Modified: Fri, 23 Sep 2016 20:22:31 GMT  
		Size: 8.2 MB (8219895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb58c0fc56b8bfb88a242f65f5595d1b63074e1e2b74a8cff0c806663e2213c`  
		Last Modified: Fri, 23 Sep 2016 20:22:28 GMT  
		Size: 100.8 KB (100790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e452b934a424e1c5ecbce184e6fe409c890b0cd79d63b21a0b885cc9ccb5050`  
		Last Modified: Fri, 14 Oct 2016 17:42:24 GMT  
		Size: 26.5 MB (26501016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0538d5013f91374f94642d602760f9187752e9b7dace20e50830dd8ad54ff401`  
		Last Modified: Fri, 14 Oct 2016 17:42:17 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef7c43da620e6fb122901843b637052fb085374c2d7c4b98174951b4244af23`  
		Last Modified: Fri, 14 Oct 2016 17:42:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c7e282290222433fd1331b65c271c76566e9432749e1daacd88e6c1b0fdb3f`  
		Last Modified: Fri, 14 Oct 2016 17:42:16 GMT  
		Size: 1.9 KB (1895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5d534409a6edefecb89be19f044a03644522a17e074f0a94135b02ef805073`  
		Last Modified: Fri, 14 Oct 2016 17:42:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
