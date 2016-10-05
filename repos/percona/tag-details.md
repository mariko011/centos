<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5.7.14`](#percona5714)
-	[`percona:5.7`](#percona57)
-	[`percona:5`](#percona5)
-	[`percona:latest`](#perconalatest)
-	[`percona:5.6.32`](#percona5632)
-	[`percona:5.6`](#percona56)
-	[`percona:5.5.52`](#percona5552)
-	[`percona:5.5`](#percona55)

## `percona:5.7.14`

```console
$ docker pull percona@sha256:1c77126c98981f4f0a144c95f9e0a42f9d5a64e9a501e362f98dd61da4c228ee
```

-	Platforms:
	-	linux; amd64

### `percona:5.7.14` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119446591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4ea3b595764fce15386bf801a500b2875b39f48af2a7332eb72a87be9c1d4a`
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
# Fri, 23 Sep 2016 21:15:34 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:15:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Sep 2016 21:15:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 21:15:36 GMT
EXPOSE 3306/tcp
# Fri, 23 Sep 2016 21:15:36 GMT
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
	-	`sha256:9d79239bcbdf6f22df2d91c64a42631fb90c8543ae4df57dac6ffd9745dfec49`  
		Last Modified: Fri, 23 Sep 2016 21:15:44 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb96bb2c88efa521dbfffd402642ea94c24922e72f674de6593300fc0a2d40c`  
		Last Modified: Fri, 23 Sep 2016 21:15:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:1c77126c98981f4f0a144c95f9e0a42f9d5a64e9a501e362f98dd61da4c228ee
```

-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119446591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4ea3b595764fce15386bf801a500b2875b39f48af2a7332eb72a87be9c1d4a`
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
# Fri, 23 Sep 2016 21:15:34 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:15:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Sep 2016 21:15:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 21:15:36 GMT
EXPOSE 3306/tcp
# Fri, 23 Sep 2016 21:15:36 GMT
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
	-	`sha256:9d79239bcbdf6f22df2d91c64a42631fb90c8543ae4df57dac6ffd9745dfec49`  
		Last Modified: Fri, 23 Sep 2016 21:15:44 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb96bb2c88efa521dbfffd402642ea94c24922e72f674de6593300fc0a2d40c`  
		Last Modified: Fri, 23 Sep 2016 21:15:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5`

```console
$ docker pull percona@sha256:1c77126c98981f4f0a144c95f9e0a42f9d5a64e9a501e362f98dd61da4c228ee
```

-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119446591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4ea3b595764fce15386bf801a500b2875b39f48af2a7332eb72a87be9c1d4a`
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
# Fri, 23 Sep 2016 21:15:34 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:15:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Sep 2016 21:15:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 21:15:36 GMT
EXPOSE 3306/tcp
# Fri, 23 Sep 2016 21:15:36 GMT
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
	-	`sha256:9d79239bcbdf6f22df2d91c64a42631fb90c8543ae4df57dac6ffd9745dfec49`  
		Last Modified: Fri, 23 Sep 2016 21:15:44 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb96bb2c88efa521dbfffd402642ea94c24922e72f674de6593300fc0a2d40c`  
		Last Modified: Fri, 23 Sep 2016 21:15:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:1c77126c98981f4f0a144c95f9e0a42f9d5a64e9a501e362f98dd61da4c228ee
```

