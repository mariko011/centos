## `postgres:latest`

```console
$ docker pull postgres@sha256:e92fe21f695d27be7050284229a1c8c63ac10d88cba58d779c243566e125aa34
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104340319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d91fbcfa35ae3c8ef05ab5056a154b7f7553b2be8698072d066c50c0d08aad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 27 Jun 2017 17:33:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Jun 2017 17:33:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 27 Jun 2017 17:33:21 GMT
ENV GOSU_VERSION=1.7
# Tue, 27 Jun 2017 17:33:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 27 Jun 2017 17:33:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 27 Jun 2017 17:33:55 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:33:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:33:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 27 Jun 2017 17:34:00 GMT
ENV PG_MAJOR=9.6
# Tue, 27 Jun 2017 17:34:00 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Tue, 27 Jun 2017 17:34:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 27 Jun 2017 17:34:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Jun 2017 17:34:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:34:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:34:48 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:34:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:34:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:34:51 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:34:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:34:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:34:56 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:34:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3070b9fd6212ed62b7fd933f106a9687b02cc53e8fd1a934f686352efafcf5`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945954562465528323d7367da3a98bfefedebb88e91e300da277a66cb0a6dc00`  
		Last Modified: Tue, 27 Jun 2017 17:45:06 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa64a58ef1ad9b2ee477f0762e0aff01f1a24274c715de42192c9deddf6308a`  
		Last Modified: Tue, 27 Jun 2017 17:45:07 GMT  
		Size: 7.1 MB (7114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796db2a3276b7496e6ad9f2b8f928edb8e4c2144c1f3fc67823eb4eed59db3f9`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e84c2461e4dac3b9f50ed6d68ddcfb6e18807f75666f8a4af2a4c6199e2522`  
		Last Modified: Tue, 27 Jun 2017 17:45:05 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e2459f9d5667675c7eb392f47b94e8a11e8a7054669eaf6e19ef0a62c1c492`  
		Last Modified: Tue, 27 Jun 2017 17:45:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5037dff1690ca6b2befedf68332f7ef1e9a9ef37e027a59fb21f5b37718e7e1`  
		Last Modified: Tue, 27 Jun 2017 17:45:16 GMT  
		Size: 43.3 MB (43290810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b61d2ebe8d5002650a268883473d5a89fff107da63fe8e00aaa1befdf61324`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd32c7a376f936924ab53fadade14f1a005e00468e2438280eaf4854eacdc6a`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e120e164d93baa748305f0f75d54831a57bcf72604389b5caa510ece9fb8e4c`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b494ed061766a2521a32eef39c6c67dec434d95ef06e4023ddac3266f938c9`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cfe40f51e3699e23325739c979193f2fdd9782e707f3d34daf45838fdfb5bb`  
		Last Modified: Tue, 27 Jun 2017 17:45:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
