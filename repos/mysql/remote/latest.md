## `mysql:latest`

```console
$ docker pull mysql@sha256:790b7b18b832822ef400e44ad9fac885a746db1a7028ec52325730cf9b831753
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141d24fea983762df4ac56412efa996064e1db106eca2e2c150d821944b82a1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:16:47 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 08 Sep 2017 08:17:15 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 08 Sep 2017 08:17:15 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Fri, 08 Sep 2017 08:17:16 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 08 Sep 2017 08:17:45 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 08:17:46 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 08:17:47 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 08:17:47 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:17:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:17:48 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 08:17:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6a01e515fb0614e7d5634dd0f5be6d6afcbd53e0da7d1812aabcded981f620`  
		Last Modified: Fri, 08 Sep 2017 23:38:09 GMT  
		Size: 10.7 MB (10710801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71e1163fa7ee5c0bd152d81910fecc55e0e0f6117ee0dd56e2bc2f82802b078`  
		Last Modified: Fri, 08 Sep 2017 23:38:02 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1a568fa442b647dec76552a6fccc0e5ee563bfa5b067078d409c89baac0f64`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a69cecc1734bd86cecf3654bb9762bf95e2b9745df396ca2c3a2fbc8e03e51`  
		Last Modified: Fri, 08 Sep 2017 23:38:53 GMT  
		Size: 79.6 MB (79609834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9759a0f979a1818d3356cf00d8ac2d06fbd2883854ec2a1e9552c61155fc9398`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f71dac6110f586008b1a18a9d0836775fb8fdf41ae5939b36f6e292962a6a2b`  
		Last Modified: Fri, 08 Sep 2017 23:38:38 GMT  
		Size: 2.7 KB (2725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f37de543925e737c644c32823540883a1921d64f597e2bd3857edc6f576d79`  
		Last Modified: Fri, 08 Sep 2017 23:38:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
