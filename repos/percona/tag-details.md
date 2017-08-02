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
$ docker pull percona@sha256:77286d22bce30ce17a16e932c4b4ac1f7f81aa7aee92c1ef3fc006a500ff9113
```

-	Platforms:
	-	linux; amd64

### `percona:5.7.18` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140036792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62909c52ff9dc36f18bf3f4797291819d069461cd622e2e261d3a89f7fc65dff`
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
# Mon, 31 Jul 2017 19:01:26 GMT
ENV PERCONA_VERSION=5.7.18-16-1.jessie
# Mon, 31 Jul 2017 19:02:12 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 19:02:13 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 19:02:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Jul 2017 19:02:13 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:02:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:02:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:02:15 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 19:02:15 GMT
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
	-	`sha256:fe466406398d535c17884f93827337ca25642dcf271e52c21773493950f31e57`  
		Last Modified: Mon, 31 Jul 2017 19:04:23 GMT  
		Size: 79.4 MB (79448005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8cf2d82f3e362d6f7b4aa708860a854c47ff33dc6e5fbc3c443e70b6ae201b`  
		Last Modified: Mon, 31 Jul 2017 19:04:11 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c761d3f85b8bab8dc4bd9a1f6fe2dfc9092d6d1df8095624a3e32a9538a2e78`  
		Last Modified: Mon, 31 Jul 2017 19:04:12 GMT  
		Size: 2.2 KB (2155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0aeecac572a62ed3eee70b913f59a6b942264a657cabc486a446f105adf2a9f`  
		Last Modified: Mon, 31 Jul 2017 19:04:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:77286d22bce30ce17a16e932c4b4ac1f7f81aa7aee92c1ef3fc006a500ff9113
```

-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140036792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62909c52ff9dc36f18bf3f4797291819d069461cd622e2e261d3a89f7fc65dff`
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
# Mon, 31 Jul 2017 19:01:26 GMT
ENV PERCONA_VERSION=5.7.18-16-1.jessie
# Mon, 31 Jul 2017 19:02:12 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 19:02:13 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 19:02:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Jul 2017 19:02:13 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:02:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:02:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:02:15 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 19:02:15 GMT
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
	-	`sha256:fe466406398d535c17884f93827337ca25642dcf271e52c21773493950f31e57`  
		Last Modified: Mon, 31 Jul 2017 19:04:23 GMT  
		Size: 79.4 MB (79448005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8cf2d82f3e362d6f7b4aa708860a854c47ff33dc6e5fbc3c443e70b6ae201b`  
		Last Modified: Mon, 31 Jul 2017 19:04:11 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c761d3f85b8bab8dc4bd9a1f6fe2dfc9092d6d1df8095624a3e32a9538a2e78`  
		Last Modified: Mon, 31 Jul 2017 19:04:12 GMT  
		Size: 2.2 KB (2155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0aeecac572a62ed3eee70b913f59a6b942264a657cabc486a446f105adf2a9f`  
		Last Modified: Mon, 31 Jul 2017 19:04:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5`

```console
$ docker pull percona@sha256:77286d22bce30ce17a16e932c4b4ac1f7f81aa7aee92c1ef3fc006a500ff9113
```

-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140036792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62909c52ff9dc36f18bf3f4797291819d069461cd622e2e261d3a89f7fc65dff`
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
# Mon, 31 Jul 2017 19:01:26 GMT
ENV PERCONA_VERSION=5.7.18-16-1.jessie
# Mon, 31 Jul 2017 19:02:12 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 19:02:13 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 19:02:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Jul 2017 19:02:13 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:02:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:02:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:02:15 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 19:02:15 GMT
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
	-	`sha256:fe466406398d535c17884f93827337ca25642dcf271e52c21773493950f31e57`  
		Last Modified: Mon, 31 Jul 2017 19:04:23 GMT  
		Size: 79.4 MB (79448005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8cf2d82f3e362d6f7b4aa708860a854c47ff33dc6e5fbc3c443e70b6ae201b`  
		Last Modified: Mon, 31 Jul 2017 19:04:11 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c761d3f85b8bab8dc4bd9a1f6fe2dfc9092d6d1df8095624a3e32a9538a2e78`  
		Last Modified: Mon, 31 Jul 2017 19:04:12 GMT  
		Size: 2.2 KB (2155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0aeecac572a62ed3eee70b913f59a6b942264a657cabc486a446f105adf2a9f`  
		Last Modified: Mon, 31 Jul 2017 19:04:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:77286d22bce30ce17a16e932c4b4ac1f7f81aa7aee92c1ef3fc006a500ff9113
```

-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140036792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62909c52ff9dc36f18bf3f4797291819d069461cd622e2e261d3a89f7fc65dff`
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
# Mon, 31 Jul 2017 19:01:26 GMT
ENV PERCONA_VERSION=5.7.18-16-1.jessie
# Mon, 31 Jul 2017 19:02:12 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 19:02:13 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 19:02:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Jul 2017 19:02:13 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:02:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:02:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:02:15 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 19:02:15 GMT
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
	-	`sha256:fe466406398d535c17884f93827337ca25642dcf271e52c21773493950f31e57`  
		Last Modified: Mon, 31 Jul 2017 19:04:23 GMT  
		Size: 79.4 MB (79448005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8cf2d82f3e362d6f7b4aa708860a854c47ff33dc6e5fbc3c443e70b6ae201b`  
		Last Modified: Mon, 31 Jul 2017 19:04:11 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c761d3f85b8bab8dc4bd9a1f6fe2dfc9092d6d1df8095624a3e32a9538a2e78`  
		Last Modified: Mon, 31 Jul 2017 19:04:12 GMT  
		Size: 2.2 KB (2155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0aeecac572a62ed3eee70b913f59a6b942264a657cabc486a446f105adf2a9f`  
		Last Modified: Mon, 31 Jul 2017 19:04:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.36`

```console
$ docker pull percona@sha256:c0a403107f7e808af07846cb4e681b874c7a074392f908718dbf8e41b1d478ba
```

-	Platforms:
	-	linux; amd64

### `percona:5.6.36` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113601563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca22c3a60b6394df6e792479bf3d86f0aadca53fc3904ed87b24d5eaedb2ed96`
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
# Wed, 02 Aug 2017 00:00:37 GMT
ENV PERCONA_VERSION=5.6.36-82.1-1.jessie
# Wed, 02 Aug 2017 00:01:18 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 02 Aug 2017 00:01:19 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 02 Aug 2017 00:01:19 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 02 Aug 2017 00:01:20 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 02 Aug 2017 00:01:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 02 Aug 2017 00:01:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 Aug 2017 00:01:21 GMT
EXPOSE 3306/tcp
# Wed, 02 Aug 2017 00:01:21 GMT
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
	-	`sha256:c9203a7e607a1dfe831d6a38554d809114f14551bcda0d6a35da6ceb5dade1f4`  
		Last Modified: Wed, 02 Aug 2017 00:02:02 GMT  
		Size: 53.0 MB (53011606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e206f0b0347d73855247376060fd6e133cf1c7671521f6faaa25ee202f18e9`  
		Last Modified: Wed, 02 Aug 2017 00:01:51 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce780314ff2f324b8fe1f87a781c56c1e6f8e6ac3ffea061f79b10812299cdc`  
		Last Modified: Wed, 02 Aug 2017 00:01:51 GMT  
		Size: 2.2 KB (2155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a1376a3b547134419f4bd801a1179377cd72ef13c707bb4634631b0873ad9c`  
		Last Modified: Wed, 02 Aug 2017 00:01:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:c0a403107f7e808af07846cb4e681b874c7a074392f908718dbf8e41b1d478ba
```

-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113601563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca22c3a60b6394df6e792479bf3d86f0aadca53fc3904ed87b24d5eaedb2ed96`
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
# Wed, 02 Aug 2017 00:00:37 GMT
ENV PERCONA_VERSION=5.6.36-82.1-1.jessie
# Wed, 02 Aug 2017 00:01:18 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 02 Aug 2017 00:01:19 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 02 Aug 2017 00:01:19 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 02 Aug 2017 00:01:20 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 02 Aug 2017 00:01:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 02 Aug 2017 00:01:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 Aug 2017 00:01:21 GMT
EXPOSE 3306/tcp
# Wed, 02 Aug 2017 00:01:21 GMT
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
	-	`sha256:c9203a7e607a1dfe831d6a38554d809114f14551bcda0d6a35da6ceb5dade1f4`  
		Last Modified: Wed, 02 Aug 2017 00:02:02 GMT  
		Size: 53.0 MB (53011606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e206f0b0347d73855247376060fd6e133cf1c7671521f6faaa25ee202f18e9`  
		Last Modified: Wed, 02 Aug 2017 00:01:51 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce780314ff2f324b8fe1f87a781c56c1e6f8e6ac3ffea061f79b10812299cdc`  
		Last Modified: Wed, 02 Aug 2017 00:01:51 GMT  
		Size: 2.2 KB (2155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a1376a3b547134419f4bd801a1179377cd72ef13c707bb4634631b0873ad9c`  
		Last Modified: Wed, 02 Aug 2017 00:01:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.55`

```console
$ docker pull percona@sha256:79a8c662cd109aa71ebdcc813ffb7435ae799f13ffb69fc0e9b86410746128f5
```

-	Platforms:
	-	linux; amd64

### `percona:5.5.55` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105744047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3bfbde26ea4a88b2e8763314225ebd3eef488debb7f91a480c602b41c70dd32`
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
# Mon, 31 Jul 2017 19:04:01 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 19:04:02 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 19:04:02 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Jul 2017 19:04:03 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:04:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:04:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:04:04 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 19:04:04 GMT
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
	-	`sha256:e6786bc6f402dde723742f594a50cdc06433911a548e25179095ccf7cf6a1348`  
		Last Modified: Mon, 31 Jul 2017 19:05:23 GMT  
		Size: 45.2 MB (45154093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fcfc7674a5803c4f9efb43434a7fd72b2e6a202b8c97a6d0abb1e9f8a9f607`  
		Last Modified: Mon, 31 Jul 2017 19:05:15 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bd11f431c68467c21f588100b026eb776940ccb25b41b2c04e6aca3c687566`  
		Last Modified: Mon, 31 Jul 2017 19:05:15 GMT  
		Size: 2.2 KB (2155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298b2bd2b910b44745d5697d2fe86792363552ff55c16ac45ec50e83acf24038`  
		Last Modified: Mon, 31 Jul 2017 19:05:15 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:79a8c662cd109aa71ebdcc813ffb7435ae799f13ffb69fc0e9b86410746128f5
```

-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105744047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3bfbde26ea4a88b2e8763314225ebd3eef488debb7f91a480c602b41c70dd32`
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
# Mon, 31 Jul 2017 19:04:01 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 19:04:02 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 19:04:02 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Jul 2017 19:04:03 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:04:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:04:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:04:04 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 19:04:04 GMT
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
	-	`sha256:e6786bc6f402dde723742f594a50cdc06433911a548e25179095ccf7cf6a1348`  
		Last Modified: Mon, 31 Jul 2017 19:05:23 GMT  
		Size: 45.2 MB (45154093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fcfc7674a5803c4f9efb43434a7fd72b2e6a202b8c97a6d0abb1e9f8a9f607`  
		Last Modified: Mon, 31 Jul 2017 19:05:15 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bd11f431c68467c21f588100b026eb776940ccb25b41b2c04e6aca3c687566`  
		Last Modified: Mon, 31 Jul 2017 19:05:15 GMT  
		Size: 2.2 KB (2155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298b2bd2b910b44745d5697d2fe86792363552ff55c16ac45ec50e83acf24038`  
		Last Modified: Mon, 31 Jul 2017 19:05:15 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