-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119446591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4ea3b595764fce15386bf801a500b2875b39f48af2a7332eb72a87be9c1d4a`
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
# Fri, 23 Sep 2016 21:15:34 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:15:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Sep 2016 21:15:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 21:15:36 GMT
EXPOSE 3306/tcp
# Fri, 23 Sep 2016 21:15:36 GMT
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
	-	`sha256:9d79239bcbdf6f22df2d91c64a42631fb90c8543ae4df57dac6ffd9745dfec49`  
		Last Modified: Fri, 23 Sep 2016 21:15:44 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb96bb2c88efa521dbfffd402642ea94c24922e72f674de6593300fc0a2d40c`  
		Last Modified: Fri, 23 Sep 2016 21:15:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.32`

```console
$ docker pull percona@sha256:1b3832589d0b1db54d174bf712ea4bb478b14146e760ee2d66d6494383b220dd
```

-	Platforms:
	-	linux; amd64

### `percona:5.6.32` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110687710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bdf7f89cc65f758909247e61e46d362bc13bd61d578a226fe7af684410e2efd`
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
# Fri, 23 Sep 2016 21:18:06 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 23 Sep 2016 21:18:06 GMT
ENV PERCONA_VERSION=5.6.32-78.1-1.jessie
# Fri, 23 Sep 2016 21:18:36 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Sep 2016 21:18:37 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Sep 2016 21:18:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 23 Sep 2016 21:18:38 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:18:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Sep 2016 21:18:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 21:18:40 GMT
EXPOSE 3306/tcp
# Fri, 23 Sep 2016 21:18:40 GMT
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
	-	`sha256:dfabd738c5b2a918ef041746d4761660b83a49e2a1f7fb929e27500b3c5115bd`  
		Last Modified: Fri, 23 Sep 2016 21:19:03 GMT  
		Size: 51.6 MB (51645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6387fb8bde6f96b6c16dbb22c0fe1964e5627893cc8eb84bd3216e3a41c22c`  
		Last Modified: Fri, 23 Sep 2016 21:18:49 GMT  
		Size: 1.9 KB (1889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61787ad48d74c0e4c06bd58cd0f2071f2e63581e0f7f60d1e0e6fd2639f5d1d2`  
		Last Modified: Fri, 23 Sep 2016 21:18:47 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0dcc20e7d2289caeffbc9451b30d57aaeb132fdfc838b9e337d52acb6fa4dc9`  
		Last Modified: Fri, 23 Sep 2016 21:18:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:1b3832589d0b1db54d174bf712ea4bb478b14146e760ee2d66d6494383b220dd
```

-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110687710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bdf7f89cc65f758909247e61e46d362bc13bd61d578a226fe7af684410e2efd`
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
# Fri, 23 Sep 2016 21:18:06 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 23 Sep 2016 21:18:06 GMT
ENV PERCONA_VERSION=5.6.32-78.1-1.jessie
# Fri, 23 Sep 2016 21:18:36 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Sep 2016 21:18:37 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Sep 2016 21:18:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 23 Sep 2016 21:18:38 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:18:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Sep 2016 21:18:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 21:18:40 GMT
EXPOSE 3306/tcp
# Fri, 23 Sep 2016 21:18:40 GMT
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
	-	`sha256:dfabd738c5b2a918ef041746d4761660b83a49e2a1f7fb929e27500b3c5115bd`  
		Last Modified: Fri, 23 Sep 2016 21:19:03 GMT  
		Size: 51.6 MB (51645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6387fb8bde6f96b6c16dbb22c0fe1964e5627893cc8eb84bd3216e3a41c22c`  
		Last Modified: Fri, 23 Sep 2016 21:18:49 GMT  
		Size: 1.9 KB (1889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61787ad48d74c0e4c06bd58cd0f2071f2e63581e0f7f60d1e0e6fd2639f5d1d2`  
		Last Modified: Fri, 23 Sep 2016 21:18:47 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0dcc20e7d2289caeffbc9451b30d57aaeb132fdfc838b9e337d52acb6fa4dc9`  
		Last Modified: Fri, 23 Sep 2016 21:18:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.52`

**does not exist** (yet?)

## `percona:5.5`

```console
$ docker pull percona@sha256:d5e87c7f6af11de45345082127e6b4528feae39d8e3542035d3416d944300d95
```

-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103432519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f2ee09619e87fa07f02bdeb6a832a35f319bdd39572950657655fce113bc3fa`
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
# Fri, 23 Sep 2016 21:16:37 GMT
ENV PERCONA_MAJOR=5.5
# Fri, 23 Sep 2016 21:16:37 GMT
ENV PERCONA_VERSION=5.5.51-rel38.2-1.jessie
# Fri, 23 Sep 2016 21:17:24 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Sep 2016 21:17:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Sep 2016 21:17:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 23 Sep 2016 21:17:26 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:17:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Sep 2016 21:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 21:17:28 GMT
EXPOSE 3306/tcp
# Fri, 23 Sep 2016 21:17:29 GMT
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
	-	`sha256:afd8f6f29312ae56323202b6721dc9b070f294e4882bcfaffa68f3c7f0f12106`  
		Last Modified: Fri, 23 Sep 2016 21:17:48 GMT  
		Size: 44.4 MB (44390492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4f5822229da58e3dad8420ad87460a35ceb2229df88e57f7416043a685e35`  
		Last Modified: Fri, 23 Sep 2016 21:17:37 GMT  
		Size: 1.9 KB (1888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c996f4450c57e45cae74fb10e36129afb3f08467410f65ee90089d413b500c1e`  
		Last Modified: Fri, 23 Sep 2016 21:17:36 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edd716fa2f98632d196923919228940bfeffb9e4e4c7930adb77a2b589dab7f`  
		Last Modified: Fri, 23 Sep 2016 21:17:37 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
