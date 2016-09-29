## `postgres:latest`

```console
$ docker pull postgres@sha256:924650288891ce2e603c4bbe8491e7fa28d43a3fc792e302222a938ff4e6a349
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101551772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654b61cc82aad75c69948f6e92fc07371dfdfb95e5e294ca2c06c522114772cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:20:05 GMT
ENV PG_MAJOR=9.6
# Thu, 29 Sep 2016 17:17:44 GMT
ENV PG_VERSION=9.6.0-1.pgdg80+1
# Thu, 29 Sep 2016 17:17:45 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 29 Sep 2016 17:18:18 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Sep 2016 17:18:19 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 29 Sep 2016 17:18:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Thu, 29 Sep 2016 17:18:20 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Sep 2016 17:18:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 29 Sep 2016 17:18:21 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 29 Sep 2016 17:18:22 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Thu, 29 Sep 2016 17:18:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Sep 2016 17:18:22 GMT
EXPOSE 5432/tcp
# Thu, 29 Sep 2016 17:18:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f08971388d11b9c4faed503a35198224480850d5fad2ebcd04f2c2f174f4d8a`  
		Last Modified: Thu, 29 Sep 2016 17:19:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80ab5df227d25c91e2216fb2eef0d2e5a522e8e981d098f6d6b53adbec58bb2`  
		Last Modified: Thu, 29 Sep 2016 17:19:33 GMT  
		Size: 42.1 MB (42101660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e724cee41934e1dd55adbc4aae81275242a9862cea9cb31dca0627eff0de13f`  
		Last Modified: Thu, 29 Sep 2016 17:19:23 GMT  
		Size: 7.2 KB (7157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0a1ee64973b6e0887b71a3c7793e65a04e146c794bcf4dbde18ea5e8deeaf3`  
		Last Modified: Thu, 29 Sep 2016 17:19:21 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484ac0d6f901b0d589c66c27ca41f2afc82cb345758aa915de52c4184e82549d`  
		Last Modified: Thu, 29 Sep 2016 17:19:21 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
