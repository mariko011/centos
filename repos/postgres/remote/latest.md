## `postgres:latest`

```console
$ docker pull postgres@sha256:d840ed1ed691cbe020323596e62201e045c49c4ecf21344f2926fd05f1d1d961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

```console
$ docker pull postgres@sha256:bfdb5cecec046e2dafa9a8ef4b669e6802f8abe59c7575451f0d5e60e033dfb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116700618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a2d73f5ce34a9d247f21b9f0006cf6c7bbcfdc38aaa266db7475cebf9f41e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 09:05:00 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 04 Nov 2017 09:05:00 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:05:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 09:05:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 04 Nov 2017 09:05:19 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:05:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:05:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 09:05:24 GMT
ENV PG_MAJOR=10
# Mon, 13 Nov 2017 16:12:18 GMT
ENV PG_VERSION=10.1-1.pgdg90+1
# Mon, 13 Nov 2017 16:12:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 13 Nov 2017 16:12:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:12:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:12:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Mon, 13 Nov 2017 16:12:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:12:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:12:46 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:12:47 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:12:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:12:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:12:48 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:12:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb9dc1cfcb8dafd437c65277f42e0af7f8502719bb16da96fe1e13996bd8b97`  
		Last Modified: Sat, 04 Nov 2017 09:25:14 GMT  
		Size: 6.9 MB (6920873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a344e5b3663cf66a215586c9fdbd5970238c770e6465d08fdf94e1260424f90`  
		Last Modified: Sat, 04 Nov 2017 09:25:12 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d619f9c5def65be41397e463680af16265e32e772803735003762d31aa9fddbe`  
		Last Modified: Sat, 04 Nov 2017 09:25:10 GMT  
		Size: 956.6 KB (956618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225b82de1e67b15d2c2f7466adc913671fbf250b71eb2c1ba42fe4eb38b355f2`  
		Last Modified: Sat, 04 Nov 2017 09:25:12 GMT  
		Size: 6.6 MB (6577399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10daa23c1d9a637911b241e4e6843df129ced1120596e90af0726ae319f72d5b`  
		Last Modified: Sat, 04 Nov 2017 09:25:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba4a4b2d69b010325ff1e86b9dd839dcfc2f7772405d47e79ea86817abfb2d0`  
		Last Modified: Sat, 04 Nov 2017 09:25:09 GMT  
		Size: 4.5 KB (4479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7138e38f64336fee4993b5937ae7b1fbaf4caaddda6f3ab9898d47cbf3355a69`  
		Last Modified: Mon, 13 Nov 2017 16:35:19 GMT  
		Size: 57.1 MB (57100775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d473ec94c4ae89dc06f31f1fdfeb439a3ae6112541873a72141ce8d3efc36b0`  
		Last Modified: Mon, 13 Nov 2017 16:35:04 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f370795820a4e739545e5a586f8165366c9558c21aff4cb9b507aae535aa4a2`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9d4bbd031377870060bc265e3286b881e36e9d86873a18b5cf3c4ff6c8ae91`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d38c1cd82817cd160d53e30389d141759d8cbce6ae7848bb51f62dbd317ef6`  
		Last Modified: Mon, 13 Nov 2017 16:35:03 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884c0b44a64a801c1c55e40b959e3cb0fc49a437c00c00c3573138c672afaeaa`  
		Last Modified: Mon, 13 Nov 2017 16:35:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
