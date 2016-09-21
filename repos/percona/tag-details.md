<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5.7.14`](#percona5714)
-	[`percona:5.7`](#percona57)
-	[`percona:5`](#percona5)
-	[`percona:latest`](#perconalatest)
-	[`percona:5.6.32`](#percona5632)
-	[`percona:5.6`](#percona56)
-	[`percona:5.5.51`](#percona5551)
-	[`percona:5.5`](#percona55)

## `percona:5.7.14`

```console
$ docker pull percona@sha256:40b5cada096586f2c85e2dace8f43d8a0ff53269a0db83bfd0436f7353c63b65
```

-	Platforms:
	-	linux; amd64

### `percona:5.7.14` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119445954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb249040e2c2ec3611040d55bf9a6d8383b2cbd4a9f9f2f4ad69a79c2f473f7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:06:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Sep 2016 20:06:49 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:07:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:07:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Sep 2016 20:07:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:20:17 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 19 Sep 2016 23:20:17 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 19 Sep 2016 23:20:18 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 21 Sep 2016 23:24:51 GMT
ENV PERCONA_VERSION=5.7.14-8-1.jessie
# Wed, 21 Sep 2016 23:25:12 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Sep 2016 23:25:13 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 21 Sep 2016 23:25:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 21 Sep 2016 23:25:14 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/ 
# Wed, 21 Sep 2016 23:25:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Sep 2016 23:25:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Sep 2016 23:25:16 GMT
EXPOSE 3306/tcp
# Wed, 21 Sep 2016 23:25:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24390d0ec05096cfee10b6656e62329383b97a121bcfbc6fafa302fedb254384`  
		Last Modified: Wed, 21 Sep 2016 23:26:59 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b087c53969af16affb7facec319dfd237efd9cccad474786b80517d02620bcc0`  
		Last Modified: Wed, 21 Sep 2016 23:26:58 GMT  
		Size: 1.2 MB (1216261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35757b47748da70c1471893f1fb0269a55e802ff5dc8ebfe838b8cb2f70b7790`  
		Last Modified: Wed, 21 Sep 2016 23:26:55 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42262ab464ee663a4f41469450f1e42de951038bb559ff337386a8864689fa5`  
		Last Modified: Wed, 21 Sep 2016 23:27:00 GMT  
		Size: 6.5 MB (6463142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4e4035cb852e8e33100caa55de50e16d2e81d25ec7a0e18d2809f7271ee7fc`  
		Last Modified: Wed, 21 Sep 2016 23:26:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d6cdd8765ccf5ad807b14d9049b90212761d6aae5d398cf423b594c9208a22`  
		Last Modified: Wed, 21 Sep 2016 23:26:54 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac624275996fc491e6b56ebb6f124d890ee1ba80ce72e92ff2a66e2a224fe05`  
		Last Modified: Wed, 21 Sep 2016 23:27:13 GMT  
		Size: 60.4 MB (60404511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b651f1b4ba85d092b5101b82af13029ccb5eec8fd47a406623e8e49d41ec674`  
		Last Modified: Wed, 21 Sep 2016 23:26:53 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00aa3f914a96f1ae51038a76fbf822df67635100c271ce3c2c305988ce6ef46`  
		Last Modified: Wed, 21 Sep 2016 23:26:52 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f41b6290b5ae7966324ecde0bad365f794a7f45d39a7c6a1c14161be33deb02`  
		Last Modified: Wed, 21 Sep 2016 23:26:52 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:a57659e25bff6cb5431a34a6afb9cd16e07472f4ec1e6e5a953be58db7077100
```

-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119422451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84e737203dd12f89cc0e7f6c99bae09fa4c094a4b92249be729840e4b32cfde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:31:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 29 Jul 2016 19:31:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:32:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jul 2016 19:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 20:06:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 01 Aug 2016 20:07:01 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 01 Aug 2016 20:09:42 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 24 Aug 2016 17:08:46 GMT
ENV PERCONA_VERSION=5.7.14-7-1.jessie
# Wed, 24 Aug 2016 17:10:17 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Aug 2016 17:10:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 24 Aug 2016 17:10:21 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 24 Aug 2016 17:10:23 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/
# Wed, 24 Aug 2016 17:10:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 24 Aug 2016 17:10:27 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Wed, 24 Aug 2016 17:10:29 GMT
EXPOSE 3306/tcp
# Wed, 24 Aug 2016 17:10:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256a92f57ae8b3b993d4378161fc01c2cf6ce79bcdb40e28d709047d4ad4e984`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ee0325fe9179b6df96846b3f1e085c60a34af99c248b2dfccbe37b11fecb7e`  
		Last Modified: Fri, 29 Jul 2016 19:36:32 GMT  
		Size: 1.2 MB (1216540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15deb03758bdc9dabfea84d10f49d05850a117ea3880b9656d8962352aa61bc`  
		Last Modified: Fri, 29 Jul 2016 19:36:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d6cba29d2d6081c6b36b2f3d8b1e9055ce6f55dd355e5367daecaf06eb67e`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 6.5 MB (6463146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c06732aad0780a4f02b516c230f96655aa4d38a703c2f243ce3690c0c1b0a`  
		Last Modified: Mon, 01 Aug 2016 20:09:15 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53c3f0fa092eb28dc7668e7f3f687f747ca8cac2746a4d565abf086ed05cc5`  
		Last Modified: Mon, 01 Aug 2016 20:09:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04966a3b56540feac677901c2ab66dfc34ccf8508ec39e18ac2bd03404f9af8`  
		Last Modified: Wed, 24 Aug 2016 17:10:59 GMT  
		Size: 60.4 MB (60369680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4b4708a792ce048613ae06f41a0e21fe3caa3166fd3aa7194dfdfa07410c9b`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fcccf3ff6413dbadaa0cd1981f15932a4a9d12961ff40b9ba601ed00e91260`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45da1975c132447ba8c84f5d8db2f7cec7818ecd6614b1d45f3a0fc195fd7693`  
		Last Modified: Wed, 24 Aug 2016 17:10:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5`

```console
$ docker pull percona@sha256:40b5cada096586f2c85e2dace8f43d8a0ff53269a0db83bfd0436f7353c63b65
```

-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119445954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb249040e2c2ec3611040d55bf9a6d8383b2cbd4a9f9f2f4ad69a79c2f473f7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:06:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Sep 2016 20:06:49 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:07:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:07:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Sep 2016 20:07:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:20:17 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 19 Sep 2016 23:20:17 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 19 Sep 2016 23:20:18 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 21 Sep 2016 23:24:51 GMT
ENV PERCONA_VERSION=5.7.14-8-1.jessie
# Wed, 21 Sep 2016 23:25:12 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Sep 2016 23:25:13 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 21 Sep 2016 23:25:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 21 Sep 2016 23:25:14 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/ 
# Wed, 21 Sep 2016 23:25:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Sep 2016 23:25:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Sep 2016 23:25:16 GMT
EXPOSE 3306/tcp
# Wed, 21 Sep 2016 23:25:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24390d0ec05096cfee10b6656e62329383b97a121bcfbc6fafa302fedb254384`  
		Last Modified: Wed, 21 Sep 2016 23:26:59 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b087c53969af16affb7facec319dfd237efd9cccad474786b80517d02620bcc0`  
		Last Modified: Wed, 21 Sep 2016 23:26:58 GMT  
		Size: 1.2 MB (1216261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35757b47748da70c1471893f1fb0269a55e802ff5dc8ebfe838b8cb2f70b7790`  
		Last Modified: Wed, 21 Sep 2016 23:26:55 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42262ab464ee663a4f41469450f1e42de951038bb559ff337386a8864689fa5`  
		Last Modified: Wed, 21 Sep 2016 23:27:00 GMT  
		Size: 6.5 MB (6463142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4e4035cb852e8e33100caa55de50e16d2e81d25ec7a0e18d2809f7271ee7fc`  
		Last Modified: Wed, 21 Sep 2016 23:26:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d6cdd8765ccf5ad807b14d9049b90212761d6aae5d398cf423b594c9208a22`  
		Last Modified: Wed, 21 Sep 2016 23:26:54 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac624275996fc491e6b56ebb6f124d890ee1ba80ce72e92ff2a66e2a224fe05`  
		Last Modified: Wed, 21 Sep 2016 23:27:13 GMT  
		Size: 60.4 MB (60404511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b651f1b4ba85d092b5101b82af13029ccb5eec8fd47a406623e8e49d41ec674`  
		Last Modified: Wed, 21 Sep 2016 23:26:53 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00aa3f914a96f1ae51038a76fbf822df67635100c271ce3c2c305988ce6ef46`  
		Last Modified: Wed, 21 Sep 2016 23:26:52 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f41b6290b5ae7966324ecde0bad365f794a7f45d39a7c6a1c14161be33deb02`  
		Last Modified: Wed, 21 Sep 2016 23:26:52 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:a57659e25bff6cb5431a34a6afb9cd16e07472f4ec1e6e5a953be58db7077100
```

-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119422451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84e737203dd12f89cc0e7f6c99bae09fa4c094a4b92249be729840e4b32cfde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:31:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 29 Jul 2016 19:31:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:32:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jul 2016 19:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 20:06:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 01 Aug 2016 20:07:01 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 01 Aug 2016 20:09:42 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 24 Aug 2016 17:08:46 GMT
ENV PERCONA_VERSION=5.7.14-7-1.jessie
# Wed, 24 Aug 2016 17:10:17 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Aug 2016 17:10:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 24 Aug 2016 17:10:21 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 24 Aug 2016 17:10:23 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/
# Wed, 24 Aug 2016 17:10:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 24 Aug 2016 17:10:27 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Wed, 24 Aug 2016 17:10:29 GMT
EXPOSE 3306/tcp
# Wed, 24 Aug 2016 17:10:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256a92f57ae8b3b993d4378161fc01c2cf6ce79bcdb40e28d709047d4ad4e984`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ee0325fe9179b6df96846b3f1e085c60a34af99c248b2dfccbe37b11fecb7e`  
		Last Modified: Fri, 29 Jul 2016 19:36:32 GMT  
		Size: 1.2 MB (1216540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15deb03758bdc9dabfea84d10f49d05850a117ea3880b9656d8962352aa61bc`  
		Last Modified: Fri, 29 Jul 2016 19:36:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d6cba29d2d6081c6b36b2f3d8b1e9055ce6f55dd355e5367daecaf06eb67e`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 6.5 MB (6463146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c06732aad0780a4f02b516c230f96655aa4d38a703c2f243ce3690c0c1b0a`  
		Last Modified: Mon, 01 Aug 2016 20:09:15 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53c3f0fa092eb28dc7668e7f3f687f747ca8cac2746a4d565abf086ed05cc5`  
		Last Modified: Mon, 01 Aug 2016 20:09:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04966a3b56540feac677901c2ab66dfc34ccf8508ec39e18ac2bd03404f9af8`  
		Last Modified: Wed, 24 Aug 2016 17:10:59 GMT  
		Size: 60.4 MB (60369680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4b4708a792ce048613ae06f41a0e21fe3caa3166fd3aa7194dfdfa07410c9b`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fcccf3ff6413dbadaa0cd1981f15932a4a9d12961ff40b9ba601ed00e91260`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45da1975c132447ba8c84f5d8db2f7cec7818ecd6614b1d45f3a0fc195fd7693`  
		Last Modified: Wed, 24 Aug 2016 17:10:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.32`

```console
$ docker pull percona@sha256:9067b3bf058b7ef5b8d9ef4f89b78ccd1fdf8910294f671731df153ceca981a4
```

-	Platforms:
	-	linux; amd64

### `percona:5.6.32` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110687133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e638b32c59d4e759b2b457293ffac6b90e551e1f2a8720158a0842ffa1836a75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:06:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Sep 2016 20:06:49 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:07:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:07:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Sep 2016 20:07:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:20:17 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 19 Sep 2016 23:20:17 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 19 Sep 2016 23:24:15 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 21 Sep 2016 23:25:17 GMT
ENV PERCONA_VERSION=5.6.32-78.1-1.jessie
# Wed, 21 Sep 2016 23:25:47 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Sep 2016 23:25:48 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 21 Sep 2016 23:25:49 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 21 Sep 2016 23:25:49 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Wed, 21 Sep 2016 23:25:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Sep 2016 23:25:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Sep 2016 23:25:51 GMT
EXPOSE 3306/tcp
# Wed, 21 Sep 2016 23:25:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24390d0ec05096cfee10b6656e62329383b97a121bcfbc6fafa302fedb254384`  
		Last Modified: Wed, 21 Sep 2016 23:26:59 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b087c53969af16affb7facec319dfd237efd9cccad474786b80517d02620bcc0`  
		Last Modified: Wed, 21 Sep 2016 23:26:58 GMT  
		Size: 1.2 MB (1216261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35757b47748da70c1471893f1fb0269a55e802ff5dc8ebfe838b8cb2f70b7790`  
		Last Modified: Wed, 21 Sep 2016 23:26:55 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42262ab464ee663a4f41469450f1e42de951038bb559ff337386a8864689fa5`  
		Last Modified: Wed, 21 Sep 2016 23:27:00 GMT  
		Size: 6.5 MB (6463142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4e4035cb852e8e33100caa55de50e16d2e81d25ec7a0e18d2809f7271ee7fc`  
		Last Modified: Wed, 21 Sep 2016 23:26:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d6cdd8765ccf5ad807b14d9049b90212761d6aae5d398cf423b594c9208a22`  
		Last Modified: Wed, 21 Sep 2016 23:26:54 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d63a736774742b3e6b4b913fda75035aaf20b6b1b039925a7ca67f587f5f0`  
		Last Modified: Wed, 21 Sep 2016 23:28:08 GMT  
		Size: 51.6 MB (51645695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56355c4cddfcc33feef6295da784c74f5654003765c4bcf7dfcf90dbba0320f7`  
		Last Modified: Wed, 21 Sep 2016 23:27:53 GMT  
		Size: 1.9 KB (1889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20dc4162b26cb69438ecb50512ba49fff70452fc7706bc169ca6797b555a973`  
		Last Modified: Wed, 21 Sep 2016 23:27:54 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f563790f2c3590a83c587d5400abd48bec5c59534a605cbc419c73efc989a0`  
		Last Modified: Wed, 21 Sep 2016 23:27:53 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:9067b3bf058b7ef5b8d9ef4f89b78ccd1fdf8910294f671731df153ceca981a4
```

-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110687133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e638b32c59d4e759b2b457293ffac6b90e551e1f2a8720158a0842ffa1836a75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:06:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Sep 2016 20:06:49 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:07:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:07:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Sep 2016 20:07:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:20:17 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 19 Sep 2016 23:20:17 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 19 Sep 2016 23:24:15 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 21 Sep 2016 23:25:17 GMT
ENV PERCONA_VERSION=5.6.32-78.1-1.jessie
# Wed, 21 Sep 2016 23:25:47 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Sep 2016 23:25:48 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 21 Sep 2016 23:25:49 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 21 Sep 2016 23:25:49 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Wed, 21 Sep 2016 23:25:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Sep 2016 23:25:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Sep 2016 23:25:51 GMT
EXPOSE 3306/tcp
# Wed, 21 Sep 2016 23:25:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24390d0ec05096cfee10b6656e62329383b97a121bcfbc6fafa302fedb254384`  
		Last Modified: Wed, 21 Sep 2016 23:26:59 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b087c53969af16affb7facec319dfd237efd9cccad474786b80517d02620bcc0`  
		Last Modified: Wed, 21 Sep 2016 23:26:58 GMT  
		Size: 1.2 MB (1216261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35757b47748da70c1471893f1fb0269a55e802ff5dc8ebfe838b8cb2f70b7790`  
		Last Modified: Wed, 21 Sep 2016 23:26:55 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42262ab464ee663a4f41469450f1e42de951038bb559ff337386a8864689fa5`  
		Last Modified: Wed, 21 Sep 2016 23:27:00 GMT  
		Size: 6.5 MB (6463142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4e4035cb852e8e33100caa55de50e16d2e81d25ec7a0e18d2809f7271ee7fc`  
		Last Modified: Wed, 21 Sep 2016 23:26:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d6cdd8765ccf5ad807b14d9049b90212761d6aae5d398cf423b594c9208a22`  
		Last Modified: Wed, 21 Sep 2016 23:26:54 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d63a736774742b3e6b4b913fda75035aaf20b6b1b039925a7ca67f587f5f0`  
		Last Modified: Wed, 21 Sep 2016 23:28:08 GMT  
		Size: 51.6 MB (51645695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56355c4cddfcc33feef6295da784c74f5654003765c4bcf7dfcf90dbba0320f7`  
		Last Modified: Wed, 21 Sep 2016 23:27:53 GMT  
		Size: 1.9 KB (1889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20dc4162b26cb69438ecb50512ba49fff70452fc7706bc169ca6797b555a973`  
		Last Modified: Wed, 21 Sep 2016 23:27:54 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f563790f2c3590a83c587d5400abd48bec5c59534a605cbc419c73efc989a0`  
		Last Modified: Wed, 21 Sep 2016 23:27:53 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.51`

```console
$ docker pull percona@sha256:6007959af8bf4aa53c03d38ba5550dbb485d75b344ea3960bd25ef06b2c8ba2f
```

-	Platforms:
	-	linux; amd64

### `percona:5.5.51` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103446778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e01cc1d7efe8d718502537c7a27f7849ddaf1252b88efa6875ac846354aae49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:31:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 29 Jul 2016 19:31:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:32:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jul 2016 19:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 20:06:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 01 Aug 2016 20:07:01 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 01 Aug 2016 20:07:01 GMT
ENV PERCONA_MAJOR=5.5
# Mon, 22 Aug 2016 19:24:15 GMT
ENV PERCONA_VERSION=5.5.51-rel38.1-1.jessie
# Mon, 22 Aug 2016 19:26:08 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 22 Aug 2016 19:26:10 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 22 Aug 2016 19:26:12 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 22 Aug 2016 19:26:13 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/
# Mon, 22 Aug 2016 19:26:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 19:26:17 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:26:18 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:26:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256a92f57ae8b3b993d4378161fc01c2cf6ce79bcdb40e28d709047d4ad4e984`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ee0325fe9179b6df96846b3f1e085c60a34af99c248b2dfccbe37b11fecb7e`  
		Last Modified: Fri, 29 Jul 2016 19:36:32 GMT  
		Size: 1.2 MB (1216540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15deb03758bdc9dabfea84d10f49d05850a117ea3880b9656d8962352aa61bc`  
		Last Modified: Fri, 29 Jul 2016 19:36:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d6cba29d2d6081c6b36b2f3d8b1e9055ce6f55dd355e5367daecaf06eb67e`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 6.5 MB (6463146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c06732aad0780a4f02b516c230f96655aa4d38a703c2f243ce3690c0c1b0a`  
		Last Modified: Mon, 01 Aug 2016 20:09:15 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53c3f0fa092eb28dc7668e7f3f687f747ca8cac2746a4d565abf086ed05cc5`  
		Last Modified: Mon, 01 Aug 2016 20:09:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fef5bb3677ff4209fbee64b7a616803ebafd6acccb7a26265f7ddb52ab58f3`  
		Last Modified: Mon, 22 Aug 2016 19:28:20 GMT  
		Size: 44.4 MB (44394008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4737ba5153c02ce1b6743cdcd775a86811ecbf451e64f92b84c7b3169df23f37`  
		Last Modified: Mon, 22 Aug 2016 19:28:08 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c011f65120c79997802f45d64084275ec7160742eca439451f2219c93a22e74`  
		Last Modified: Mon, 22 Aug 2016 19:28:09 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0998c3f6dcb6aca84a820c4191057d8d86ed171d2c6293fb0c33b709a6749f`  
		Last Modified: Mon, 22 Aug 2016 19:28:08 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:7d6aa0a6204426c9de2abd0242b846a322993d2cfe3cbb2fed2cc213b0f299cb
```

-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103431788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f4ab397775031db252941b97fde498b11ed89f29f25cb4c387f79ad4252e5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:06:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Sep 2016 20:06:49 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:07:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:07:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Sep 2016 20:07:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:20:17 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 19 Sep 2016 23:20:17 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 19 Sep 2016 23:20:43 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 21 Sep 2016 23:25:52 GMT
ENV PERCONA_VERSION=5.5.51-rel38.2-1.jessie
# Wed, 21 Sep 2016 23:26:41 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Sep 2016 23:26:42 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 21 Sep 2016 23:26:43 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 21 Sep 2016 23:26:43 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Wed, 21 Sep 2016 23:26:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Sep 2016 23:26:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Sep 2016 23:26:45 GMT
EXPOSE 3306/tcp
# Wed, 21 Sep 2016 23:26:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24390d0ec05096cfee10b6656e62329383b97a121bcfbc6fafa302fedb254384`  
		Last Modified: Wed, 21 Sep 2016 23:26:59 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b087c53969af16affb7facec319dfd237efd9cccad474786b80517d02620bcc0`  
		Last Modified: Wed, 21 Sep 2016 23:26:58 GMT  
		Size: 1.2 MB (1216261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35757b47748da70c1471893f1fb0269a55e802ff5dc8ebfe838b8cb2f70b7790`  
		Last Modified: Wed, 21 Sep 2016 23:26:55 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42262ab464ee663a4f41469450f1e42de951038bb559ff337386a8864689fa5`  
		Last Modified: Wed, 21 Sep 2016 23:27:00 GMT  
		Size: 6.5 MB (6463142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4e4035cb852e8e33100caa55de50e16d2e81d25ec7a0e18d2809f7271ee7fc`  
		Last Modified: Wed, 21 Sep 2016 23:26:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d6cdd8765ccf5ad807b14d9049b90212761d6aae5d398cf423b594c9208a22`  
		Last Modified: Wed, 21 Sep 2016 23:26:54 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b58f64033cb75e1f1141e22809fe402912faa18d6e19acc043ff53ec938522`  
		Last Modified: Wed, 21 Sep 2016 23:28:44 GMT  
		Size: 44.4 MB (44390351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20cd455dcbd4aa78331fc8ebe1450c9943347ba0627905b94106b18a380bd71`  
		Last Modified: Wed, 21 Sep 2016 23:28:32 GMT  
		Size: 1.9 KB (1888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5f8c2f94690ee152aea3a5222ac63051d0b578b968b4f5caf76d099fe88360`  
		Last Modified: Wed, 21 Sep 2016 23:28:32 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81cd0a6b6144504e00df4022d25555af66d59e8faf82efd2e5d6871512bfa5b`  
		Last Modified: Wed, 21 Sep 2016 23:28:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
