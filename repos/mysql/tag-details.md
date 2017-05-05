<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:8.0.1`](#mysql801)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8`](#mysql8)
-	[`mysql:5.7.18`](#mysql5718)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5`](#mysql5)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:5.6.36`](#mysql5636)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.5.56`](#mysql5556)
-	[`mysql:5.5`](#mysql55)

## `mysql:8.0.1`

```console
$ docker pull mysql@sha256:3c11cb801b188ced3172f0ee1c155492abe370c42662626121c89e69b3a30f0f
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90396501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a559f1d39b0f2f18a76cc699921c59bbcb2b544430b638771420182d782b5767`
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
# Tue, 25 Apr 2017 01:31:18 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 25 Apr 2017 01:31:19 GMT
ENV MYSQL_VERSION=8.0.1-dmr-1debian8
# Tue, 25 Apr 2017 01:31:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 01 May 2017 18:44:41 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 01 May 2017 18:44:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 01 May 2017 18:44:42 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Mon, 01 May 2017 18:44:43 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Mon, 01 May 2017 18:44:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:44:47 GMT
EXPOSE 3306/tcp
# Mon, 01 May 2017 18:44:47 GMT
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
	-	`sha256:da9f89250006b3587484c4e5f628011d05a586e91428b4b0a63cddf841430cae`  
		Last Modified: Tue, 25 Apr 2017 19:29:45 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed781d7d07bea60b1cc10e59b3d87e7de7745b182b693f2297ce810eb187465`  
		Last Modified: Mon, 01 May 2017 18:45:16 GMT  
		Size: 25.8 MB (25796510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d15821b05bbd2d5e1f96348ec89ecee4bec94a82bd857089c0908ed34101c3`  
		Last Modified: Mon, 01 May 2017 18:45:11 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff59a081657446287ab808df3c2c49568713ae93539b5ffadfa54f0da03a30b`  
		Last Modified: Mon, 01 May 2017 18:45:11 GMT  
		Size: 2.7 KB (2729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86a5e0f9ba2e5fd234c0f0634f5bd680813eb813f436687d0e6c627fa72ddf9`  
		Last Modified: Mon, 01 May 2017 18:45:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:3c11cb801b188ced3172f0ee1c155492abe370c42662626121c89e69b3a30f0f
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90396501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a559f1d39b0f2f18a76cc699921c59bbcb2b544430b638771420182d782b5767`
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
# Tue, 25 Apr 2017 01:31:18 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 25 Apr 2017 01:31:19 GMT
ENV MYSQL_VERSION=8.0.1-dmr-1debian8
# Tue, 25 Apr 2017 01:31:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 01 May 2017 18:44:41 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 01 May 2017 18:44:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 01 May 2017 18:44:42 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Mon, 01 May 2017 18:44:43 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Mon, 01 May 2017 18:44:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:44:47 GMT
EXPOSE 3306/tcp
# Mon, 01 May 2017 18:44:47 GMT
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
	-	`sha256:da9f89250006b3587484c4e5f628011d05a586e91428b4b0a63cddf841430cae`  
		Last Modified: Tue, 25 Apr 2017 19:29:45 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed781d7d07bea60b1cc10e59b3d87e7de7745b182b693f2297ce810eb187465`  
		Last Modified: Mon, 01 May 2017 18:45:16 GMT  
		Size: 25.8 MB (25796510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d15821b05bbd2d5e1f96348ec89ecee4bec94a82bd857089c0908ed34101c3`  
		Last Modified: Mon, 01 May 2017 18:45:11 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff59a081657446287ab808df3c2c49568713ae93539b5ffadfa54f0da03a30b`  
		Last Modified: Mon, 01 May 2017 18:45:11 GMT  
		Size: 2.7 KB (2729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86a5e0f9ba2e5fd234c0f0634f5bd680813eb813f436687d0e6c627fa72ddf9`  
		Last Modified: Mon, 01 May 2017 18:45:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:3c11cb801b188ced3172f0ee1c155492abe370c42662626121c89e69b3a30f0f
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90396501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a559f1d39b0f2f18a76cc699921c59bbcb2b544430b638771420182d782b5767`
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
# Tue, 25 Apr 2017 01:31:18 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 25 Apr 2017 01:31:19 GMT
ENV MYSQL_VERSION=8.0.1-dmr-1debian8
# Tue, 25 Apr 2017 01:31:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 01 May 2017 18:44:41 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 01 May 2017 18:44:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 01 May 2017 18:44:42 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Mon, 01 May 2017 18:44:43 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Mon, 01 May 2017 18:44:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:44:47 GMT
EXPOSE 3306/tcp
# Mon, 01 May 2017 18:44:47 GMT
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
	-	`sha256:da9f89250006b3587484c4e5f628011d05a586e91428b4b0a63cddf841430cae`  
		Last Modified: Tue, 25 Apr 2017 19:29:45 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed781d7d07bea60b1cc10e59b3d87e7de7745b182b693f2297ce810eb187465`  
		Last Modified: Mon, 01 May 2017 18:45:16 GMT  
		Size: 25.8 MB (25796510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d15821b05bbd2d5e1f96348ec89ecee4bec94a82bd857089c0908ed34101c3`  
		Last Modified: Mon, 01 May 2017 18:45:11 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff59a081657446287ab808df3c2c49568713ae93539b5ffadfa54f0da03a30b`  
		Last Modified: Mon, 01 May 2017 18:45:11 GMT  
		Size: 2.7 KB (2729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86a5e0f9ba2e5fd234c0f0634f5bd680813eb813f436687d0e6c627fa72ddf9`  
		Last Modified: Mon, 01 May 2017 18:45:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.18`

```console
$ docker pull mysql@sha256:e44b9a3ae88db013a3e8571a89998678ba44676ed4ae9f54714fd31e108f8b58
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.18` - linux; amd64

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

## `mysql:5.7`

```console
$ docker pull mysql@sha256:e44b9a3ae88db013a3e8571a89998678ba44676ed4ae9f54714fd31e108f8b58
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

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

## `mysql:5`

```console
$ docker pull mysql@sha256:e44b9a3ae88db013a3e8571a89998678ba44676ed4ae9f54714fd31e108f8b58
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

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

## `mysql:5.6.36`

```console
$ docker pull mysql@sha256:78765748270138ea46ad296a2a1aa0676dbb8def41028926899f16c61feeaad2
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.36` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104792928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977f3a915e5415a8b61d8087d5614926f667be6beaeb01f101271d670d00453`
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
# Tue, 25 Apr 2017 01:30:25 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 01:30:29 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 25 Apr 2017 01:30:30 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 25 Apr 2017 01:30:30 GMT
ENV MYSQL_VERSION=5.6.36-1debian8
# Tue, 25 Apr 2017 01:30:32 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 25 Apr 2017 01:30:53 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 25 Apr 2017 01:30:55 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 25 Apr 2017 01:30:56 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Apr 2017 01:30:57 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Tue, 25 Apr 2017 01:30:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 25 Apr 2017 01:30:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 01:30:59 GMT
EXPOSE 3306/tcp
# Tue, 25 Apr 2017 01:31:00 GMT
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
	-	`sha256:9b352969878783b5ac257292372da6640f35a57513677fc03cd84ea1c6076b97`  
		Last Modified: Tue, 25 Apr 2017 19:27:19 GMT  
		Size: 8.3 MB (8261290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33ee5bd3117ce5483673d2fde357d4b10abd0bf3e282962a24cf7ff42c1acf4`  
		Last Modified: Tue, 25 Apr 2017 19:27:16 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f662d8c2e2b4cb14b9156df8666c6327e7461b18bd03cf67a6a3c9b995d50e`  
		Last Modified: Tue, 25 Apr 2017 19:27:13 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6e461174bf93785da8ff087d2a0759856a3ff45cc7fed3c970fdfa4532083`  
		Last Modified: Tue, 25 Apr 2017 19:27:22 GMT  
		Size: 42.6 MB (42648019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4880bf24adc96c9709a544f6cc5609cec7fcea1e0795aca89b50bc0ecf58bad8`  
		Last Modified: Tue, 25 Apr 2017 19:27:14 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d027b95a7c3f38f2a370217821eff939a6405412c7a49a2c9a788a59060ec3`  
		Last Modified: Tue, 25 Apr 2017 19:27:15 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d595bb3349966f5d4a876b02f0b05b4a93775542d780576bda849051a754842`  
		Last Modified: Tue, 25 Apr 2017 19:27:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:78765748270138ea46ad296a2a1aa0676dbb8def41028926899f16c61feeaad2
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104792928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977f3a915e5415a8b61d8087d5614926f667be6beaeb01f101271d670d00453`
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
# Tue, 25 Apr 2017 01:30:25 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 01:30:29 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 25 Apr 2017 01:30:30 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 25 Apr 2017 01:30:30 GMT
ENV MYSQL_VERSION=5.6.36-1debian8
# Tue, 25 Apr 2017 01:30:32 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 25 Apr 2017 01:30:53 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 25 Apr 2017 01:30:55 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 25 Apr 2017 01:30:56 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Apr 2017 01:30:57 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Tue, 25 Apr 2017 01:30:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 25 Apr 2017 01:30:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 01:30:59 GMT
EXPOSE 3306/tcp
# Tue, 25 Apr 2017 01:31:00 GMT
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
	-	`sha256:9b352969878783b5ac257292372da6640f35a57513677fc03cd84ea1c6076b97`  
		Last Modified: Tue, 25 Apr 2017 19:27:19 GMT  
		Size: 8.3 MB (8261290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33ee5bd3117ce5483673d2fde357d4b10abd0bf3e282962a24cf7ff42c1acf4`  
		Last Modified: Tue, 25 Apr 2017 19:27:16 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f662d8c2e2b4cb14b9156df8666c6327e7461b18bd03cf67a6a3c9b995d50e`  
		Last Modified: Tue, 25 Apr 2017 19:27:13 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6e461174bf93785da8ff087d2a0759856a3ff45cc7fed3c970fdfa4532083`  
		Last Modified: Tue, 25 Apr 2017 19:27:22 GMT  
		Size: 42.6 MB (42648019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4880bf24adc96c9709a544f6cc5609cec7fcea1e0795aca89b50bc0ecf58bad8`  
		Last Modified: Tue, 25 Apr 2017 19:27:14 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d027b95a7c3f38f2a370217821eff939a6405412c7a49a2c9a788a59060ec3`  
		Last Modified: Tue, 25 Apr 2017 19:27:15 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d595bb3349966f5d4a876b02f0b05b4a93775542d780576bda849051a754842`  
		Last Modified: Tue, 25 Apr 2017 19:27:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.56`

**does not exist** (yet?)

## `mysql:5.5`

```console
$ docker pull mysql@sha256:a59298fd6f51e3c278a4a558d8dcda7bb4e468096af5125052f3f3d1743054a8
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89320151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0fb485deb70a78c494874f5a412e1b4db5479f23f7dfda8e09b9b0cdff1ccc7`
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
# Tue, 25 Apr 2017 01:28:16 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 01:28:25 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 01:28:35 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 25 Apr 2017 01:28:36 GMT
ENV MYSQL_VERSION=5.5.55
# Tue, 25 Apr 2017 01:29:33 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 25 Apr 2017 01:29:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 25 Apr 2017 01:29:35 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 25 Apr 2017 01:29:37 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 25 Apr 2017 01:29:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Apr 2017 01:29:55 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Tue, 25 Apr 2017 01:29:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 25 Apr 2017 01:29:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 01:29:58 GMT
EXPOSE 3306/tcp
# Tue, 25 Apr 2017 01:29:59 GMT
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
	-	`sha256:0b32af93132dcc374199af5735907b7259b02ee81048948acee87a8cf2840043`  
		Last Modified: Tue, 25 Apr 2017 19:26:29 GMT  
		Size: 8.2 MB (8241166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd9de5ea67de27e8080d616b5a6bb5ad9b42eca36c24f3f7189e045ba798bff`  
		Last Modified: Tue, 25 Apr 2017 19:26:25 GMT  
		Size: 102.0 KB (101996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db5ed4ac5e670c4e2b903adb90995bd54034a317aa62449a75d2682edfab2b5`  
		Last Modified: Tue, 25 Apr 2017 19:26:30 GMT  
		Size: 27.1 MB (27113201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae8790d70e7fcf22b83f6d35171b36cef64a6f6f1059864d928901054c268e9`  
		Last Modified: Tue, 25 Apr 2017 19:26:23 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401aed06596045a3256e1fee3a5dc1bbb847a3aa2258d34ea844811a11d3975f`  
		Last Modified: Tue, 25 Apr 2017 19:26:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96994c33be33c6ab65054f9d35e7c6cb8b2f4601f9a8dbc177df8d225faaf2a4`  
		Last Modified: Tue, 25 Apr 2017 19:26:23 GMT  
		Size: 2.6 KB (2626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a01375a32a8d36adaf25d58746375b873e9bd9124c920df0cbbe9cd1d19cb1f`  
		Last Modified: Tue, 25 Apr 2017 19:26:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
