<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.5`](#percona55)
-	[`percona:5.5.57`](#percona5557)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.37`](#percona5637)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.19`](#percona5719)
-	[`percona:latest`](#perconalatest)

## `percona:5`

```console
$ docker pull percona@sha256:a1f1ff5d5baed7f5f3bc8400612fe9f83a16edb24f614eed07baf4e152c6e7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:5e4f2f4d22436ab67c307427f2a7f1e633dcf1adcae1987f3a096ff3097e77f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140338622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ce7cbd28327982aff0890a6e3f1304e5295d8635c10caf3de656b7e56a3b55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:41:05 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 09:43:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 09:43:13 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 13 Sep 2017 09:43:13 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 13 Sep 2017 09:43:13 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Wed, 13 Sep 2017 09:43:53 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 09:43:54 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 09:43:54 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 13 Sep 2017 09:43:54 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Wed, 13 Sep 2017 09:43:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 09:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 09:43:55 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 09:43:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484559b9b732098c2bc9a2f2197adc7f4dd60b9eae0db559bbcb721d641d7330`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c8b920b0174ffe840c28d2bc1e697c9d21adda7b644e1fad6ca4c34aa238d2`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a064a722149394bca4c7189e5829b9831b4497136f154111bf6054216c0f6f0`  
		Last Modified: Wed, 13 Sep 2017 09:46:05 GMT  
		Size: 79.8 MB (79759448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9f6699b57d5e0b8263286ff5693d88466051b6a792982257b3100cc2d78601`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b917427fbec1b8e194b2450d3ee4229a7092aadb1d8ef3799f19c397b5503f77`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0091bf0b55cd8640b6e8e8f02bdde40d63720d1669f9861f14f8978bbd7af1da`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:87fd167e901dc52bc3f6e904ed3d63966b1eda307ec2c9579a2ff4cbbaef58c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:1250fc42282aebe9dca76fbed14916c633ce507e6f0e12f00aadddcaafb6acb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105698305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77c79bed0953e75ae6acdd1917b118bb4780022007a508fc8bd0c60327db367`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:41:05 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 09:43:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 09:43:13 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 13 Sep 2017 09:44:44 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 13 Sep 2017 09:44:44 GMT
ENV PERCONA_VERSION=5.5.57-rel38.9-1.jessie
# Wed, 13 Sep 2017 09:45:40 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 09:45:41 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 09:45:41 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 13 Sep 2017 09:45:41 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 13 Sep 2017 09:45:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 09:45:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 09:45:43 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 09:45:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484559b9b732098c2bc9a2f2197adc7f4dd60b9eae0db559bbcb721d641d7330`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c8b920b0174ffe840c28d2bc1e697c9d21adda7b644e1fad6ca4c34aa238d2`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d88ebc468264f9687e3c01019a3e6c9eac182451a9e0bb82dd29806792a103`  
		Last Modified: Wed, 13 Sep 2017 09:46:54 GMT  
		Size: 45.1 MB (45117964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1264a0d098960a3ec0d3265e613230f3a1b0cc17a3b7e4fbe3445c658d9d511`  
		Last Modified: Wed, 13 Sep 2017 09:46:46 GMT  
		Size: 1.9 KB (1915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7084f8d9ec0a4fad42e757ff009cfc26fa2b68cb7fdfec8eb1c4600b6ed9030a`  
		Last Modified: Wed, 13 Sep 2017 09:46:46 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4040a9016f41efdf7ccb512a44be3449fbadc9e8f97b9a9c35bcee19a989a753`  
		Last Modified: Wed, 13 Sep 2017 09:46:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.57`

```console
$ docker pull percona@sha256:87fd167e901dc52bc3f6e904ed3d63966b1eda307ec2c9579a2ff4cbbaef58c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.57` - linux; amd64

```console
$ docker pull percona@sha256:1250fc42282aebe9dca76fbed14916c633ce507e6f0e12f00aadddcaafb6acb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105698305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77c79bed0953e75ae6acdd1917b118bb4780022007a508fc8bd0c60327db367`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:41:05 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 09:43:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 09:43:13 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 13 Sep 2017 09:44:44 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 13 Sep 2017 09:44:44 GMT
ENV PERCONA_VERSION=5.5.57-rel38.9-1.jessie
# Wed, 13 Sep 2017 09:45:40 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 09:45:41 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 09:45:41 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 13 Sep 2017 09:45:41 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 13 Sep 2017 09:45:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 09:45:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 09:45:43 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 09:45:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484559b9b732098c2bc9a2f2197adc7f4dd60b9eae0db559bbcb721d641d7330`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c8b920b0174ffe840c28d2bc1e697c9d21adda7b644e1fad6ca4c34aa238d2`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d88ebc468264f9687e3c01019a3e6c9eac182451a9e0bb82dd29806792a103`  
		Last Modified: Wed, 13 Sep 2017 09:46:54 GMT  
		Size: 45.1 MB (45117964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1264a0d098960a3ec0d3265e613230f3a1b0cc17a3b7e4fbe3445c658d9d511`  
		Last Modified: Wed, 13 Sep 2017 09:46:46 GMT  
		Size: 1.9 KB (1915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7084f8d9ec0a4fad42e757ff009cfc26fa2b68cb7fdfec8eb1c4600b6ed9030a`  
		Last Modified: Wed, 13 Sep 2017 09:46:46 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4040a9016f41efdf7ccb512a44be3449fbadc9e8f97b9a9c35bcee19a989a753`  
		Last Modified: Wed, 13 Sep 2017 09:46:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:2ad5c23e00fc30b3c60303ee624b202f349c6c9c9357860a7681003215bc5057
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:2933656e544cff8fb0dc29d25a20f77055044752d8bf9dbf1f1366f0d3f1199c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113628922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee70f485f4be6ed9fd610c4a35facd868e36036bf1e0f054be7f98224944956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:41:05 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 09:43:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 09:43:13 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 13 Sep 2017 09:43:57 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 13 Sep 2017 09:43:57 GMT
ENV PERCONA_VERSION=5.6.37-82.2-1.jessie
# Wed, 13 Sep 2017 09:44:40 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 09:44:40 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 09:44:41 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 13 Sep 2017 09:44:41 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 13 Sep 2017 09:44:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 09:44:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 09:44:42 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 09:44:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484559b9b732098c2bc9a2f2197adc7f4dd60b9eae0db559bbcb721d641d7330`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c8b920b0174ffe840c28d2bc1e697c9d21adda7b644e1fad6ca4c34aa238d2`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1be5df0f6f05af6ca9bd83511df7cb90931de1da566823ca31b547147b3824c`  
		Last Modified: Wed, 13 Sep 2017 09:46:32 GMT  
		Size: 53.0 MB (53048586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a467814bacfa226bb5b70980d708c8980fd9a09cb45418dbe70b759c268b1d84`  
		Last Modified: Wed, 13 Sep 2017 09:46:24 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa0935aec2d3b7b8a7c3d90960420d48dad8101ced73deb8917756f11c04276`  
		Last Modified: Wed, 13 Sep 2017 09:46:24 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9183a2353221edbf815fc27b6c989a4b2fc5092f8b1fbbe6f1aa12c1d1b94a`  
		Last Modified: Wed, 13 Sep 2017 09:46:25 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.37`

```console
$ docker pull percona@sha256:2ad5c23e00fc30b3c60303ee624b202f349c6c9c9357860a7681003215bc5057
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.37` - linux; amd64

```console
$ docker pull percona@sha256:2933656e544cff8fb0dc29d25a20f77055044752d8bf9dbf1f1366f0d3f1199c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113628922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee70f485f4be6ed9fd610c4a35facd868e36036bf1e0f054be7f98224944956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:41:05 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 09:43:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 09:43:13 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 13 Sep 2017 09:43:57 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 13 Sep 2017 09:43:57 GMT
ENV PERCONA_VERSION=5.6.37-82.2-1.jessie
# Wed, 13 Sep 2017 09:44:40 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 09:44:40 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 09:44:41 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 13 Sep 2017 09:44:41 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 13 Sep 2017 09:44:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 09:44:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 09:44:42 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 09:44:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484559b9b732098c2bc9a2f2197adc7f4dd60b9eae0db559bbcb721d641d7330`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c8b920b0174ffe840c28d2bc1e697c9d21adda7b644e1fad6ca4c34aa238d2`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1be5df0f6f05af6ca9bd83511df7cb90931de1da566823ca31b547147b3824c`  
		Last Modified: Wed, 13 Sep 2017 09:46:32 GMT  
		Size: 53.0 MB (53048586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a467814bacfa226bb5b70980d708c8980fd9a09cb45418dbe70b759c268b1d84`  
		Last Modified: Wed, 13 Sep 2017 09:46:24 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa0935aec2d3b7b8a7c3d90960420d48dad8101ced73deb8917756f11c04276`  
		Last Modified: Wed, 13 Sep 2017 09:46:24 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9183a2353221edbf815fc27b6c989a4b2fc5092f8b1fbbe6f1aa12c1d1b94a`  
		Last Modified: Wed, 13 Sep 2017 09:46:25 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:a1f1ff5d5baed7f5f3bc8400612fe9f83a16edb24f614eed07baf4e152c6e7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:5e4f2f4d22436ab67c307427f2a7f1e633dcf1adcae1987f3a096ff3097e77f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140338622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ce7cbd28327982aff0890a6e3f1304e5295d8635c10caf3de656b7e56a3b55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:41:05 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 09:43:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 09:43:13 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 13 Sep 2017 09:43:13 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 13 Sep 2017 09:43:13 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Wed, 13 Sep 2017 09:43:53 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 09:43:54 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 09:43:54 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 13 Sep 2017 09:43:54 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Wed, 13 Sep 2017 09:43:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 09:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 09:43:55 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 09:43:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484559b9b732098c2bc9a2f2197adc7f4dd60b9eae0db559bbcb721d641d7330`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c8b920b0174ffe840c28d2bc1e697c9d21adda7b644e1fad6ca4c34aa238d2`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a064a722149394bca4c7189e5829b9831b4497136f154111bf6054216c0f6f0`  
		Last Modified: Wed, 13 Sep 2017 09:46:05 GMT  
		Size: 79.8 MB (79759448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9f6699b57d5e0b8263286ff5693d88466051b6a792982257b3100cc2d78601`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b917427fbec1b8e194b2450d3ee4229a7092aadb1d8ef3799f19c397b5503f77`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0091bf0b55cd8640b6e8e8f02bdde40d63720d1669f9861f14f8978bbd7af1da`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.19`

```console
$ docker pull percona@sha256:a1f1ff5d5baed7f5f3bc8400612fe9f83a16edb24f614eed07baf4e152c6e7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.19` - linux; amd64

```console
$ docker pull percona@sha256:5e4f2f4d22436ab67c307427f2a7f1e633dcf1adcae1987f3a096ff3097e77f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140338622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ce7cbd28327982aff0890a6e3f1304e5295d8635c10caf3de656b7e56a3b55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:41:05 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 09:43:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 09:43:13 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 13 Sep 2017 09:43:13 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 13 Sep 2017 09:43:13 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Wed, 13 Sep 2017 09:43:53 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 09:43:54 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 09:43:54 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 13 Sep 2017 09:43:54 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Wed, 13 Sep 2017 09:43:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 09:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 09:43:55 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 09:43:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484559b9b732098c2bc9a2f2197adc7f4dd60b9eae0db559bbcb721d641d7330`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c8b920b0174ffe840c28d2bc1e697c9d21adda7b644e1fad6ca4c34aa238d2`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a064a722149394bca4c7189e5829b9831b4497136f154111bf6054216c0f6f0`  
		Last Modified: Wed, 13 Sep 2017 09:46:05 GMT  
		Size: 79.8 MB (79759448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9f6699b57d5e0b8263286ff5693d88466051b6a792982257b3100cc2d78601`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b917427fbec1b8e194b2450d3ee4229a7092aadb1d8ef3799f19c397b5503f77`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0091bf0b55cd8640b6e8e8f02bdde40d63720d1669f9861f14f8978bbd7af1da`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:a1f1ff5d5baed7f5f3bc8400612fe9f83a16edb24f614eed07baf4e152c6e7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:5e4f2f4d22436ab67c307427f2a7f1e633dcf1adcae1987f3a096ff3097e77f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140338622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ce7cbd28327982aff0890a6e3f1304e5295d8635c10caf3de656b7e56a3b55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:41:05 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 09:43:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 09:43:13 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 13 Sep 2017 09:43:13 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 13 Sep 2017 09:43:13 GMT
ENV PERCONA_VERSION=5.7.19-17-1.jessie
# Wed, 13 Sep 2017 09:43:53 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 09:43:54 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 09:43:54 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 13 Sep 2017 09:43:54 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Wed, 13 Sep 2017 09:43:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 09:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 09:43:55 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 09:43:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484559b9b732098c2bc9a2f2197adc7f4dd60b9eae0db559bbcb721d641d7330`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c8b920b0174ffe840c28d2bc1e697c9d21adda7b644e1fad6ca4c34aa238d2`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a064a722149394bca4c7189e5829b9831b4497136f154111bf6054216c0f6f0`  
		Last Modified: Wed, 13 Sep 2017 09:46:05 GMT  
		Size: 79.8 MB (79759448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9f6699b57d5e0b8263286ff5693d88466051b6a792982257b3100cc2d78601`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b917427fbec1b8e194b2450d3ee4229a7092aadb1d8ef3799f19c397b5503f77`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0091bf0b55cd8640b6e8e8f02bdde40d63720d1669f9861f14f8978bbd7af1da`  
		Last Modified: Wed, 13 Sep 2017 09:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
