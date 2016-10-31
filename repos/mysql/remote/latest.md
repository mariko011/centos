## `mysql:latest`

```console
$ docker pull mysql@sha256:83d00ccce1f44f0e101d33672535556eb55cc890ee122099aac27d37b5bda6d8
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131616816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6245a569970e3960906351ab9878266a5b760f527ee057a8f9ca595dcadaae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 21 Oct 2016 22:02:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:02:24 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:02:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 21 Oct 2016 22:02:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:21:02 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:04 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe147754144da915c0218c231a707685df2694255c7e4a40d0ec7b88a227864`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0de826b14cd6e4c7878ab071e4a52708aa3b60ba6a6e2757afe33b06c47283`  
		Last Modified: Fri, 21 Oct 2016 22:02:58 GMT  
		Size: 70.8 MB (70775189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f101168f9e7dbcf72b094a2ef37d32a7f1645a0b92e853e3dbd8412a2a75ee`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8890f85049ea738767735fc167c769f3918558ae36b314e12b52fa4d03d6b367`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c07e303ec7ae0612f0c91b7a4f4413551783e4db212bf0a4a451bd52958fad`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
