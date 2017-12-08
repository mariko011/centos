<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.5`](#percona55)
-	[`percona:5.5.58`](#percona5558)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.37`](#percona5637)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.19`](#percona5719)
-	[`percona:latest`](#perconalatest)

## `percona:5`

```console
$ docker pull percona@sha256:8e74fd9a12f630ebb2ade3fb95db0ad5e353ecf3fdad9689814e4d64e0dc2e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:d147226759b31dbe8ef7576fd5d24d2b481f5896f55408103a7f06fc6f2e305d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140333238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84b010bb1a01b694a333a6d448bef3c4bce50d321c6d5226a46b8e8e534891`
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
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:34:15 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 05:34:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 05:34:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 04 Nov 2017 05:34:19 GMT
ENV PERCONA_MAJOR=5.7
# Sat, 04 Nov 2017 05:34:19 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Sat, 04 Nov 2017 05:34:49 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 05:34:49 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 04 Nov 2017 05:34:50 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Sat, 04 Nov 2017 05:34:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 05:34:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 05:34:51 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 05:34:51 GMT
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
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a615e60d11df76f7526fad820691f70f9919dbabc7aa4f0f86fb78b125c45`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3ef53aa42188ea244b21b5f55d29b96909d4af9c5a19fa1e6fbabcb9d00f3`  
		Last Modified: Sat, 04 Nov 2017 05:36:41 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2039fa382c6916cb65a63b7d5554915621d15d0c0d98fd097cea406ebeecf`  
		Last Modified: Sat, 04 Nov 2017 05:36:54 GMT  
		Size: 79.8 MB (79754852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85125c500b8a7331c166669d07188ca91d73e5aa5c3eae1d1f8075828f03aad4`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a3381fa39fc72da76d0d90f92a033daa57bf957fd08bb4085313b9f7898b1b`  
		Last Modified: Sat, 04 Nov 2017 05:36:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:3e3c8cfa0d07748b0de7798239aead1fa1ea71fa9a2db2fda977c75c7c761b86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:c5b0c34eadd4c9e6f6542d80e744a79b84431ebf89ea9a6bfb05807eee513769
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105684809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d35c5eb4561ce433c1f9a97d7d47cbb05ecfd75e34665ef3c60e7d8fb5c164`
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
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:34:15 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 05:34:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 05:34:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 04 Nov 2017 05:35:38 GMT
ENV PERCONA_MAJOR=5.5
# Fri, 08 Dec 2017 18:42:59 GMT
ENV PERCONA_VERSION=5.5.58-rel38.10-1.jessie
# Fri, 08 Dec 2017 18:43:46 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Dec 2017 18:47:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 08 Dec 2017 18:47:12 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Fri, 08 Dec 2017 18:47:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Dec 2017 18:47:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Dec 2017 18:47:13 GMT
EXPOSE 3306/tcp
# Fri, 08 Dec 2017 18:47:14 GMT
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
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a615e60d11df76f7526fad820691f70f9919dbabc7aa4f0f86fb78b125c45`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3ef53aa42188ea244b21b5f55d29b96909d4af9c5a19fa1e6fbabcb9d00f3`  
		Last Modified: Sat, 04 Nov 2017 05:36:41 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9faf7d1408c37a6608e00dea38f8d5ad446c4e3904e3dde384a1ca2c2915ccc`  
		Last Modified: Fri, 08 Dec 2017 18:52:59 GMT  
		Size: 45.1 MB (45106424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388dd9b4865fe5eb937adbd4de49951c87a1ead27cc889a1a8c7ab8b4eaf844f`  
		Last Modified: Fri, 08 Dec 2017 18:52:50 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a8035f303274bbb988acd73dfe9313c6ae3a02f5408507061f41920430f55e`  
		Last Modified: Fri, 08 Dec 2017 18:52:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.58`

```console
$ docker pull percona@sha256:3e3c8cfa0d07748b0de7798239aead1fa1ea71fa9a2db2fda977c75c7c761b86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.58` - linux; amd64

```console
$ docker pull percona@sha256:c5b0c34eadd4c9e6f6542d80e744a79b84431ebf89ea9a6bfb05807eee513769
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105684809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d35c5eb4561ce433c1f9a97d7d47cbb05ecfd75e34665ef3c60e7d8fb5c164`
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
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:34:15 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 05:34:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 05:34:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 04 Nov 2017 05:35:38 GMT
ENV PERCONA_MAJOR=5.5
# Fri, 08 Dec 2017 18:42:59 GMT
ENV PERCONA_VERSION=5.5.58-rel38.10-1.jessie
# Fri, 08 Dec 2017 18:43:46 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Dec 2017 18:47:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 08 Dec 2017 18:47:12 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Fri, 08 Dec 2017 18:47:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Dec 2017 18:47:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Dec 2017 18:47:13 GMT
EXPOSE 3306/tcp
# Fri, 08 Dec 2017 18:47:14 GMT
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
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a615e60d11df76f7526fad820691f70f9919dbabc7aa4f0f86fb78b125c45`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3ef53aa42188ea244b21b5f55d29b96909d4af9c5a19fa1e6fbabcb9d00f3`  
		Last Modified: Sat, 04 Nov 2017 05:36:41 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9faf7d1408c37a6608e00dea38f8d5ad446c4e3904e3dde384a1ca2c2915ccc`  
		Last Modified: Fri, 08 Dec 2017 18:52:59 GMT  
		Size: 45.1 MB (45106424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388dd9b4865fe5eb937adbd4de49951c87a1ead27cc889a1a8c7ab8b4eaf844f`  
		Last Modified: Fri, 08 Dec 2017 18:52:50 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a8035f303274bbb988acd73dfe9313c6ae3a02f5408507061f41920430f55e`  
		Last Modified: Fri, 08 Dec 2017 18:52:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:dd09e439e4930867812cfc0071d2d4a7f8ac0eb3fa53aee75253acad15137a4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:dda817e77f58469ced9fe2c24d7ffffcd6447014ebb320d40481aa6b91aa636d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113617113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7c5e8b6b2df19479f4eb4f301de87ff78ecb1a67b73fd6f62a9fbb99799401`
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
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:34:15 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 05:34:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 05:34:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 04 Nov 2017 05:34:58 GMT
ENV PERCONA_MAJOR=5.6
# Sat, 04 Nov 2017 05:34:58 GMT
ENV PERCONA_VERSION=5.6.37-82.2-1.jessie
# Sat, 04 Nov 2017 05:35:29 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 05:35:29 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 04 Nov 2017 05:35:29 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Sat, 04 Nov 2017 05:35:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 05:35:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 05:35:31 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 05:35:31 GMT
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
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a615e60d11df76f7526fad820691f70f9919dbabc7aa4f0f86fb78b125c45`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3ef53aa42188ea244b21b5f55d29b96909d4af9c5a19fa1e6fbabcb9d00f3`  
		Last Modified: Sat, 04 Nov 2017 05:36:41 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3bb2f51224b640a683e13a03d2bee68a9bfb8262f0f292a26dbe48db323541`  
		Last Modified: Sat, 04 Nov 2017 05:37:21 GMT  
		Size: 53.0 MB (53038734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8f240f598ef71ed33e93a07042db16c2b28aa720de39bfcabc435c38ea949b`  
		Last Modified: Sat, 04 Nov 2017 05:37:12 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07e364e52b115bd394985fa4a703e7c6be2e3a432599228dae20d4f6f0789df`  
		Last Modified: Sat, 04 Nov 2017 05:37:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.37`

```console
$ docker pull percona@sha256:dd09e439e4930867812cfc0071d2d4a7f8ac0eb3fa53aee75253acad15137a4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.37` - linux; amd64

```console
$ docker pull percona@sha256:dda817e77f58469ced9fe2c24d7ffffcd6447014ebb320d40481aa6b91aa636d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113617113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7c5e8b6b2df19479f4eb4f301de87ff78ecb1a67b73fd6f62a9fbb99799401`
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
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:34:15 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 05:34:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 05:34:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 04 Nov 2017 05:34:58 GMT
ENV PERCONA_MAJOR=5.6
# Sat, 04 Nov 2017 05:34:58 GMT
ENV PERCONA_VERSION=5.6.37-82.2-1.jessie
# Sat, 04 Nov 2017 05:35:29 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 05:35:29 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 04 Nov 2017 05:35:29 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Sat, 04 Nov 2017 05:35:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 05:35:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 05:35:31 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 05:35:31 GMT
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
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a615e60d11df76f7526fad820691f70f9919dbabc7aa4f0f86fb78b125c45`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3ef53aa42188ea244b21b5f55d29b96909d4af9c5a19fa1e6fbabcb9d00f3`  
		Last Modified: Sat, 04 Nov 2017 05:36:41 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3bb2f51224b640a683e13a03d2bee68a9bfb8262f0f292a26dbe48db323541`  
		Last Modified: Sat, 04 Nov 2017 05:37:21 GMT  
		Size: 53.0 MB (53038734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8f240f598ef71ed33e93a07042db16c2b28aa720de39bfcabc435c38ea949b`  
		Last Modified: Sat, 04 Nov 2017 05:37:12 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07e364e52b115bd394985fa4a703e7c6be2e3a432599228dae20d4f6f0789df`  
		Last Modified: Sat, 04 Nov 2017 05:37:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:8e74fd9a12f630ebb2ade3fb95db0ad5e353ecf3fdad9689814e4d64e0dc2e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:d147226759b31dbe8ef7576fd5d24d2b481f5896f55408103a7f06fc6f2e305d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140333238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84b010bb1a01b694a333a6d448bef3c4bce50d321c6d5226a46b8e8e534891`
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
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:34:15 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 05:34:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 05:34:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 04 Nov 2017 05:34:19 GMT
ENV PERCONA_MAJOR=5.7
# Sat, 04 Nov 2017 05:34:19 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Sat, 04 Nov 2017 05:34:49 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 05:34:49 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 04 Nov 2017 05:34:50 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Sat, 04 Nov 2017 05:34:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 05:34:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 05:34:51 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 05:34:51 GMT
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
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a615e60d11df76f7526fad820691f70f9919dbabc7aa4f0f86fb78b125c45`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3ef53aa42188ea244b21b5f55d29b96909d4af9c5a19fa1e6fbabcb9d00f3`  
		Last Modified: Sat, 04 Nov 2017 05:36:41 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2039fa382c6916cb65a63b7d5554915621d15d0c0d98fd097cea406ebeecf`  
		Last Modified: Sat, 04 Nov 2017 05:36:54 GMT  
		Size: 79.8 MB (79754852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85125c500b8a7331c166669d07188ca91d73e5aa5c3eae1d1f8075828f03aad4`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a3381fa39fc72da76d0d90f92a033daa57bf957fd08bb4085313b9f7898b1b`  
		Last Modified: Sat, 04 Nov 2017 05:36:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.19`

```console
$ docker pull percona@sha256:8e74fd9a12f630ebb2ade3fb95db0ad5e353ecf3fdad9689814e4d64e0dc2e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.19` - linux; amd64

```console
$ docker pull percona@sha256:d147226759b31dbe8ef7576fd5d24d2b481f5896f55408103a7f06fc6f2e305d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140333238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84b010bb1a01b694a333a6d448bef3c4bce50d321c6d5226a46b8e8e534891`
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
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:34:15 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 05:34:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 05:34:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 04 Nov 2017 05:34:19 GMT
ENV PERCONA_MAJOR=5.7
# Sat, 04 Nov 2017 05:34:19 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Sat, 04 Nov 2017 05:34:49 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 05:34:49 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 04 Nov 2017 05:34:50 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Sat, 04 Nov 2017 05:34:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 05:34:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 05:34:51 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 05:34:51 GMT
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
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a615e60d11df76f7526fad820691f70f9919dbabc7aa4f0f86fb78b125c45`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3ef53aa42188ea244b21b5f55d29b96909d4af9c5a19fa1e6fbabcb9d00f3`  
		Last Modified: Sat, 04 Nov 2017 05:36:41 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2039fa382c6916cb65a63b7d5554915621d15d0c0d98fd097cea406ebeecf`  
		Last Modified: Sat, 04 Nov 2017 05:36:54 GMT  
		Size: 79.8 MB (79754852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85125c500b8a7331c166669d07188ca91d73e5aa5c3eae1d1f8075828f03aad4`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a3381fa39fc72da76d0d90f92a033daa57bf957fd08bb4085313b9f7898b1b`  
		Last Modified: Sat, 04 Nov 2017 05:36:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:8e74fd9a12f630ebb2ade3fb95db0ad5e353ecf3fdad9689814e4d64e0dc2e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:d147226759b31dbe8ef7576fd5d24d2b481f5896f55408103a7f06fc6f2e305d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140333238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84b010bb1a01b694a333a6d448bef3c4bce50d321c6d5226a46b8e8e534891`
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
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:34:15 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 05:34:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 05:34:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 04 Nov 2017 05:34:19 GMT
ENV PERCONA_MAJOR=5.7
# Sat, 04 Nov 2017 05:34:19 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Sat, 04 Nov 2017 05:34:49 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 05:34:49 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 04 Nov 2017 05:34:50 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Sat, 04 Nov 2017 05:34:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 05:34:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 05:34:51 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 05:34:51 GMT
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
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a615e60d11df76f7526fad820691f70f9919dbabc7aa4f0f86fb78b125c45`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3ef53aa42188ea244b21b5f55d29b96909d4af9c5a19fa1e6fbabcb9d00f3`  
		Last Modified: Sat, 04 Nov 2017 05:36:41 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c2039fa382c6916cb65a63b7d5554915621d15d0c0d98fd097cea406ebeecf`  
		Last Modified: Sat, 04 Nov 2017 05:36:54 GMT  
		Size: 79.8 MB (79754852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85125c500b8a7331c166669d07188ca91d73e5aa5c3eae1d1f8075828f03aad4`  
		Last Modified: Sat, 04 Nov 2017 05:36:40 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a3381fa39fc72da76d0d90f92a033daa57bf957fd08bb4085313b9f7898b1b`  
		Last Modified: Sat, 04 Nov 2017 05:36:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
