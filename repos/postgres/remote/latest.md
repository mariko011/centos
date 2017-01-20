## `postgres:latest`

```console
$ docker pull postgres@sha256:0842a7ef786aa2658623085160cb38451eb3d40856e7d222ae0069b6e6296877
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101602000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4023a747a01a29f94939c41fc5c2441837d9ebc05030c2681dc47853d73978c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:36:30 GMT
ENV PG_VERSION=9.6.1-2.pgdg80+1
# Tue, 17 Jan 2017 19:36:31 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:37:02 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:37:03 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:06:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:06:36 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:06:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:06:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:06:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:06:39 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:06:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:06:40 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:06:41 GMT
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
	-	`sha256:78c91f0aedcd497505c709b6bdaddf0f9f793dc77c9bbbaa8523794cdada545b`  
		Last Modified: Wed, 18 Jan 2017 06:57:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab52dbcbb871cf2b35c385bd2f17eb702e72653a9b9c692db1ca3c0613f826`  
		Last Modified: Wed, 18 Jan 2017 06:58:17 GMT  
		Size: 42.1 MB (42143440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ec75825613d9aac8c0713df7a0a73b5ff4f508313ec39fe6a6b35399cfd77e`  
		Last Modified: Wed, 18 Jan 2017 06:57:56 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ef691a9920e2c53e433896317f52d682b16645aa9ba3df39d0f5e7d4775a48`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dd20755c9fc0d0ffea23516f40b60613796495c438d30fc61bce14338e033`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4a824861f7154bc86e18f6ed800bb9689610dbdf3da9cf39ce14045af61529`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
