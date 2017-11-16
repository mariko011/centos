## `mariadb:latest`

```console
$ docker pull mariadb@sha256:338258203d1466202d2332e6f6860a3dd24d3bf3578c1e6999c847c975f7e4ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:4fa0a45fdbe17c0f83a1fa3d3b3943fa5b294b274b7c37185873df56f99ac999
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135227218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abcee1d29aacc1a5fcf0cb7de90badcbb43063c522cbb3315ba3db92e6d965ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:39:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:39:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:39:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:40:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:40:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:40:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:41:05 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 16 Nov 2017 00:41:05 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Thu, 16 Nov 2017 00:41:06 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:41:43 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:41:43 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:41:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:41:48 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:41:51 GMT
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
	-	`sha256:62466fedcc9de3f1b9a23a3f2e8ceb480da865e89bf2c2dd49c375838d5c8b24`  
		Last Modified: Thu, 16 Nov 2017 00:45:21 GMT  
		Size: 985.1 KB (985127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef8399f3aa25b69d8082c992293c45b3b796a27543383a6e500c8dd60c02fc`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b2cf62e1dbbe275d7faa9b7c3eb01a80e88484741098bc797d501e2a65f68`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 6.7 MB (6670678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291500bf8263c5ed848a18e2cb353b71465bc264aa328be7e845df47b5c1d9e`  
		Last Modified: Thu, 16 Nov 2017 00:45:19 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77c97e1ff71cc907a7e7c12e7760e2a37f8dd9beee417df85053652c10e6576`  
		Last Modified: Thu, 16 Nov 2017 00:45:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5024f663c035365b23584d891192048bdf9be3b64e99176fad8ddb207f1fbca7`  
		Last Modified: Thu, 16 Nov 2017 00:45:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc69980fbc042a90a4486d87810cda461a1b1b8ad316bbbae14afb8600d9addf`  
		Last Modified: Thu, 16 Nov 2017 00:46:09 GMT  
		Size: 74.9 MB (74949940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57f4562fa50b5bde231ea6608c6c50ad03ae8b36213fcd1d6f0440267ed085e`  
		Last Modified: Thu, 16 Nov 2017 00:45:57 GMT  
		Size: 2.6 KB (2555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c749b145afb630f9411ee8553419f5ffdcf09b6fcb485e57b43f67755bac83`  
		Last Modified: Thu, 16 Nov 2017 00:45:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
