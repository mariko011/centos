## `mysql:latest`

```console
$ docker pull mysql@sha256:2f4b1900c0ee53f344564db8d85733bd8d70b0a78cd00e6d92dc107224fc84a5
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143594131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e799c7f9ae9cd01c2e78e26952767b96aef59a5e62f02305610448da47f8ca6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:26:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:26:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:26:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 03:28:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:28:05 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 10 May 2017 03:28:06 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 10 May 2017 03:28:07 GMT
ENV MYSQL_VERSION=5.7.18-1debian8
# Wed, 10 May 2017 03:28:09 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 10 May 2017 03:28:38 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:28:40 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 10 May 2017 03:28:41 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:28:42 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 10 May 2017 03:28:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:28:45 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:28:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc7bb2a88d3f5f2e2f57c03798de132417029412461fa5c2a3980a432ac00`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7a0445698ef7ccb14c188ceef9c98785c4adf909704a86a019721e94a8eff`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 1.3 MB (1307767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61839a176f4d61f2b383652722e0dc8f63ffd12828405b1d7d0facc903b4df`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1033d2f1825e47d2929ad0e15207097a5600406479ca7a67b56f50dd707fcc6`  
		Last Modified: Sat, 13 May 2017 08:01:19 GMT  
		Size: 10.7 MB (10715803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6792140dcc88fa160ad0e34da08da30fdcb6e02fefd1cd071f584b5338586a`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3adf03d6e64c0d5e59171e65490e6cb3fd552e9fd4ce81a1976ebb25447325`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79d216fd92b726ec5a2351140f53829dce76749cd54a92e32b520cef90a90e1`  
		Last Modified: Sat, 13 May 2017 08:01:28 GMT  
		Size: 79.0 MB (78961159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c25bdeb4f448f9c865abba2bb104137eba16bbe87e8507b721e01a6c27797e`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02556e8f331fdf559a93c845dc80cffad8b7c4f940ab239529756903ad07e705`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 2.7 KB (2732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bed508a9e77fec63ff551f68e66836cbcd39404565ca36003bf54be2e533c9a`  
		Last Modified: Sat, 13 May 2017 08:01:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
