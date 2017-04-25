## `mysql:latest`

```console
$ docker pull mysql@sha256:e44b9a3ae88db013a3e8571a89998678ba44676ed4ae9f54714fd31e108f8b58
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143561583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e64176cd8a206f88336506fe52cd8f87423147dc197d0250175dddc39465e90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:44:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 24 Apr 2017 23:44:31 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:44:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:44:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Apr 2017 01:27:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 01:27:16 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 25 Apr 2017 01:27:17 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 25 Apr 2017 01:27:18 GMT
ENV MYSQL_VERSION=5.7.18-1debian8
# Tue, 25 Apr 2017 01:27:20 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 25 Apr 2017 01:27:41 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 25 Apr 2017 01:27:43 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 25 Apr 2017 01:27:43 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Apr 2017 01:27:44 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 25 Apr 2017 01:27:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 25 Apr 2017 01:27:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 01:27:47 GMT
EXPOSE 3306/tcp
# Tue, 25 Apr 2017 01:27:48 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c95f06c17efcf6b2bab3c1cbd9e814aac0dec013d20dfd37f737e23c202b9e`  
		Last Modified: Tue, 25 Apr 2017 18:38:51 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b2d578f59a60780045ea30acf10a22997b592fabd88380bfac62432c0decae`  
		Last Modified: Tue, 25 Apr 2017 18:38:51 GMT  
		Size: 1.3 MB (1308185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fbc2bcc6e98e2d504ec51f4c6d744b5e9d8e318aac43f1126dc431f1433622`  
		Last Modified: Tue, 25 Apr 2017 18:38:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b1a29c3956a2532f66c099bb70205db53316c20b74493f5cb95399bd5c319d`  
		Last Modified: Tue, 25 Apr 2017 19:28:13 GMT  
		Size: 10.7 MB (10716196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf9316bd602bdab70228f37c2b9ec8568d49d9f47b97a26ecab0ab0d86ee7db`  
		Last Modified: Tue, 25 Apr 2017 19:28:09 GMT  
		Size: 19.2 KB (19201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bd23f08b55a7ef2afdb114cd9be02bca09078344e4566947b10c1315b60771`  
		Last Modified: Tue, 25 Apr 2017 19:28:07 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb778132e9488261229a244482161ee6850d53d17ac3f9e9083090ed214a9c1`  
		Last Modified: Tue, 25 Apr 2017 19:28:23 GMT  
		Size: 79.0 MB (78961544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6913628d77449be0d23c96ca322b1db5d1e01e902996f6ba9b102fc063f06a3c`  
		Last Modified: Tue, 25 Apr 2017 19:28:07 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477f36dc2e0df824ba0a8e1fad547b98ad93c24cf8852cf6f3daba7e96d3d69`  
		Last Modified: Tue, 25 Apr 2017 19:28:08 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c954124ae935e09b5ab255cbda5ca8e970cc7547044c1a27388c63b2d9dee918`  
		Last Modified: Tue, 25 Apr 2017 19:28:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
