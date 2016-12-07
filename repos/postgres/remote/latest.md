## `postgres:latest`

```console
$ docker pull postgres@sha256:e761829c4b5ec27a0798a867e5929049f4cbf243a364c81cad07e4b7ac2df3f1
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101590260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e3985acac0ede5faff5ffd84584b2278ac47d4c8fdf39f287efd8dd8104ee0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:18:37 GMT
ENV PG_MAJOR=9.6
# Wed, 09 Nov 2016 00:18:37 GMT
ENV PG_VERSION=9.6.1-1.pgdg80+1
# Wed, 09 Nov 2016 00:18:38 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:19:09 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:19:10 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:19:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:19:11 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:19:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:19:12 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 07 Dec 2016 19:32:26 GMT
COPY file:2667342c88c3e4659053a9d07a70f09350f6491759c2f19164575dfc2351c7d0 in / 
# Wed, 07 Dec 2016 19:32:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:27 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b9d41b7758f494e5723498f58d6103de53cad1dcfa2ed3047c56ef627b3035`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4f9522dd30df935e10caf88863696866534a8e0909a39950d1d9417cc2c091`  
		Last Modified: Wed, 09 Nov 2016 00:19:39 GMT  
		Size: 42.1 MB (42137185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920e548f9635b9e70b8fbf14d39e1a58d41def2401ee8e131c0b0d46abba0a85`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 7.2 KB (7152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628af7ef2ee5a0f0c2e5a0b25f5ad0925f180a1722dc058bee63aa3b0b08aed2`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004275e6f5b567861232baffd057871783683edb401d6f7550a22045284b4bd0`  
		Last Modified: Wed, 07 Dec 2016 19:33:01 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
