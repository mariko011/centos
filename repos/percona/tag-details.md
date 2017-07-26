<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5.7.18`](#percona5718)
-	[`percona:5.7`](#percona57)
-	[`percona:5`](#percona5)
-	[`percona:latest`](#perconalatest)
-	[`percona:5.6.36`](#percona5636)
-	[`percona:5.6`](#percona56)
-	[`percona:5.5.55`](#percona5555)
-	[`percona:5.5`](#percona55)

## `percona:5.7.18`

```console
$ docker pull percona@sha256:5fef33e3aab653c4bbf8d1c7854e37b4a982ed0b00feba37b20c9c4c39d5471e
```

-	Platforms:
	-	linux; amd64

### `percona:5.7.18` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128571643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323f59dbe813abdc51f1ec9f7edfa206b70dd65dd998124d13737cb252b6903e`
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
# Wed, 26 Jul 2017 08:26:36 GMT
ENV PERCONA_VERSION=5.7.18-15-1.jessie
# Wed, 26 Jul 2017 08:27:12 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 26 Jul 2017 08:27:12 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Wed, 26 Jul 2017 08:27:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 26 Jul 2017 08:27:13 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:27:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:27:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:27:14 GMT
EXPOSE 3306/tcp
# Wed, 26 Jul 2017 08:27:15 GMT
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
	-	`sha256:547d65841c9a0810be8a3f1d0c57537b0d3e38b4d9ff62721dcd685de76fda5e`  
		Last Modified: Wed, 26 Jul 2017 08:29:20 GMT  
		Size: 68.0 MB (67982887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8994d71c188ed4c46fc29bb8f2ea9b312a3e356a82c180099cc13bed3ce298`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 708.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0372bc31a753ddb43edcfc15061d518e2d5e0c2670ecc0912b49974a566d1118`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edbc73411c904ebc550580ae304a5c6b0d153f2471ec1d10cc54b1c37f910cc`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:5fef33e3aab653c4bbf8d1c7854e37b4a982ed0b00feba37b20c9c4c39d5471e
```

-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128571643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323f59dbe813abdc51f1ec9f7edfa206b70dd65dd998124d13737cb252b6903e`
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
# Wed, 26 Jul 2017 08:26:36 GMT
ENV PERCONA_VERSION=5.7.18-15-1.jessie
# Wed, 26 Jul 2017 08:27:12 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 26 Jul 2017 08:27:12 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Wed, 26 Jul 2017 08:27:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 26 Jul 2017 08:27:13 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:27:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:27:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:27:14 GMT
EXPOSE 3306/tcp
# Wed, 26 Jul 2017 08:27:15 GMT
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
	-	`sha256:547d65841c9a0810be8a3f1d0c57537b0d3e38b4d9ff62721dcd685de76fda5e`  
		Last Modified: Wed, 26 Jul 2017 08:29:20 GMT  
		Size: 68.0 MB (67982887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8994d71c188ed4c46fc29bb8f2ea9b312a3e356a82c180099cc13bed3ce298`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 708.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0372bc31a753ddb43edcfc15061d518e2d5e0c2670ecc0912b49974a566d1118`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edbc73411c904ebc550580ae304a5c6b0d153f2471ec1d10cc54b1c37f910cc`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5`

```console
$ docker pull percona@sha256:5fef33e3aab653c4bbf8d1c7854e37b4a982ed0b00feba37b20c9c4c39d5471e
```

-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128571643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323f59dbe813abdc51f1ec9f7edfa206b70dd65dd998124d13737cb252b6903e`
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
# Wed, 26 Jul 2017 08:26:36 GMT
ENV PERCONA_VERSION=5.7.18-15-1.jessie
# Wed, 26 Jul 2017 08:27:12 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 26 Jul 2017 08:27:12 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Wed, 26 Jul 2017 08:27:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 26 Jul 2017 08:27:13 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:27:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:27:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:27:14 GMT
EXPOSE 3306/tcp
# Wed, 26 Jul 2017 08:27:15 GMT
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
	-	`sha256:547d65841c9a0810be8a3f1d0c57537b0d3e38b4d9ff62721dcd685de76fda5e`  
		Last Modified: Wed, 26 Jul 2017 08:29:20 GMT  
		Size: 68.0 MB (67982887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8994d71c188ed4c46fc29bb8f2ea9b312a3e356a82c180099cc13bed3ce298`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 708.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0372bc31a753ddb43edcfc15061d518e2d5e0c2670ecc0912b49974a566d1118`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edbc73411c904ebc550580ae304a5c6b0d153f2471ec1d10cc54b1c37f910cc`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:5fef33e3aab653c4bbf8d1c7854e37b4a982ed0b00feba37b20c9c4c39d5471e
```

-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128571643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323f59dbe813abdc51f1ec9f7edfa206b70dd65dd998124d13737cb252b6903e`
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
# Wed, 26 Jul 2017 08:26:36 GMT
ENV PERCONA_VERSION=5.7.18-15-1.jessie
# Wed, 26 Jul 2017 08:27:12 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 26 Jul 2017 08:27:12 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Wed, 26 Jul 2017 08:27:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 26 Jul 2017 08:27:13 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:27:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:27:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:27:14 GMT
EXPOSE 3306/tcp
# Wed, 26 Jul 2017 08:27:15 GMT
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
	-	`sha256:547d65841c9a0810be8a3f1d0c57537b0d3e38b4d9ff62721dcd685de76fda5e`  
		Last Modified: Wed, 26 Jul 2017 08:29:20 GMT  
		Size: 68.0 MB (67982887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8994d71c188ed4c46fc29bb8f2ea9b312a3e356a82c180099cc13bed3ce298`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 708.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0372bc31a753ddb43edcfc15061d518e2d5e0c2670ecc0912b49974a566d1118`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edbc73411c904ebc550580ae304a5c6b0d153f2471ec1d10cc54b1c37f910cc`  
		Last Modified: Wed, 26 Jul 2017 08:29:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.36`

```console
$ docker pull percona@sha256:de3168b79ea53b1adbe64ae3b6b3b7bb1295fb445477bc52881d393f1bc51b66
```

-	Platforms:
	-	linux; amd64

### `percona:5.6.36` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113613413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67cb73071439377863f839f50caa4e14bc4871331ea9a415e31b53a93d3f1f97`
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
# Wed, 26 Jul 2017 08:27:18 GMT
ENV PERCONA_VERSION=5.6.36-82.0-1.jessie
# Wed, 26 Jul 2017 08:27:57 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 26 Jul 2017 08:27:58 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Wed, 26 Jul 2017 08:27:58 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 26 Jul 2017 08:27:59 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:27:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:28:00 GMT
EXPOSE 3306/tcp
# Wed, 26 Jul 2017 08:28:00 GMT
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
	-	`sha256:5ec32b0c70f49e1d6d2b51d2f577cb77020aff105164e3da0dfad4a437ebaee5`  
		Last Modified: Wed, 26 Jul 2017 08:29:55 GMT  
		Size: 53.0 MB (53023484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e603343ae43b9dbf16c203bcd42c3a13c0740d826f68708e1b10d5e1446a39`  
		Last Modified: Wed, 26 Jul 2017 08:29:45 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76927f3cd7ba7310d34c746843d7e87956dc43ec04e66115fc6d4ddedcafc5a1`  
		Last Modified: Wed, 26 Jul 2017 08:29:45 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5db475ec7c1f12d501f0bc56709f16f10ef443ee7271539e66b17f143c7197`  
		Last Modified: Wed, 26 Jul 2017 08:29:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:de3168b79ea53b1adbe64ae3b6b3b7bb1295fb445477bc52881d393f1bc51b66
```

-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113613413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67cb73071439377863f839f50caa4e14bc4871331ea9a415e31b53a93d3f1f97`
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
# Wed, 26 Jul 2017 08:27:18 GMT
ENV PERCONA_VERSION=5.6.36-82.0-1.jessie
# Wed, 26 Jul 2017 08:27:57 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 26 Jul 2017 08:27:58 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Wed, 26 Jul 2017 08:27:58 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 26 Jul 2017 08:27:59 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:27:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:28:00 GMT
EXPOSE 3306/tcp
# Wed, 26 Jul 2017 08:28:00 GMT
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
	-	`sha256:5ec32b0c70f49e1d6d2b51d2f577cb77020aff105164e3da0dfad4a437ebaee5`  
		Last Modified: Wed, 26 Jul 2017 08:29:55 GMT  
		Size: 53.0 MB (53023484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e603343ae43b9dbf16c203bcd42c3a13c0740d826f68708e1b10d5e1446a39`  
		Last Modified: Wed, 26 Jul 2017 08:29:45 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76927f3cd7ba7310d34c746843d7e87956dc43ec04e66115fc6d4ddedcafc5a1`  
		Last Modified: Wed, 26 Jul 2017 08:29:45 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5db475ec7c1f12d501f0bc56709f16f10ef443ee7271539e66b17f143c7197`  
		Last Modified: Wed, 26 Jul 2017 08:29:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.55`

```console
$ docker pull percona@sha256:ed27074e32f2bd7b3b9687b1e9293f826fda4297c470663f5d0fbbeedb3f58f6
```

-	Platforms:
	-	linux; amd64

### `percona:5.5.55` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105750567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db655437f8a1dd2760f1d57f0428472de90eeb08aaf6a407c36da6194471109f`
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
# Wed, 26 Jul 2017 08:28:03 GMT
ENV PERCONA_VERSION=5.5.55-rel38.8-1.jessie
# Wed, 26 Jul 2017 08:28:59 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 26 Jul 2017 08:29:00 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Wed, 26 Jul 2017 08:29:00 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 26 Jul 2017 08:29:01 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:29:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:29:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:29:02 GMT
EXPOSE 3306/tcp
# Wed, 26 Jul 2017 08:29:02 GMT
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
	-	`sha256:063024574bcdf62497d5cbd2c1130069794f87548f17c41c20e787929eb2bf4f`  
		Last Modified: Wed, 26 Jul 2017 08:30:16 GMT  
		Size: 45.2 MB (45160642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c35c5fdc7be82026915e0791904f87e59c1cf950e25c33c132784c0554cd307`  
		Last Modified: Wed, 26 Jul 2017 08:30:09 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8581f11f17f5f389a66070091379a124da0be73ab9d02ae35860f3983d35733e`  
		Last Modified: Wed, 26 Jul 2017 08:30:09 GMT  
		Size: 2.2 KB (2158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8eecf38243cec50443a1c27a34d619c2bed00c7071b7aec31e27087249be32`  
		Last Modified: Wed, 26 Jul 2017 08:30:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:ed27074e32f2bd7b3b9687b1e9293f826fda4297c470663f5d0fbbeedb3f58f6
```

-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105750567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db655437f8a1dd2760f1d57f0428472de90eeb08aaf6a407c36da6194471109f`
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
# Wed, 26 Jul 2017 08:28:03 GMT
ENV PERCONA_VERSION=5.5.55-rel38.8-1.jessie
# Wed, 26 Jul 2017 08:28:59 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 26 Jul 2017 08:29:00 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Wed, 26 Jul 2017 08:29:00 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 26 Jul 2017 08:29:01 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 26 Jul 2017 08:29:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 08:29:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 08:29:02 GMT
EXPOSE 3306/tcp
# Wed, 26 Jul 2017 08:29:02 GMT
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
	-	`sha256:063024574bcdf62497d5cbd2c1130069794f87548f17c41c20e787929eb2bf4f`  
		Last Modified: Wed, 26 Jul 2017 08:30:16 GMT  
		Size: 45.2 MB (45160642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c35c5fdc7be82026915e0791904f87e59c1cf950e25c33c132784c0554cd307`  
		Last Modified: Wed, 26 Jul 2017 08:30:09 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8581f11f17f5f389a66070091379a124da0be73ab9d02ae35860f3983d35733e`  
		Last Modified: Wed, 26 Jul 2017 08:30:09 GMT  
		Size: 2.2 KB (2158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8eecf38243cec50443a1c27a34d619c2bed00c7071b7aec31e27087249be32`  
		Last Modified: Wed, 26 Jul 2017 08:30:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
