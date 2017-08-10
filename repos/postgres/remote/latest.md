## `postgres:latest`

```console
$ docker pull postgres@sha256:586320aba4a40f7c4ffdb69534f93c844f01c0ff1211c4b9d9f05a8bddca186f
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104393568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b06f064259120143321ba826ce7c172bf04404f9634911f545b7bac5aa547e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_MAJOR=9.6
# Thu, 10 Aug 2017 22:46:58 GMT
ENV PG_VERSION=9.6.4-1.pgdg80+1
# Thu, 10 Aug 2017 22:47:03 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 10 Aug 2017 22:48:04 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 22:48:05 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 10 Aug 2017 22:48:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 10 Aug 2017 22:48:05 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Aug 2017 22:48:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 10 Aug 2017 22:48:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 10 Aug 2017 22:48:07 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 10 Aug 2017 22:48:07 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 10 Aug 2017 22:48:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 10 Aug 2017 22:48:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 Aug 2017 22:48:09 GMT
EXPOSE 5432/tcp
# Thu, 10 Aug 2017 22:48:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd68bfa82d98cd2eaef8a9e26479fa1677276e635e258e1e96b152147bd403d3`  
		Last Modified: Thu, 10 Aug 2017 23:12:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49f2decd34d64025cf1f1c715ca814ffe676d9a26fcf53e2b37a28c748a5d9d`  
		Last Modified: Thu, 10 Aug 2017 23:12:44 GMT  
		Size: 43.4 MB (43356586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1468749943af3c7efb7c6ae418d6e7efabbd3684d8eff869af975d9b1df703`  
		Last Modified: Thu, 10 Aug 2017 23:12:31 GMT  
		Size: 7.1 KB (7097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d82d6e2d6c32ff0d9ab512aa5ed651bf3d2f386497baf507cdc2c19dff2edc`  
		Last Modified: Thu, 10 Aug 2017 23:12:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad849322ee0c2109ee29850518e96dd0c531a8fc792e2b7180ccaa6b5605986a`  
		Last Modified: Thu, 10 Aug 2017 23:12:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5539863a39f9724e855a6465b165e78924de425e4250beed864fbca9beaa664`  
		Last Modified: Thu, 10 Aug 2017 23:12:30 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc2b50256c28e190953b7aa564f336b395eb982578abd0ed441206a29718be`  
		Last Modified: Thu, 10 Aug 2017 23:12:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
