## `percona:latest`

```console
$ docker pull percona@sha256:e582e091f808e71dae9f1b00ae9ffc3a707b2b57173a889f6a09f3e708efa51f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:af8b11b922023952c5c7efc096d54e369bfe8a5f8ff530a3990b7a2a9548ca9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140339333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b134e1b35081a50a46fc7cd8e2e243632c6f64727b7b94c7bbc741302fbe23b`
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
# Tue, 12 Dec 2017 02:38:37 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Tue, 12 Dec 2017 02:39:05 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Dec 2017 02:39:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 12 Dec 2017 02:39:06 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:39:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 02:39:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:39:08 GMT
EXPOSE 3306/tcp
# Tue, 12 Dec 2017 02:39:09 GMT
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
	-	`sha256:bc0ca71fd1dee5301c694466ff2178e37738d0958cb54124e80fa09873a90fac`  
		Last Modified: Tue, 12 Dec 2017 02:42:25 GMT  
		Size: 79.8 MB (79755020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1972c8b1d5c323f4bcc43fb07e4a213a4a915e9223bd432febe56abdfe354e7`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0197d669d413a2ab372030dd11f9dbc4365666ee640606089ba4f68a73e7763b`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
