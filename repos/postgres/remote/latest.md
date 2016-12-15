## `postgres:latest`

```console
$ docker pull postgres@sha256:855b55b060bfa63cb39bfee0fe4ec6f40037e9f85f8a7eec24bc8e59ec1a8345
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101598869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e24dd8079dc3d8e94901dfa6b3e37d0fb251c7a4b86dd52a79b5d9b53495525`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:33:55 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Dec 2016 17:33:55 GMT
ENV PG_VERSION=9.6.1-2.pgdg80+1
# Wed, 14 Dec 2016 17:33:56 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:34:24 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:34:25 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:34:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:34:26 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:34:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:34:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:34:27 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:34:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:34:28 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:34:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6ba638869dc061100bb651139de900fad9ccadfaec083fe707ae14a1b60ca2`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d456ed70c73e88741cc38ae78785cd6e8b22799ca4af0aaed59583afce70d6`  
		Last Modified: Wed, 14 Dec 2016 18:45:33 GMT  
		Size: 42.1 MB (42138768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9946f8491348924be78afe9a5e8427826518d495a29e081c7329ec80297234`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 7.2 KB (7151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaf404de7ad806fb11f584d68185175dcae60cb65448687426065197482cc3a`  
		Last Modified: Wed, 14 Dec 2016 18:45:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd7c84ea195b5f6bae8955062e0a5e7cc6d5c3daaa13b9b4c97059300d5f54d`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
