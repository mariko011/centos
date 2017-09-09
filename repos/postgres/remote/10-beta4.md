## `postgres:10-beta4`

```console
$ docker pull postgres@sha256:62ee0c240b07887f6c84b39e476fc94ed13fbfc824f8147b964a80307a6e6fe6
```

-	Platforms:
	-	linux; amd64

### `postgres:10-beta4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117306369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa9e9110114d30cfa1c14c98f1f78561097fbbe23ff1d385f5b556bb634aa45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:25:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 09:25:09 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 08 Sep 2017 09:25:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:25:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 09:25:28 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 08 Sep 2017 09:25:29 GMT
ENV LANG=en_US.utf8
# Fri, 08 Sep 2017 09:25:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 09:25:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 09:25:33 GMT
ENV PG_MAJOR=10
# Fri, 08 Sep 2017 09:25:33 GMT
ENV PG_VERSION=10~beta4-1.pgdg90+1
# Fri, 08 Sep 2017 09:26:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 09:26:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 08 Sep 2017 09:26:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Sep 2017 09:26:03 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 09:26:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Sep 2017 09:26:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Sep 2017 09:26:05 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Sep 2017 09:26:05 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:26:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 09:26:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:26:07 GMT
EXPOSE 5432/tcp
# Fri, 08 Sep 2017 09:26:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd572e9e3bb11c8f8dd9e47b1b006dac679329f81ad45131d96e9b83bb77d40d`  
		Last Modified: Sat, 09 Sep 2017 01:19:16 GMT  
		Size: 7.0 MB (7030077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8df3ec748042c0f1e376adc1d67caf6cbd3f888705c1de57e5d91c2468f7d2`  
		Last Modified: Sat, 09 Sep 2017 01:19:13 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b18bba81e8adef46ca43c16f0dbfe3e986b408cd26940782ac544d7c2f519a3`  
		Last Modified: Sat, 09 Sep 2017 01:19:13 GMT  
		Size: 956.4 KB (956417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf867eec5b07c041916c694a380c650d2aca2a639cba9a5001ec4add4993535`  
		Last Modified: Sat, 09 Sep 2017 01:19:14 GMT  
		Size: 6.6 MB (6577544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f291d2d5e824cb06e8f4da933b9fb92b6e7d397cae204b1c3fc33296d58f94`  
		Last Modified: Sat, 09 Sep 2017 01:19:12 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee725ac3cac21225a7ce360ce52a61dfedbd1bbee499f5deb5d898a004261ba`  
		Last Modified: Sat, 09 Sep 2017 01:19:12 GMT  
		Size: 4.5 KB (4470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73cc9cab5eb794b16c55cba7b47c57e08a7f99185b8e4fce5659ac55c4480ad`  
		Last Modified: Sat, 09 Sep 2017 01:19:26 GMT  
		Size: 57.6 MB (57601028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994c152fdf42cc8084d41e54e5b7463c2c6aee8908d7a112a532964155da1f1`  
		Last Modified: Sat, 09 Sep 2017 01:19:10 GMT  
		Size: 7.3 KB (7292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc0e38757c0dbb0f385208dff1835db76eac3bcd2df73d7551a5bb6fee90164`  
		Last Modified: Sat, 09 Sep 2017 01:19:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f530ac0b061ea61947349d8c33e606cf8942bbcd91167a7f743e6dc60a11418a`  
		Last Modified: Sat, 09 Sep 2017 01:19:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2febf81693fd9688c34d822a60eb93d4ac7e9583eb6fe65fd1ad8cbeea2d9e08`  
		Last Modified: Sat, 09 Sep 2017 01:19:10 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a447cd2e9066865c1e47bd31a5f1595d7e3981df5051b2edc8de19669267367f`  
		Last Modified: Sat, 09 Sep 2017 01:19:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
