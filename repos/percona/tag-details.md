<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.5`](#percona55)
-	[`percona:5.5.58`](#percona5558)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.38`](#percona5638)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.20`](#percona5720)
-	[`percona:latest`](#perconalatest)

## `percona:5`

```console
$ docker pull percona@sha256:d211ef45100813ebce9026163e562e226fecc1fce6b8b1af6baeed54ebf77a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:6a7681616af89ee4706b5aace8f2f1a4df93fb988e64a007c9f960a624c5e5e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141148084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc189d65dd082c9976fa8257f3b048f02b4f02d5ea581f0de8d507378b2370d5`
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
# Tue, 12 Dec 2017 02:38:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:33 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Dec 2017 02:38:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:38:37 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 12 Dec 2017 02:38:37 GMT
ENV PERCONA_MAJOR=5.7
# Thu, 04 Jan 2018 00:06:34 GMT
ENV PERCONA_VERSION=5.7.20-19-1.jessie
# Thu, 04 Jan 2018 00:07:10 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 04 Jan 2018 00:07:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 04 Jan 2018 00:07:11 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Thu, 04 Jan 2018 00:07:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 04 Jan 2018 00:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 00:07:20 GMT
EXPOSE 3306/tcp
# Thu, 04 Jan 2018 00:07:20 GMT
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
	-	`sha256:cf376ff5a98933d3c67cab6adb1a5a81e906ca6897c969642075a7c4ae000026`  
		Last Modified: Tue, 12 Dec 2017 02:42:13 GMT  
		Size: 6.7 MB (6671940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9df53b4003260bf8073ebb405bd35c389e52bc898d7bef76e0bed848d67fb1`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d585cd2f11d440f78ff01fda4460b314ed1da81c6f74e8fb611b635860438168`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce6b7724ec77fcf59037025db7acb7193a2d99b55568a6147f3a82b15909d15`  
		Last Modified: Thu, 04 Jan 2018 00:08:10 GMT  
		Size: 80.6 MB (80563772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df1e8566cce6977ebed1d2cdb4d58d7ad37a9e500a2b4314cc16b6d30994472`  
		Last Modified: Thu, 04 Jan 2018 00:07:57 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff57fe82a4ea88e0dca9410719305531fa30793f8f21b4285cf4d2d7578d83d6`  
		Last Modified: Thu, 04 Jan 2018 00:07:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:fbd3fd5ce8144336a876cab58f8d1ea2043be23f04cb5f1cf828f9374cb9ab3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:df836057907fcedd2e6be317571024ecdc9af678d05e3e4ecaaa4f3bbc9e694f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105690953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ea79fe18f2c708648ab2f42076124179e144ba038e95cf0ab7c73300693778`
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
# Tue, 12 Dec 2017 02:38:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:33 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Dec 2017 02:38:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:38:37 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 12 Dec 2017 02:40:48 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 12 Dec 2017 02:40:48 GMT
ENV PERCONA_VERSION=5.5.58-rel38.10-1.jessie
# Tue, 12 Dec 2017 02:41:38 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Dec 2017 02:41:44 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 12 Dec 2017 02:41:45 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:41:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 02:41:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:41:46 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:41:46 GMT
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
	-	`sha256:cf376ff5a98933d3c67cab6adb1a5a81e906ca6897c969642075a7c4ae000026`  
		Last Modified: Tue, 12 Dec 2017 02:42:13 GMT  
		Size: 6.7 MB (6671940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9df53b4003260bf8073ebb405bd35c389e52bc898d7bef76e0bed848d67fb1`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d585cd2f11d440f78ff01fda4460b314ed1da81c6f74e8fb611b635860438168`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724522dbc62fb2023e9b881f18c97d4f05038a35866e972979af6dcea912fc0`  
		Last Modified: Tue, 12 Dec 2017 02:49:12 GMT  
		Size: 45.1 MB (45106650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218b237342e9fe2794e45a9954aedee57f7125a772711c0121764affee766588`  
		Last Modified: Tue, 12 Dec 2017 02:49:03 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d861626c56c856c1104c42ad5b8d3b9447a2b77651a2d2ed73b7a1829b24e8b`  
		Last Modified: Tue, 12 Dec 2017 02:49:02 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.58`

```console
$ docker pull percona@sha256:fbd3fd5ce8144336a876cab58f8d1ea2043be23f04cb5f1cf828f9374cb9ab3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.58` - linux; amd64

```console
$ docker pull percona@sha256:df836057907fcedd2e6be317571024ecdc9af678d05e3e4ecaaa4f3bbc9e694f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105690953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ea79fe18f2c708648ab2f42076124179e144ba038e95cf0ab7c73300693778`
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
# Tue, 12 Dec 2017 02:38:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:33 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Dec 2017 02:38:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:38:37 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 12 Dec 2017 02:40:48 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 12 Dec 2017 02:40:48 GMT
ENV PERCONA_VERSION=5.5.58-rel38.10-1.jessie
# Tue, 12 Dec 2017 02:41:38 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Dec 2017 02:41:44 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 12 Dec 2017 02:41:45 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:41:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 02:41:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:41:46 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:41:46 GMT
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
	-	`sha256:cf376ff5a98933d3c67cab6adb1a5a81e906ca6897c969642075a7c4ae000026`  
		Last Modified: Tue, 12 Dec 2017 02:42:13 GMT  
		Size: 6.7 MB (6671940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9df53b4003260bf8073ebb405bd35c389e52bc898d7bef76e0bed848d67fb1`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d585cd2f11d440f78ff01fda4460b314ed1da81c6f74e8fb611b635860438168`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724522dbc62fb2023e9b881f18c97d4f05038a35866e972979af6dcea912fc0`  
		Last Modified: Tue, 12 Dec 2017 02:49:12 GMT  
		Size: 45.1 MB (45106650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218b237342e9fe2794e45a9954aedee57f7125a772711c0121764affee766588`  
		Last Modified: Tue, 12 Dec 2017 02:49:03 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d861626c56c856c1104c42ad5b8d3b9447a2b77651a2d2ed73b7a1829b24e8b`  
		Last Modified: Tue, 12 Dec 2017 02:49:02 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:0573af4af38bb20ae222c3f12c19d8f1c416065d08e172a8abdc9942b2655495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:51535ff9f73daf46c9a31bf346102f6fb9f26f3d57ccd078ddc1cfad0fd1cc69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113562787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eba69316e281f63dd1b34441e96be4c68c2de009259c7e6753c5d552d419394`
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
# Tue, 12 Dec 2017 02:38:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:33 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Dec 2017 02:38:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:38:37 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 12 Dec 2017 02:39:41 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 12 Dec 2017 02:39:41 GMT
ENV PERCONA_VERSION=5.6.38-83.0-1.jessie
# Tue, 12 Dec 2017 02:40:17 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Dec 2017 02:40:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 12 Dec 2017 02:40:18 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:40:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 02:40:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:40:19 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:40:20 GMT
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
	-	`sha256:cf376ff5a98933d3c67cab6adb1a5a81e906ca6897c969642075a7c4ae000026`  
		Last Modified: Tue, 12 Dec 2017 02:42:13 GMT  
		Size: 6.7 MB (6671940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9df53b4003260bf8073ebb405bd35c389e52bc898d7bef76e0bed848d67fb1`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d585cd2f11d440f78ff01fda4460b314ed1da81c6f74e8fb611b635860438168`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8408d8c7d6adf373ec2577c29c7a860f29f1c43ad6b14e3c30d02c9dc11ff16`  
		Last Modified: Tue, 12 Dec 2017 02:43:23 GMT  
		Size: 53.0 MB (52978476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2150bc10616318e7ccb6433eca3b5047f86a1f1c69f319f495d488465a0e4e`  
		Last Modified: Tue, 12 Dec 2017 02:43:08 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739647b0cb87a08a339d1f78f96b9b11b17cb25dd4b8e753cb69f93c904ce350`  
		Last Modified: Tue, 12 Dec 2017 02:43:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.38`

```console
$ docker pull percona@sha256:0573af4af38bb20ae222c3f12c19d8f1c416065d08e172a8abdc9942b2655495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.38` - linux; amd64

```console
$ docker pull percona@sha256:51535ff9f73daf46c9a31bf346102f6fb9f26f3d57ccd078ddc1cfad0fd1cc69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113562787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eba69316e281f63dd1b34441e96be4c68c2de009259c7e6753c5d552d419394`
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
# Tue, 12 Dec 2017 02:38:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:33 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Dec 2017 02:38:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:38:37 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 12 Dec 2017 02:39:41 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 12 Dec 2017 02:39:41 GMT
ENV PERCONA_VERSION=5.6.38-83.0-1.jessie
# Tue, 12 Dec 2017 02:40:17 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Dec 2017 02:40:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 12 Dec 2017 02:40:18 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:40:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 02:40:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:40:19 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:40:20 GMT
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
	-	`sha256:cf376ff5a98933d3c67cab6adb1a5a81e906ca6897c969642075a7c4ae000026`  
		Last Modified: Tue, 12 Dec 2017 02:42:13 GMT  
		Size: 6.7 MB (6671940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9df53b4003260bf8073ebb405bd35c389e52bc898d7bef76e0bed848d67fb1`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d585cd2f11d440f78ff01fda4460b314ed1da81c6f74e8fb611b635860438168`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8408d8c7d6adf373ec2577c29c7a860f29f1c43ad6b14e3c30d02c9dc11ff16`  
		Last Modified: Tue, 12 Dec 2017 02:43:23 GMT  
		Size: 53.0 MB (52978476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2150bc10616318e7ccb6433eca3b5047f86a1f1c69f319f495d488465a0e4e`  
		Last Modified: Tue, 12 Dec 2017 02:43:08 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739647b0cb87a08a339d1f78f96b9b11b17cb25dd4b8e753cb69f93c904ce350`  
		Last Modified: Tue, 12 Dec 2017 02:43:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:d211ef45100813ebce9026163e562e226fecc1fce6b8b1af6baeed54ebf77a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:6a7681616af89ee4706b5aace8f2f1a4df93fb988e64a007c9f960a624c5e5e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141148084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc189d65dd082c9976fa8257f3b048f02b4f02d5ea581f0de8d507378b2370d5`
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
# Tue, 12 Dec 2017 02:38:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:33 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Dec 2017 02:38:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:38:37 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 12 Dec 2017 02:38:37 GMT
ENV PERCONA_MAJOR=5.7
# Thu, 04 Jan 2018 00:06:34 GMT
ENV PERCONA_VERSION=5.7.20-19-1.jessie
# Thu, 04 Jan 2018 00:07:10 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 04 Jan 2018 00:07:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 04 Jan 2018 00:07:11 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Thu, 04 Jan 2018 00:07:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 04 Jan 2018 00:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 00:07:20 GMT
EXPOSE 3306/tcp
# Thu, 04 Jan 2018 00:07:20 GMT
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
	-	`sha256:cf376ff5a98933d3c67cab6adb1a5a81e906ca6897c969642075a7c4ae000026`  
		Last Modified: Tue, 12 Dec 2017 02:42:13 GMT  
		Size: 6.7 MB (6671940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9df53b4003260bf8073ebb405bd35c389e52bc898d7bef76e0bed848d67fb1`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d585cd2f11d440f78ff01fda4460b314ed1da81c6f74e8fb611b635860438168`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce6b7724ec77fcf59037025db7acb7193a2d99b55568a6147f3a82b15909d15`  
		Last Modified: Thu, 04 Jan 2018 00:08:10 GMT  
		Size: 80.6 MB (80563772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df1e8566cce6977ebed1d2cdb4d58d7ad37a9e500a2b4314cc16b6d30994472`  
		Last Modified: Thu, 04 Jan 2018 00:07:57 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff57fe82a4ea88e0dca9410719305531fa30793f8f21b4285cf4d2d7578d83d6`  
		Last Modified: Thu, 04 Jan 2018 00:07:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.20`

```console
$ docker pull percona@sha256:d211ef45100813ebce9026163e562e226fecc1fce6b8b1af6baeed54ebf77a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.20` - linux; amd64

```console
$ docker pull percona@sha256:6a7681616af89ee4706b5aace8f2f1a4df93fb988e64a007c9f960a624c5e5e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141148084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc189d65dd082c9976fa8257f3b048f02b4f02d5ea581f0de8d507378b2370d5`
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
# Tue, 12 Dec 2017 02:38:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:33 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Dec 2017 02:38:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:38:37 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 12 Dec 2017 02:38:37 GMT
ENV PERCONA_MAJOR=5.7
# Thu, 04 Jan 2018 00:06:34 GMT
ENV PERCONA_VERSION=5.7.20-19-1.jessie
# Thu, 04 Jan 2018 00:07:10 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 04 Jan 2018 00:07:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 04 Jan 2018 00:07:11 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Thu, 04 Jan 2018 00:07:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 04 Jan 2018 00:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 00:07:20 GMT
EXPOSE 3306/tcp
# Thu, 04 Jan 2018 00:07:20 GMT
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
	-	`sha256:cf376ff5a98933d3c67cab6adb1a5a81e906ca6897c969642075a7c4ae000026`  
		Last Modified: Tue, 12 Dec 2017 02:42:13 GMT  
		Size: 6.7 MB (6671940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9df53b4003260bf8073ebb405bd35c389e52bc898d7bef76e0bed848d67fb1`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d585cd2f11d440f78ff01fda4460b314ed1da81c6f74e8fb611b635860438168`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce6b7724ec77fcf59037025db7acb7193a2d99b55568a6147f3a82b15909d15`  
		Last Modified: Thu, 04 Jan 2018 00:08:10 GMT  
		Size: 80.6 MB (80563772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df1e8566cce6977ebed1d2cdb4d58d7ad37a9e500a2b4314cc16b6d30994472`  
		Last Modified: Thu, 04 Jan 2018 00:07:57 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff57fe82a4ea88e0dca9410719305531fa30793f8f21b4285cf4d2d7578d83d6`  
		Last Modified: Thu, 04 Jan 2018 00:07:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:d211ef45100813ebce9026163e562e226fecc1fce6b8b1af6baeed54ebf77a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:6a7681616af89ee4706b5aace8f2f1a4df93fb988e64a007c9f960a624c5e5e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141148084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc189d65dd082c9976fa8257f3b048f02b4f02d5ea581f0de8d507378b2370d5`
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
# Tue, 12 Dec 2017 02:38:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:33 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Dec 2017 02:38:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:38:37 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 12 Dec 2017 02:38:37 GMT
ENV PERCONA_MAJOR=5.7
# Thu, 04 Jan 2018 00:06:34 GMT
ENV PERCONA_VERSION=5.7.20-19-1.jessie
# Thu, 04 Jan 2018 00:07:10 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 04 Jan 2018 00:07:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 04 Jan 2018 00:07:11 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Thu, 04 Jan 2018 00:07:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 04 Jan 2018 00:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 00:07:20 GMT
EXPOSE 3306/tcp
# Thu, 04 Jan 2018 00:07:20 GMT
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
	-	`sha256:cf376ff5a98933d3c67cab6adb1a5a81e906ca6897c969642075a7c4ae000026`  
		Last Modified: Tue, 12 Dec 2017 02:42:13 GMT  
		Size: 6.7 MB (6671940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9df53b4003260bf8073ebb405bd35c389e52bc898d7bef76e0bed848d67fb1`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d585cd2f11d440f78ff01fda4460b314ed1da81c6f74e8fb611b635860438168`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce6b7724ec77fcf59037025db7acb7193a2d99b55568a6147f3a82b15909d15`  
		Last Modified: Thu, 04 Jan 2018 00:08:10 GMT  
		Size: 80.6 MB (80563772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df1e8566cce6977ebed1d2cdb4d58d7ad37a9e500a2b4314cc16b6d30994472`  
		Last Modified: Thu, 04 Jan 2018 00:07:57 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff57fe82a4ea88e0dca9410719305531fa30793f8f21b4285cf4d2d7578d83d6`  
		Last Modified: Thu, 04 Jan 2018 00:07:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
