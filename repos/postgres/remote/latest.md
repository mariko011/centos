## `postgres:latest`

```console
$ docker pull postgres@sha256:ff99a5301e7c81cba881e3fbdbf4df5a068683765249ba5ea5694a83747509d4
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101796496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd991538a0fbb77f8a0327d5ef92b4fe1c50da57719c4a8e810b399199e53e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:36:30 GMT
ENV PG_MAJOR=9.6
# Fri, 10 Feb 2017 00:28:09 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Fri, 10 Feb 2017 00:28:10 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 10 Feb 2017 00:28:58 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 00:29:00 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:29:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:29:02 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:29:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:29:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:29:05 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:29:06 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:29:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:29:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:29:09 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:29:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd975526cfbc326e37b386f779043722326bc30eb7af09d6287d13b6c7a4941`  
		Last Modified: Fri, 10 Feb 2017 00:53:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63112c9f9e8d99401b0808250fbf24503a13db0507196c14716828246f774e8c`  
		Last Modified: Fri, 10 Feb 2017 00:53:39 GMT  
		Size: 42.3 MB (42337768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512813961d560004edbb53bdbc4aed70036d0e2f9c74c85819db5348624387df`  
		Last Modified: Fri, 10 Feb 2017 00:53:17 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e6df12323a9a6f2d2f516263dae9e3211c5d176953fa0536fd73c844af0be0`  
		Last Modified: Fri, 10 Feb 2017 00:53:17 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a180292adaf327d4ef98e37aa7a8653dbee2181f58235ad24a362d2399bb22d0`  
		Last Modified: Fri, 10 Feb 2017 00:53:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa13b6035e19d5e0e199c8f0822a8421c46ecd87f1f66ee168cb7d6c2eec2a5f`  
		Last Modified: Fri, 10 Feb 2017 00:53:17 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad671404dcdb5ca1fd8e3b2f016703fd7c5aaea2d5f303b8558fd0a726307ae7`  
		Last Modified: Fri, 10 Feb 2017 00:53:17 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
