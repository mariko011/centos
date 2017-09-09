## `percona:latest`

```console
$ docker pull percona@sha256:83a10d8ae048093ebae53e8fa10ba2fa4fddd6a59f3070315d67f68fd4eda9bc
```

-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140338515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77d486b69837540714c6d308824aa6bc32bdf6b5dd1a62aec00d1d9880f670d`
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
# Fri, 08 Sep 2017 07:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:11:00 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 09:11:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 09:11:05 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 08 Sep 2017 09:11:06 GMT
ENV PERCONA_MAJOR=5.7
# Fri, 08 Sep 2017 09:11:06 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Fri, 08 Sep 2017 09:11:44 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 09:11:45 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 09:11:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 08 Sep 2017 09:11:46 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:11:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 09:11:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:11:47 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 09:11:48 GMT
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
	-	`sha256:869d6723f7187ad70788af450df89e59ba39b0628427e8155f64d11f91d2d7cf`  
		Last Modified: Fri, 08 Sep 2017 19:50:31 GMT  
		Size: 6.7 MB (6670363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbb263dda81809f8a4a7419c39b89c1316935ebe99f747172f93effa51fa760`  
		Last Modified: Sat, 09 Sep 2017 00:59:36 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef00a70ab7882dab197ef4974a9d486c6f86489b03ab90f945de7baf7c564a49`  
		Last Modified: Sat, 09 Sep 2017 00:59:36 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8dec330d84002142b6e353250fcf95a58cdc414b7edd42be441cc4f78c1795`  
		Last Modified: Sat, 09 Sep 2017 00:59:57 GMT  
		Size: 79.8 MB (79759704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbd463cb5ab13cfe3fa91aa23b8b613bc6c47f7d8750648b13e5047f99b2ebd`  
		Last Modified: Sat, 09 Sep 2017 00:59:36 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496cdbe56a27555506f2410fcc5e3f1d2b687df3b9d85ffc2e28203e9cc35c5b`  
		Last Modified: Sat, 09 Sep 2017 00:59:37 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b9eed4ecff79096c02cf74c480901b2b83826065e3258911bf2f96cd89ef4f`  
		Last Modified: Sat, 09 Sep 2017 00:59:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
