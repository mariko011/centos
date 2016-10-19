<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5.7.14`](#percona5714)
-	[`percona:5.7`](#percona57)
-	[`percona:5`](#percona5)
-	[`percona:latest`](#perconalatest)
-	[`percona:5.6.33`](#percona5633)
-	[`percona:5.6`](#percona56)
-	[`percona:5.5.52`](#percona5552)
-	[`percona:5.5`](#percona55)

## `percona:5.7.14`

```console
$ docker pull percona@sha256:267c5a991f492f58c7fbe49db13d8254d6e5799e8ba02c7ce841e8c30ef32339
```

-	Platforms:
	-	linux; amd64

### `percona:5.7.14` - linux; amd64

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
$ docker pull percona@sha256:1b30ccb0bede7dbae096c5d6d2b803289c26b9fa04ff4c23b697c02bb1e47bf4
```

-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119446742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4c56aeaea82b8bcb2a40553ff5015d65205db389cb0f94a7b166749763a785`
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
# Fri, 23 Sep 2016 21:15:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Fri, 23 Sep 2016 21:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 23 Sep 2016 21:15:10 GMT
ENV PERCONA_MAJOR=5.7
# Fri, 23 Sep 2016 21:15:11 GMT
ENV PERCONA_VERSION=5.7.14-8-1.jessie
# Fri, 23 Sep 2016 21:15:32 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Sep 2016 21:15:33 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Sep 2016 21:15:33 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 14 Oct 2016 23:13:33 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Fri, 14 Oct 2016 23:13:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Oct 2016 23:13:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 23:13:35 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 23:13:35 GMT
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
	-	`sha256:40fb6477fb19c519d8ab2b3adb51705e5ae7f2dc378805a4ed5c7b42df36e1c7`  
		Last Modified: Fri, 23 Sep 2016 21:15:47 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe47686275579b27d41e36031a3c08333a53caa104e8cb1d278d677d6a88faf`  
		Last Modified: Fri, 23 Sep 2016 21:15:44 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3894333494d434afa5f4409f2a2b97031889cdfae988f4be7738af8343405802`  
		Last Modified: Fri, 23 Sep 2016 21:16:01 GMT  
		Size: 60.4 MB (60404562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0694da9c4259bc8dcfbe92f5c44e051ea01930e6b1c6e278bc3264bac2d29fd8`  
		Last Modified: Fri, 23 Sep 2016 21:15:45 GMT  
		Size: 1.9 KB (1889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce321c407e724f261c726f0603ca796044bc2933336b3e012d7c02474cc537dd`  
		Last Modified: Fri, 14 Oct 2016 23:13:53 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fc2bdf9ad773f9cd5f393f2acbec3f4136fc3a04c5bf956525c7185884f20c`  
		Last Modified: Fri, 14 Oct 2016 23:13:52 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.33`

```console
$ docker pull percona@sha256:1d84c2f21e1da149b7ba65f35e0696dc16f451491f70264a6ecc98ae513910bc
```

-	Platforms:
	-	linux; amd64

### `percona:5.6.33` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110691607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252b2e5f040b884de062982f06a0e0f22f57534e2c2f05868f81d92fd15b53ef`
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
# Wed, 19 Oct 2016 17:32:10 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 19 Oct 2016 17:32:16 GMT
ENV PERCONA_VERSION=5.6.33-79.0-1.jessie
# Wed, 19 Oct 2016 17:32:46 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:32:47 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:32:52 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 19 Oct 2016 17:32:53 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:32:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:32:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:32:55 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:32:55 GMT
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
	-	`sha256:f0727cea2653979d3912007f01ed78fab55e4c68bf54b93a60f6ad59f4c231d4`  
		Last Modified: Wed, 19 Oct 2016 17:35:26 GMT  
		Size: 51.6 MB (51647201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba149fee579959f020c99ee132e0c0658de73f0fcdcc8829e5e1ad263d2933`  
		Last Modified: Wed, 19 Oct 2016 17:35:09 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb889077d911bf58da4aa4dc3fede95ca05769fa936ca4c70d9c440b7bf75046`  
		Last Modified: Wed, 19 Oct 2016 17:35:10 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea70cd0dda031011edc222d8bcb7bf4bd3cf9fa7f857667a24c262c7f46b376e`  
		Last Modified: Wed, 19 Oct 2016 17:35:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:1d84c2f21e1da149b7ba65f35e0696dc16f451491f70264a6ecc98ae513910bc
```

-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110691607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252b2e5f040b884de062982f06a0e0f22f57534e2c2f05868f81d92fd15b53ef`
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
# Wed, 19 Oct 2016 17:32:10 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 19 Oct 2016 17:32:16 GMT
ENV PERCONA_VERSION=5.6.33-79.0-1.jessie
# Wed, 19 Oct 2016 17:32:46 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:32:47 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:32:52 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 19 Oct 2016 17:32:53 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:32:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:32:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:32:55 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:32:55 GMT
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
	-	`sha256:f0727cea2653979d3912007f01ed78fab55e4c68bf54b93a60f6ad59f4c231d4`  
		Last Modified: Wed, 19 Oct 2016 17:35:26 GMT  
		Size: 51.6 MB (51647201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba149fee579959f020c99ee132e0c0658de73f0fcdcc8829e5e1ad263d2933`  
		Last Modified: Wed, 19 Oct 2016 17:35:09 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb889077d911bf58da4aa4dc3fede95ca05769fa936ca4c70d9c440b7bf75046`  
		Last Modified: Wed, 19 Oct 2016 17:35:10 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea70cd0dda031011edc222d8bcb7bf4bd3cf9fa7f857667a24c262c7f46b376e`  
		Last Modified: Wed, 19 Oct 2016 17:35:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.52`

```console
$ docker pull percona@sha256:3f56417629ab5ac4aa7076f2be4248a2f830279012195184e7202d6d3adbb890
```

-	Platforms:
	-	linux; amd64

### `percona:5.5.52` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103443888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc39761243b5d3e47b0b873d6e6d6606453a443c1626abbda8f8d5d5fddde9c`
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
# Wed, 19 Oct 2016 17:32:56 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 19 Oct 2016 17:32:56 GMT
ENV PERCONA_VERSION=5.5.52-rel38.3-1.jessie
# Wed, 19 Oct 2016 17:33:40 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:33:41 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:33:42 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 19 Oct 2016 17:33:42 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:33:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:33:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:33:44 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:33:45 GMT
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
	-	`sha256:0c36ddb3acf7fcc298034cff181f5c6b55decd29678cf166d9aa2e0d04d56528`  
		Last Modified: Wed, 19 Oct 2016 17:36:07 GMT  
		Size: 44.4 MB (44399486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc484c5bfcb11e676ddb4087cee27bad87d66b0afbdb71c8cce809360e3dc41`  
		Last Modified: Wed, 19 Oct 2016 17:35:54 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b14e368a1c197dfd87e7797eade21b87d991684d5cae838907c77e35237c8a`  
		Last Modified: Wed, 19 Oct 2016 17:35:53 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d492cafdf3fbbdffcf0777307b361c7e1e101606b4e2ed97bf616ceea0863d`  
		Last Modified: Wed, 19 Oct 2016 17:35:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:3f56417629ab5ac4aa7076f2be4248a2f830279012195184e7202d6d3adbb890
```

-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103443888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc39761243b5d3e47b0b873d6e6d6606453a443c1626abbda8f8d5d5fddde9c`
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
# Wed, 19 Oct 2016 17:32:56 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 19 Oct 2016 17:32:56 GMT
ENV PERCONA_VERSION=5.5.52-rel38.3-1.jessie
# Wed, 19 Oct 2016 17:33:40 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:33:41 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:33:42 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 19 Oct 2016 17:33:42 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:33:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:33:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:33:44 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:33:45 GMT
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
	-	`sha256:0c36ddb3acf7fcc298034cff181f5c6b55decd29678cf166d9aa2e0d04d56528`  
		Last Modified: Wed, 19 Oct 2016 17:36:07 GMT  
		Size: 44.4 MB (44399486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc484c5bfcb11e676ddb4087cee27bad87d66b0afbdb71c8cce809360e3dc41`  
		Last Modified: Wed, 19 Oct 2016 17:35:54 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b14e368a1c197dfd87e7797eade21b87d991684d5cae838907c77e35237c8a`  
		Last Modified: Wed, 19 Oct 2016 17:35:53 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d492cafdf3fbbdffcf0777307b361c7e1e101606b4e2ed97bf616ceea0863d`  
		Last Modified: Wed, 19 Oct 2016 17:35:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
