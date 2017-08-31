<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5.7.19`](#percona5719)
-	[`percona:5.7`](#percona57)
-	[`percona:5`](#percona5)
-	[`percona:latest`](#perconalatest)
-	[`percona:5.6.37`](#percona5637)
-	[`percona:5.6`](#percona56)
-	[`percona:5.5.57`](#percona5557)
-	[`percona:5.5`](#percona55)

## `percona:5.7.19`

```console
$ docker pull percona@sha256:d654b6ddd3069a51cbf5107277fc134d030737ddca187f73df5cd12396195741
```

-	Platforms:
	-	linux; amd64

### `percona:5.7.19` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140348089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3511e19ff90580ea17556e4f6b5cbc0991a0cf7bac8499504b204823df9bea2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:26:30 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 08:26:35 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:26:35 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 26 Jul 2017 08:26:36 GMT
ENV PERCONA_MAJOR=5.7
# Thu, 31 Aug 2017 18:10:58 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Thu, 31 Aug 2017 18:12:04 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 31 Aug 2017 18:12:06 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 31 Aug 2017 18:12:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 31 Aug 2017 18:12:07 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:12:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 18:12:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 18:12:10 GMT
EXPOSE 3306/tcp
# Thu, 31 Aug 2017 18:12:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de9797bbfe672b412f44960a09dec3fa65eee99412400e571e142fc6a72434c`  
		Last Modified: Wed, 26 Jul 2017 08:29:09 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90430f3735ab597975169bfd5335482bad21b2d09cefc17c596fddf276b43dac`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4e471ce15b3c6b1a418c8d0d490c24d6ce44c9eeb4acdfc4b8c3b87b6463fd`  
		Last Modified: Thu, 31 Aug 2017 18:12:46 GMT  
		Size: 79.8 MB (79759299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3572388fe4efd9ec722ce8424c51dd1a619946abb56b54ad1e2809252947697`  
		Last Modified: Thu, 31 Aug 2017 18:12:25 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c6583e8065c0e2fe2607a448d0f276e4d603bab0d19533d7879b5402aa16ff`  
		Last Modified: Thu, 31 Aug 2017 18:12:24 GMT  
		Size: 2.2 KB (2158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3e84e365a35ccb84ba87eb5acb3d3891c60d5628f34e42a9e23b9b32085edb`  
		Last Modified: Thu, 31 Aug 2017 18:12:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:d654b6ddd3069a51cbf5107277fc134d030737ddca187f73df5cd12396195741
```

-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140348089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3511e19ff90580ea17556e4f6b5cbc0991a0cf7bac8499504b204823df9bea2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:26:30 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 08:26:35 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:26:35 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 26 Jul 2017 08:26:36 GMT
ENV PERCONA_MAJOR=5.7
# Thu, 31 Aug 2017 18:10:58 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Thu, 31 Aug 2017 18:12:04 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 31 Aug 2017 18:12:06 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 31 Aug 2017 18:12:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 31 Aug 2017 18:12:07 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:12:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 18:12:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 18:12:10 GMT
EXPOSE 3306/tcp
# Thu, 31 Aug 2017 18:12:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de9797bbfe672b412f44960a09dec3fa65eee99412400e571e142fc6a72434c`  
		Last Modified: Wed, 26 Jul 2017 08:29:09 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90430f3735ab597975169bfd5335482bad21b2d09cefc17c596fddf276b43dac`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4e471ce15b3c6b1a418c8d0d490c24d6ce44c9eeb4acdfc4b8c3b87b6463fd`  
		Last Modified: Thu, 31 Aug 2017 18:12:46 GMT  
		Size: 79.8 MB (79759299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3572388fe4efd9ec722ce8424c51dd1a619946abb56b54ad1e2809252947697`  
		Last Modified: Thu, 31 Aug 2017 18:12:25 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c6583e8065c0e2fe2607a448d0f276e4d603bab0d19533d7879b5402aa16ff`  
		Last Modified: Thu, 31 Aug 2017 18:12:24 GMT  
		Size: 2.2 KB (2158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3e84e365a35ccb84ba87eb5acb3d3891c60d5628f34e42a9e23b9b32085edb`  
		Last Modified: Thu, 31 Aug 2017 18:12:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5`

```console
$ docker pull percona@sha256:d654b6ddd3069a51cbf5107277fc134d030737ddca187f73df5cd12396195741
```

-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140348089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3511e19ff90580ea17556e4f6b5cbc0991a0cf7bac8499504b204823df9bea2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:26:30 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 08:26:35 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:26:35 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 26 Jul 2017 08:26:36 GMT
ENV PERCONA_MAJOR=5.7
# Thu, 31 Aug 2017 18:10:58 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Thu, 31 Aug 2017 18:12:04 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 31 Aug 2017 18:12:06 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 31 Aug 2017 18:12:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 31 Aug 2017 18:12:07 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:12:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 18:12:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 18:12:10 GMT
EXPOSE 3306/tcp
# Thu, 31 Aug 2017 18:12:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de9797bbfe672b412f44960a09dec3fa65eee99412400e571e142fc6a72434c`  
		Last Modified: Wed, 26 Jul 2017 08:29:09 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90430f3735ab597975169bfd5335482bad21b2d09cefc17c596fddf276b43dac`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4e471ce15b3c6b1a418c8d0d490c24d6ce44c9eeb4acdfc4b8c3b87b6463fd`  
		Last Modified: Thu, 31 Aug 2017 18:12:46 GMT  
		Size: 79.8 MB (79759299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3572388fe4efd9ec722ce8424c51dd1a619946abb56b54ad1e2809252947697`  
		Last Modified: Thu, 31 Aug 2017 18:12:25 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c6583e8065c0e2fe2607a448d0f276e4d603bab0d19533d7879b5402aa16ff`  
		Last Modified: Thu, 31 Aug 2017 18:12:24 GMT  
		Size: 2.2 KB (2158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3e84e365a35ccb84ba87eb5acb3d3891c60d5628f34e42a9e23b9b32085edb`  
		Last Modified: Thu, 31 Aug 2017 18:12:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:d654b6ddd3069a51cbf5107277fc134d030737ddca187f73df5cd12396195741
```

-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140348089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3511e19ff90580ea17556e4f6b5cbc0991a0cf7bac8499504b204823df9bea2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:26:30 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 08:26:35 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:26:35 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 26 Jul 2017 08:26:36 GMT
ENV PERCONA_MAJOR=5.7
# Thu, 31 Aug 2017 18:10:58 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Thu, 31 Aug 2017 18:12:04 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 31 Aug 2017 18:12:06 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 31 Aug 2017 18:12:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 31 Aug 2017 18:12:07 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:12:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 Aug 2017 18:12:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 18:12:10 GMT
EXPOSE 3306/tcp
# Thu, 31 Aug 2017 18:12:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de9797bbfe672b412f44960a09dec3fa65eee99412400e571e142fc6a72434c`  
		Last Modified: Wed, 26 Jul 2017 08:29:09 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90430f3735ab597975169bfd5335482bad21b2d09cefc17c596fddf276b43dac`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4e471ce15b3c6b1a418c8d0d490c24d6ce44c9eeb4acdfc4b8c3b87b6463fd`  
		Last Modified: Thu, 31 Aug 2017 18:12:46 GMT  
		Size: 79.8 MB (79759299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3572388fe4efd9ec722ce8424c51dd1a619946abb56b54ad1e2809252947697`  
		Last Modified: Thu, 31 Aug 2017 18:12:25 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c6583e8065c0e2fe2607a448d0f276e4d603bab0d19533d7879b5402aa16ff`  
		Last Modified: Thu, 31 Aug 2017 18:12:24 GMT  
		Size: 2.2 KB (2158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3e84e365a35ccb84ba87eb5acb3d3891c60d5628f34e42a9e23b9b32085edb`  
		Last Modified: Thu, 31 Aug 2017 18:12:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.37`

```console
$ docker pull percona@sha256:2849f5d2bd9b6c5728b1750945b7bfc60ce26eec90dcf68eb5764f13ae1b2cca
```

-	Platforms:
	-	linux; amd64

### `percona:5.6.37` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113637722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a256ce11fd2ba3aa494ef2298500a62b9c19e52b6157b89bcbd9db0a09593f3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:26:30 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 08:26:35 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:26:35 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 26 Jul 2017 08:27:18 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 25 Aug 2017 21:23:32 GMT
ENV PERCONA_VERSION=5.6.37-82.2-1.jessie
# Fri, 25 Aug 2017 21:24:17 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 25 Aug 2017 21:24:18 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 25 Aug 2017 21:24:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 25 Aug 2017 21:24:19 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Fri, 25 Aug 2017 21:24:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 25 Aug 2017 21:24:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:24:20 GMT
EXPOSE 3306/tcp
# Fri, 25 Aug 2017 21:24:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de9797bbfe672b412f44960a09dec3fa65eee99412400e571e142fc6a72434c`  
		Last Modified: Wed, 26 Jul 2017 08:29:09 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90430f3735ab597975169bfd5335482bad21b2d09cefc17c596fddf276b43dac`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae68b435029b3e0864b754a58fbb32467b21bebe74412505674f89093bac481`  
		Last Modified: Fri, 25 Aug 2017 21:31:24 GMT  
		Size: 53.0 MB (53047761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239d8e13656f2b25e6748ccca97e712bbf4e048b6abd2896f5b1a7cc4015357f`  
		Last Modified: Fri, 25 Aug 2017 21:31:11 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd152f430815419bdd2b1a4c719c466184d7f41a7c2b88dcd83dcb2e5826b821`  
		Last Modified: Fri, 25 Aug 2017 21:31:11 GMT  
		Size: 2.2 KB (2158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb3a1b65ad512cc806d0da6143379bfd4af463022e51ff807d4239a7c778636`  
		Last Modified: Fri, 25 Aug 2017 21:31:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:2849f5d2bd9b6c5728b1750945b7bfc60ce26eec90dcf68eb5764f13ae1b2cca
```

-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113637722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a256ce11fd2ba3aa494ef2298500a62b9c19e52b6157b89bcbd9db0a09593f3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:26:30 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 08:26:35 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:26:35 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 26 Jul 2017 08:27:18 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 25 Aug 2017 21:23:32 GMT
ENV PERCONA_VERSION=5.6.37-82.2-1.jessie
# Fri, 25 Aug 2017 21:24:17 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 25 Aug 2017 21:24:18 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 25 Aug 2017 21:24:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 25 Aug 2017 21:24:19 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Fri, 25 Aug 2017 21:24:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 25 Aug 2017 21:24:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:24:20 GMT
EXPOSE 3306/tcp
# Fri, 25 Aug 2017 21:24:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de9797bbfe672b412f44960a09dec3fa65eee99412400e571e142fc6a72434c`  
		Last Modified: Wed, 26 Jul 2017 08:29:09 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90430f3735ab597975169bfd5335482bad21b2d09cefc17c596fddf276b43dac`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae68b435029b3e0864b754a58fbb32467b21bebe74412505674f89093bac481`  
		Last Modified: Fri, 25 Aug 2017 21:31:24 GMT  
		Size: 53.0 MB (53047761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239d8e13656f2b25e6748ccca97e712bbf4e048b6abd2896f5b1a7cc4015357f`  
		Last Modified: Fri, 25 Aug 2017 21:31:11 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd152f430815419bdd2b1a4c719c466184d7f41a7c2b88dcd83dcb2e5826b821`  
		Last Modified: Fri, 25 Aug 2017 21:31:11 GMT  
		Size: 2.2 KB (2158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb3a1b65ad512cc806d0da6143379bfd4af463022e51ff807d4239a7c778636`  
		Last Modified: Fri, 25 Aug 2017 21:31:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.57`

```console
$ docker pull percona@sha256:064af6e7150dfb1b08d7c052a4dec5672d5420fc7c9a2e2c3585f42dde332849
```

-	Platforms:
	-	linux; amd64

### `percona:5.5.57` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105707800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf2dadb08b6952b7846b443e02900accefc24849b4a60f4a5441d6a2d446f56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:26:30 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 08:26:35 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:26:35 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 26 Jul 2017 08:28:03 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 23 Aug 2017 21:55:57 GMT
ENV PERCONA_VERSION=5.5.57-rel38.9-1.jessie
# Wed, 23 Aug 2017 21:56:57 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 23 Aug 2017 21:56:58 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Aug 2017 21:56:58 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 23 Aug 2017 21:56:58 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 23 Aug 2017 21:56:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Aug 2017 21:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Aug 2017 21:57:00 GMT
EXPOSE 3306/tcp
# Wed, 23 Aug 2017 21:57:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de9797bbfe672b412f44960a09dec3fa65eee99412400e571e142fc6a72434c`  
		Last Modified: Wed, 26 Jul 2017 08:29:09 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90430f3735ab597975169bfd5335482bad21b2d09cefc17c596fddf276b43dac`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5543afc9be0d12727a9773c694dcdcb752770f659cdb0ef02ecf84174726803c`  
		Last Modified: Wed, 23 Aug 2017 21:57:57 GMT  
		Size: 45.1 MB (45117839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10be27bcde05834ec79f6396dee749c6d74535f864abc3bdd46cf1cd5d8a7692`  
		Last Modified: Wed, 23 Aug 2017 21:57:49 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cf0c8f388f98159cb492ca922b2ed16c9126820493604198d8bfd343cf7588`  
		Last Modified: Wed, 23 Aug 2017 21:57:49 GMT  
		Size: 2.2 KB (2159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fcab238e1e7d04b12492c6f830977c152333b97ea7c22c9015daa2d5e62a66`  
		Last Modified: Wed, 23 Aug 2017 21:57:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:064af6e7150dfb1b08d7c052a4dec5672d5420fc7c9a2e2c3585f42dde332849
```

-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105707800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf2dadb08b6952b7846b443e02900accefc24849b4a60f4a5441d6a2d446f56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:26:30 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 08:26:35 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:26:35 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 26 Jul 2017 08:28:03 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 23 Aug 2017 21:55:57 GMT
ENV PERCONA_VERSION=5.5.57-rel38.9-1.jessie
# Wed, 23 Aug 2017 21:56:57 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 23 Aug 2017 21:56:58 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Aug 2017 21:56:58 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 23 Aug 2017 21:56:58 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 23 Aug 2017 21:56:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Aug 2017 21:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Aug 2017 21:57:00 GMT
EXPOSE 3306/tcp
# Wed, 23 Aug 2017 21:57:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de9797bbfe672b412f44960a09dec3fa65eee99412400e571e142fc6a72434c`  
		Last Modified: Wed, 26 Jul 2017 08:29:09 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90430f3735ab597975169bfd5335482bad21b2d09cefc17c596fddf276b43dac`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5543afc9be0d12727a9773c694dcdcb752770f659cdb0ef02ecf84174726803c`  
		Last Modified: Wed, 23 Aug 2017 21:57:57 GMT  
		Size: 45.1 MB (45117839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10be27bcde05834ec79f6396dee749c6d74535f864abc3bdd46cf1cd5d8a7692`  
		Last Modified: Wed, 23 Aug 2017 21:57:49 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cf0c8f388f98159cb492ca922b2ed16c9126820493604198d8bfd343cf7588`  
		Last Modified: Wed, 23 Aug 2017 21:57:49 GMT  
		Size: 2.2 KB (2159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fcab238e1e7d04b12492c6f830977c152333b97ea7c22c9015daa2d5e62a66`  
		Last Modified: Wed, 23 Aug 2017 21:57:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
