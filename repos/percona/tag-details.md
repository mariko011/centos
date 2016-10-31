<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5.7.15`](#percona5715)
-	[`percona:5.7`](#percona57)
-	[`percona:5`](#percona5)
-	[`percona:latest`](#perconalatest)
-	[`percona:5.6.33`](#percona5633)
-	[`percona:5.6`](#percona56)
-	[`percona:5.5.52`](#percona5552)
-	[`percona:5.5`](#percona55)

## `percona:5.7.15`

**does not exist** (yet?)

## `percona:5.7`

```console
$ docker pull percona@sha256:267c5a991f492f58c7fbe49db13d8254d6e5799e8ba02c7ce841e8c30ef32339
```

-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119449003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ffbb5f47edaf8d1a92dd24ff76f458272d5f80d7e78979b448cedd2a658421e`
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
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:31:42 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:31:43 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 19 Oct 2016 17:31:44 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 19 Oct 2016 17:31:44 GMT
ENV PERCONA_VERSION=5.7.14-8-1.jessie
# Wed, 19 Oct 2016 17:32:05 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:32:06 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:32:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 19 Oct 2016 17:32:07 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:32:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:32:09 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:32:10 GMT
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
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c367d378ebb1e9b0ff679bba38288ff90dfadfe0ca633122207a89ecbd243ee`  
		Last Modified: Wed, 19 Oct 2016 17:34:03 GMT  
		Size: 3.7 KB (3658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4eacbef891dffe054d5203539a4147f81935c5cc15ce513fdc0181a2dbf0b84`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af4a735e9604c6742bc6b3afbd27ec1578ab29da99036f355757d1ec4753ab1`  
		Last Modified: Wed, 19 Oct 2016 17:34:19 GMT  
		Size: 60.4 MB (60404592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86caa978a607fa8662616c6783ea3e34aa8896eb705df2bfecf0e64f52667b98`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 1.9 KB (1888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352dce870ac035d454c4d8b5d131cf594db9f40b26e363aba3b1c185c5c38254`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910adc7eb76d162bb67a9d4bc746a61ed604806d12aff6686683548c5410df69`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5`

```console
$ docker pull percona@sha256:267c5a991f492f58c7fbe49db13d8254d6e5799e8ba02c7ce841e8c30ef32339
```

-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119449003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ffbb5f47edaf8d1a92dd24ff76f458272d5f80d7e78979b448cedd2a658421e`
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
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:31:42 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:31:43 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 19 Oct 2016 17:31:44 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 19 Oct 2016 17:31:44 GMT
ENV PERCONA_VERSION=5.7.14-8-1.jessie
# Wed, 19 Oct 2016 17:32:05 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:32:06 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:32:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 19 Oct 2016 17:32:07 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:32:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:32:09 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:32:10 GMT
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
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c367d378ebb1e9b0ff679bba38288ff90dfadfe0ca633122207a89ecbd243ee`  
		Last Modified: Wed, 19 Oct 2016 17:34:03 GMT  
		Size: 3.7 KB (3658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4eacbef891dffe054d5203539a4147f81935c5cc15ce513fdc0181a2dbf0b84`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af4a735e9604c6742bc6b3afbd27ec1578ab29da99036f355757d1ec4753ab1`  
		Last Modified: Wed, 19 Oct 2016 17:34:19 GMT  
		Size: 60.4 MB (60404592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86caa978a607fa8662616c6783ea3e34aa8896eb705df2bfecf0e64f52667b98`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 1.9 KB (1888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352dce870ac035d454c4d8b5d131cf594db9f40b26e363aba3b1c185c5c38254`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910adc7eb76d162bb67a9d4bc746a61ed604806d12aff6686683548c5410df69`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:267c5a991f492f58c7fbe49db13d8254d6e5799e8ba02c7ce841e8c30ef32339
```

-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119449003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ffbb5f47edaf8d1a92dd24ff76f458272d5f80d7e78979b448cedd2a658421e`
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
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:31:42 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:31:43 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 19 Oct 2016 17:31:44 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 19 Oct 2016 17:31:44 GMT
ENV PERCONA_VERSION=5.7.14-8-1.jessie
# Wed, 19 Oct 2016 17:32:05 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:32:06 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:32:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 19 Oct 2016 17:32:07 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:32:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:32:09 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:32:10 GMT
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
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c367d378ebb1e9b0ff679bba38288ff90dfadfe0ca633122207a89ecbd243ee`  
		Last Modified: Wed, 19 Oct 2016 17:34:03 GMT  
		Size: 3.7 KB (3658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4eacbef891dffe054d5203539a4147f81935c5cc15ce513fdc0181a2dbf0b84`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af4a735e9604c6742bc6b3afbd27ec1578ab29da99036f355757d1ec4753ab1`  
		Last Modified: Wed, 19 Oct 2016 17:34:19 GMT  
		Size: 60.4 MB (60404592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86caa978a607fa8662616c6783ea3e34aa8896eb705df2bfecf0e64f52667b98`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 1.9 KB (1888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352dce870ac035d454c4d8b5d131cf594db9f40b26e363aba3b1c185c5c38254`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910adc7eb76d162bb67a9d4bc746a61ed604806d12aff6686683548c5410df69`  
		Last Modified: Wed, 19 Oct 2016 17:34:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.33`

```console
$ docker pull percona@sha256:3908bb9544d56c5faea6a0a111e36291d39dcb87bdf03b026cdc1ab1c458f4ab
```

-	Platforms:
	-	linux; amd64

### `percona:5.6.33` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110691029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91df2c08e4f7055cf44c5b6f2b79b1ad84e99178bfc5b0a51cd6d6245d665b4f`
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
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:59:46 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 21 Oct 2016 22:59:47 GMT
ENV PERCONA_VERSION=5.6.33-79.0-1.jessie
# Fri, 21 Oct 2016 23:00:16 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 23:00:17 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 21 Oct 2016 23:00:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 21 Oct 2016 23:00:18 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:00:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Oct 2016 23:00:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Oct 2016 23:00:21 GMT
EXPOSE 3306/tcp
# Fri, 21 Oct 2016 23:00:21 GMT
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
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d895a1ec859a68a3b7e3402e15f7995759ad675b9eb199689f3aa5e4aa72fad1`  
		Last Modified: Fri, 21 Oct 2016 23:00:46 GMT  
		Size: 51.6 MB (51646697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cac5edede92ad293efb53a171012eb11c91bbced0e71509738af45fe6409f6`  
		Last Modified: Fri, 21 Oct 2016 23:00:30 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8943b58c29b31658eb45324d46fe47fd382329ff1bb9244b05ad00f4a7dde688`  
		Last Modified: Fri, 21 Oct 2016 23:00:31 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b256bd8d82273dfcf3a0eb8301eaa8bc17e192d1ca1ff587594b2a83758f9369`  
		Last Modified: Fri, 21 Oct 2016 23:00:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:3908bb9544d56c5faea6a0a111e36291d39dcb87bdf03b026cdc1ab1c458f4ab
```

-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110691029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91df2c08e4f7055cf44c5b6f2b79b1ad84e99178bfc5b0a51cd6d6245d665b4f`
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
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:59:46 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 21 Oct 2016 22:59:47 GMT
ENV PERCONA_VERSION=5.6.33-79.0-1.jessie
# Fri, 21 Oct 2016 23:00:16 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 23:00:17 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 21 Oct 2016 23:00:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 21 Oct 2016 23:00:18 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:00:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Oct 2016 23:00:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Oct 2016 23:00:21 GMT
EXPOSE 3306/tcp
# Fri, 21 Oct 2016 23:00:21 GMT
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
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d895a1ec859a68a3b7e3402e15f7995759ad675b9eb199689f3aa5e4aa72fad1`  
		Last Modified: Fri, 21 Oct 2016 23:00:46 GMT  
		Size: 51.6 MB (51646697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cac5edede92ad293efb53a171012eb11c91bbced0e71509738af45fe6409f6`  
		Last Modified: Fri, 21 Oct 2016 23:00:30 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8943b58c29b31658eb45324d46fe47fd382329ff1bb9244b05ad00f4a7dde688`  
		Last Modified: Fri, 21 Oct 2016 23:00:31 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b256bd8d82273dfcf3a0eb8301eaa8bc17e192d1ca1ff587594b2a83758f9369`  
		Last Modified: Fri, 21 Oct 2016 23:00:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.52`

```console
$ docker pull percona@sha256:62cedfda48050e94cf181c2a0fc8cde0e45f217de47abd02400f81a6064a7309
```

-	Platforms:
	-	linux; amd64

### `percona:5.5.52` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103443645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a087422cdaad7c659d5943a4266eef9b90c92ba4e0b6a0108b6ed0ebbaf935e`
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
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:58:13 GMT
ENV PERCONA_MAJOR=5.5
# Fri, 21 Oct 2016 22:58:14 GMT
ENV PERCONA_VERSION=5.5.52-rel38.3-1.jessie
# Fri, 21 Oct 2016 22:58:59 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Oct 2016 22:24:13 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Mon, 31 Oct 2016 22:24:14 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Oct 2016 22:24:14 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:24:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Oct 2016 22:24:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:24:16 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:24:17 GMT
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
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122cd4d5b268a202b4be476ce4319c65db6c36dfe507962ffe5f6ca5f885baf6`  
		Last Modified: Fri, 21 Oct 2016 22:59:28 GMT  
		Size: 44.4 MB (44399317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bcbc0d67f9ab1255ea5c0a44036c0bfd905112bb78319523338e48ae568056`  
		Last Modified: Mon, 31 Oct 2016 22:26:07 GMT  
		Size: 1.9 KB (1888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e971be8c14c11b2837d9eae02b7e7611cf1ca04da69b2522b5791691a76f5b`  
		Last Modified: Mon, 31 Oct 2016 22:26:08 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5f149eb4242e28f90eaf2cab72ee022be1f19c16f04afacfa46f43d25c81b2`  
		Last Modified: Mon, 31 Oct 2016 22:26:06 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:62cedfda48050e94cf181c2a0fc8cde0e45f217de47abd02400f81a6064a7309
```

-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103443645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a087422cdaad7c659d5943a4266eef9b90c92ba4e0b6a0108b6ed0ebbaf935e`
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
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:58:13 GMT
ENV PERCONA_MAJOR=5.5
# Fri, 21 Oct 2016 22:58:14 GMT
ENV PERCONA_VERSION=5.5.52-rel38.3-1.jessie
# Fri, 21 Oct 2016 22:58:59 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Oct 2016 22:24:13 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Mon, 31 Oct 2016 22:24:14 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Oct 2016 22:24:14 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:24:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Oct 2016 22:24:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:24:16 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:24:17 GMT
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
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122cd4d5b268a202b4be476ce4319c65db6c36dfe507962ffe5f6ca5f885baf6`  
		Last Modified: Fri, 21 Oct 2016 22:59:28 GMT  
		Size: 44.4 MB (44399317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bcbc0d67f9ab1255ea5c0a44036c0bfd905112bb78319523338e48ae568056`  
		Last Modified: Mon, 31 Oct 2016 22:26:07 GMT  
		Size: 1.9 KB (1888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e971be8c14c11b2837d9eae02b7e7611cf1ca04da69b2522b5791691a76f5b`  
		Last Modified: Mon, 31 Oct 2016 22:26:08 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5f149eb4242e28f90eaf2cab72ee022be1f19c16f04afacfa46f43d25c81b2`  
		Last Modified: Mon, 31 Oct 2016 22:26:06 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
