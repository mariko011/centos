## `mariadb:latest`

```console
$ docker pull mariadb@sha256:ed04792bb13c111cbd1743c2921ea6cf777051a7f7f51f7b134efec9af7afdad
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131843568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eca0e0b51c9351ea6a3639b3229432a7f7180dcc3a90ee47b9dd062fcfb520a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:16:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 17:16:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:16:52 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jan 2017 17:16:53 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 18 Jan 2017 22:55:31 GMT
ENV MARIADB_VERSION=10.1.21+maria-1~jessie
# Wed, 18 Jan 2017 22:55:32 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 18 Jan 2017 22:56:21 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 18 Jan 2017 22:56:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 18 Jan 2017 22:56:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 18 Jan 2017 22:56:24 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:56:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 18 Jan 2017 22:56:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:56:26 GMT
EXPOSE 3306/tcp
# Wed, 18 Jan 2017 22:56:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7067e4ea0a87eeee5c577af2fbb43d660b5bc2a007c5caca373952bdf1d4f6`  
		Last Modified: Wed, 18 Jan 2017 04:29:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc40d1291bb984d8a67344266e458a19e0e548ba8fca445d3a102434d3a1c487`  
		Last Modified: Wed, 18 Jan 2017 04:29:32 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff5d18aeeef7ef574c082a68f4715de21e98119dac0ec4129b1ecf6e0ff8d6a`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c729aed3f3df7e9133ae740b3bc4d3317046ce113f142e710d16a04d8e56e60`  
		Last Modified: Wed, 18 Jan 2017 22:57:03 GMT  
		Size: 72.8 MB (72769685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7e90870837e4d239815387eeecdc49203b20027ecd364e4823038d04fbd5b8`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 2.6 KB (2644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae91f5b8acf9b6fb93ae50bb87c1340e7dbabfe62681477317d7a0a33478fa6`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa554fbac13db9bf9788862940a8477ba2b8d6ea85c126017410f1a28f0af50a`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
