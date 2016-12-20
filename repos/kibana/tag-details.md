<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5.1.1`](#kibana511)
-	[`kibana:5.1`](#kibana51)
-	[`kibana:5`](#kibana5)
-	[`kibana:latest`](#kibanalatest)
-	[`kibana:4.6.3`](#kibana463)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4`](#kibana4)
-	[`kibana:4.1.11`](#kibana4111)
-	[`kibana:4.1`](#kibana41)

## `kibana:5.1.1`

```console
$ docker pull kibana@sha256:2baa1cf2065820f7055d7be79258276fcee7eca111857f7c4f6d40d13015c94b
```

-	Platforms:
	-	linux; amd64

### `kibana:5.1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109819333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcfb02a0f0c04cff09451dc882288fcdb871e244353a90e05a7c8a82dfdc87c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Dec 2016 00:59:19 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:59:19 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 00:59:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 00:59:24 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Dec 2016 00:59:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Dec 2016 00:59:29 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 00:59:29 GMT
ENV KIBANA_VERSION=5.1.1
# Wed, 14 Dec 2016 00:59:30 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 14 Dec 2016 00:59:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 14 Dec 2016 00:59:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:59:53 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 14 Dec 2016 00:59:53 GMT
EXPOSE 5601/tcp
# Wed, 14 Dec 2016 00:59:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 00:59:54 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1bfc513e89294dba05f0fac28fee182955b6e17f2f52bcf714e43bdf0a2890`  
		Last Modified: Mon, 19 Dec 2016 23:38:26 GMT  
		Size: 18.5 MB (18457972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176921c49e38294bc77d1789c89a09abaf40f0542fcbeecb121a077764f8692e`  
		Last Modified: Mon, 19 Dec 2016 23:38:20 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf59802c664295b94291229574a07d7fdd1189d0be3d3c7ef585f4739333fc41`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686bca49c6e882723ef1adede3c28dc1b847b4b439e4f2621f1b28ca3d2ce5c2`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc213ef88e3e8370d5f6c3994da956766ca76623d4c8daf7db12bf39e5d72fe`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423a4e40a9cdb6207158f9ef32a09d4b93b3d934998f96390a4f88138cea538f`  
		Last Modified: Mon, 19 Dec 2016 23:38:42 GMT  
		Size: 39.2 MB (39176823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c561dbbf35c27910642d20236ea570efd8e33cda37af5cb5cd5cbdb9361db181`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.1`

```console
$ docker pull kibana@sha256:2baa1cf2065820f7055d7be79258276fcee7eca111857f7c4f6d40d13015c94b
```

-	Platforms:
	-	linux; amd64

### `kibana:5.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109819333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcfb02a0f0c04cff09451dc882288fcdb871e244353a90e05a7c8a82dfdc87c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Dec 2016 00:59:19 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:59:19 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 00:59:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 00:59:24 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Dec 2016 00:59:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Dec 2016 00:59:29 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 00:59:29 GMT
ENV KIBANA_VERSION=5.1.1
# Wed, 14 Dec 2016 00:59:30 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 14 Dec 2016 00:59:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 14 Dec 2016 00:59:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:59:53 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 14 Dec 2016 00:59:53 GMT
EXPOSE 5601/tcp
# Wed, 14 Dec 2016 00:59:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 00:59:54 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1bfc513e89294dba05f0fac28fee182955b6e17f2f52bcf714e43bdf0a2890`  
		Last Modified: Mon, 19 Dec 2016 23:38:26 GMT  
		Size: 18.5 MB (18457972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176921c49e38294bc77d1789c89a09abaf40f0542fcbeecb121a077764f8692e`  
		Last Modified: Mon, 19 Dec 2016 23:38:20 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf59802c664295b94291229574a07d7fdd1189d0be3d3c7ef585f4739333fc41`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686bca49c6e882723ef1adede3c28dc1b847b4b439e4f2621f1b28ca3d2ce5c2`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc213ef88e3e8370d5f6c3994da956766ca76623d4c8daf7db12bf39e5d72fe`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423a4e40a9cdb6207158f9ef32a09d4b93b3d934998f96390a4f88138cea538f`  
		Last Modified: Mon, 19 Dec 2016 23:38:42 GMT  
		Size: 39.2 MB (39176823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c561dbbf35c27910642d20236ea570efd8e33cda37af5cb5cd5cbdb9361db181`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:2baa1cf2065820f7055d7be79258276fcee7eca111857f7c4f6d40d13015c94b
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109819333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcfb02a0f0c04cff09451dc882288fcdb871e244353a90e05a7c8a82dfdc87c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Dec 2016 00:59:19 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:59:19 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 00:59:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 00:59:24 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Dec 2016 00:59:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Dec 2016 00:59:29 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 00:59:29 GMT
ENV KIBANA_VERSION=5.1.1
# Wed, 14 Dec 2016 00:59:30 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 14 Dec 2016 00:59:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 14 Dec 2016 00:59:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:59:53 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 14 Dec 2016 00:59:53 GMT
EXPOSE 5601/tcp
# Wed, 14 Dec 2016 00:59:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 00:59:54 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1bfc513e89294dba05f0fac28fee182955b6e17f2f52bcf714e43bdf0a2890`  
		Last Modified: Mon, 19 Dec 2016 23:38:26 GMT  
		Size: 18.5 MB (18457972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176921c49e38294bc77d1789c89a09abaf40f0542fcbeecb121a077764f8692e`  
		Last Modified: Mon, 19 Dec 2016 23:38:20 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf59802c664295b94291229574a07d7fdd1189d0be3d3c7ef585f4739333fc41`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686bca49c6e882723ef1adede3c28dc1b847b4b439e4f2621f1b28ca3d2ce5c2`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc213ef88e3e8370d5f6c3994da956766ca76623d4c8daf7db12bf39e5d72fe`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423a4e40a9cdb6207158f9ef32a09d4b93b3d934998f96390a4f88138cea538f`  
		Last Modified: Mon, 19 Dec 2016 23:38:42 GMT  
		Size: 39.2 MB (39176823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c561dbbf35c27910642d20236ea570efd8e33cda37af5cb5cd5cbdb9361db181`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:2baa1cf2065820f7055d7be79258276fcee7eca111857f7c4f6d40d13015c94b
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109819333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcfb02a0f0c04cff09451dc882288fcdb871e244353a90e05a7c8a82dfdc87c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Dec 2016 00:59:19 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:59:19 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 00:59:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 00:59:24 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Dec 2016 00:59:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Dec 2016 00:59:29 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 00:59:29 GMT
ENV KIBANA_VERSION=5.1.1
# Wed, 14 Dec 2016 00:59:30 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 14 Dec 2016 00:59:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 14 Dec 2016 00:59:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:59:53 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 14 Dec 2016 00:59:53 GMT
EXPOSE 5601/tcp
# Wed, 14 Dec 2016 00:59:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 00:59:54 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1bfc513e89294dba05f0fac28fee182955b6e17f2f52bcf714e43bdf0a2890`  
		Last Modified: Mon, 19 Dec 2016 23:38:26 GMT  
		Size: 18.5 MB (18457972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176921c49e38294bc77d1789c89a09abaf40f0542fcbeecb121a077764f8692e`  
		Last Modified: Mon, 19 Dec 2016 23:38:20 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf59802c664295b94291229574a07d7fdd1189d0be3d3c7ef585f4739333fc41`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686bca49c6e882723ef1adede3c28dc1b847b4b439e4f2621f1b28ca3d2ce5c2`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc213ef88e3e8370d5f6c3994da956766ca76623d4c8daf7db12bf39e5d72fe`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423a4e40a9cdb6207158f9ef32a09d4b93b3d934998f96390a4f88138cea538f`  
		Last Modified: Mon, 19 Dec 2016 23:38:42 GMT  
		Size: 39.2 MB (39176823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c561dbbf35c27910642d20236ea570efd8e33cda37af5cb5cd5cbdb9361db181`  
		Last Modified: Mon, 19 Dec 2016 23:38:18 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.3`

```console
$ docker pull kibana@sha256:b3fccc451ef5a863d30dda2cc1c4761ad5d26943dda07cbda292b2e9b758e688
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103087628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd3d1a1e2e62b80ece5ca40b40e7b01e5f37c017525a933212a5bc8ff559ed5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Dec 2016 00:58:23 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:58:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 00:58:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 00:58:28 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Dec 2016 00:58:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Dec 2016 00:58:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 00:58:34 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 14 Dec 2016 00:58:34 GMT
ENV KIBANA_VERSION=4.6.3
# Wed, 14 Dec 2016 00:58:35 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 14 Dec 2016 00:58:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 14 Dec 2016 00:58:54 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:58:54 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 14 Dec 2016 00:58:55 GMT
EXPOSE 5601/tcp
# Wed, 14 Dec 2016 00:58:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 00:58:55 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e00a3db9dc6b679810ef5ab1c7e5fc9b07d4900469b29175b204af9597a232`  
		Last Modified: Mon, 19 Dec 2016 23:35:58 GMT  
		Size: 16.6 MB (16612125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11eac4e0a6c21c587e9767b743ad475c4e8049bfce6bbba765479b8dcce87531`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6e83a4efc203366254f1dd3f11ebecb8ebfc24f11f10e9ca271375ef396ff2`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5a372839c5fa7f45cf97d5f728bc577f578eacd26b77c63f047a6dddccc17c`  
		Last Modified: Mon, 19 Dec 2016 23:36:52 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f155feeefe7fbed7d87386a4651e784464cc21104b1370d530a0708a4e9eb1e`  
		Last Modified: Mon, 19 Dec 2016 23:36:52 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d838481179147aaca94066dcf3bff31206484c735b20045a97180e2a4a2ccd`  
		Last Modified: Mon, 19 Dec 2016 23:37:14 GMT  
		Size: 34.3 MB (34290963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ee3095e66e0a1eb84409cc1133d30a248b2b1fb6ede4c36b5249320af222e3`  
		Last Modified: Mon, 19 Dec 2016 23:36:52 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:b3fccc451ef5a863d30dda2cc1c4761ad5d26943dda07cbda292b2e9b758e688
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103087628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd3d1a1e2e62b80ece5ca40b40e7b01e5f37c017525a933212a5bc8ff559ed5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Dec 2016 00:58:23 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:58:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 00:58:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 00:58:28 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Dec 2016 00:58:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Dec 2016 00:58:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 00:58:34 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 14 Dec 2016 00:58:34 GMT
ENV KIBANA_VERSION=4.6.3
# Wed, 14 Dec 2016 00:58:35 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 14 Dec 2016 00:58:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 14 Dec 2016 00:58:54 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:58:54 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 14 Dec 2016 00:58:55 GMT
EXPOSE 5601/tcp
# Wed, 14 Dec 2016 00:58:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 00:58:55 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e00a3db9dc6b679810ef5ab1c7e5fc9b07d4900469b29175b204af9597a232`  
		Last Modified: Mon, 19 Dec 2016 23:35:58 GMT  
		Size: 16.6 MB (16612125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11eac4e0a6c21c587e9767b743ad475c4e8049bfce6bbba765479b8dcce87531`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6e83a4efc203366254f1dd3f11ebecb8ebfc24f11f10e9ca271375ef396ff2`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5a372839c5fa7f45cf97d5f728bc577f578eacd26b77c63f047a6dddccc17c`  
		Last Modified: Mon, 19 Dec 2016 23:36:52 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f155feeefe7fbed7d87386a4651e784464cc21104b1370d530a0708a4e9eb1e`  
		Last Modified: Mon, 19 Dec 2016 23:36:52 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d838481179147aaca94066dcf3bff31206484c735b20045a97180e2a4a2ccd`  
		Last Modified: Mon, 19 Dec 2016 23:37:14 GMT  
		Size: 34.3 MB (34290963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ee3095e66e0a1eb84409cc1133d30a248b2b1fb6ede4c36b5249320af222e3`  
		Last Modified: Mon, 19 Dec 2016 23:36:52 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:b3fccc451ef5a863d30dda2cc1c4761ad5d26943dda07cbda292b2e9b758e688
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103087628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd3d1a1e2e62b80ece5ca40b40e7b01e5f37c017525a933212a5bc8ff559ed5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Dec 2016 00:58:23 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:58:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 00:58:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 00:58:28 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Dec 2016 00:58:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Dec 2016 00:58:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 00:58:34 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 14 Dec 2016 00:58:34 GMT
ENV KIBANA_VERSION=4.6.3
# Wed, 14 Dec 2016 00:58:35 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 14 Dec 2016 00:58:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 14 Dec 2016 00:58:54 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:58:54 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 14 Dec 2016 00:58:55 GMT
EXPOSE 5601/tcp
# Wed, 14 Dec 2016 00:58:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 00:58:55 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e00a3db9dc6b679810ef5ab1c7e5fc9b07d4900469b29175b204af9597a232`  
		Last Modified: Mon, 19 Dec 2016 23:35:58 GMT  
		Size: 16.6 MB (16612125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11eac4e0a6c21c587e9767b743ad475c4e8049bfce6bbba765479b8dcce87531`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6e83a4efc203366254f1dd3f11ebecb8ebfc24f11f10e9ca271375ef396ff2`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5a372839c5fa7f45cf97d5f728bc577f578eacd26b77c63f047a6dddccc17c`  
		Last Modified: Mon, 19 Dec 2016 23:36:52 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f155feeefe7fbed7d87386a4651e784464cc21104b1370d530a0708a4e9eb1e`  
		Last Modified: Mon, 19 Dec 2016 23:36:52 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d838481179147aaca94066dcf3bff31206484c735b20045a97180e2a4a2ccd`  
		Last Modified: Mon, 19 Dec 2016 23:37:14 GMT  
		Size: 34.3 MB (34290963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ee3095e66e0a1eb84409cc1133d30a248b2b1fb6ede4c36b5249320af222e3`  
		Last Modified: Mon, 19 Dec 2016 23:36:52 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1.11`

```console
$ docker pull kibana@sha256:b5d4847eee9ab87cb4433fa414dce99781236b90626c55d4ae65f171cc1ed9a5
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87800909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b29818bde362f376e6a7a682361456d261dcc738fa91b31167d91af1ed95aa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Dec 2016 00:58:23 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:58:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 00:58:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 00:58:28 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Dec 2016 00:58:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Dec 2016 00:58:56 GMT
ENV KIBANA_VERSION=4.1.11
# Wed, 14 Dec 2016 00:58:56 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Wed, 14 Dec 2016 00:59:03 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 14 Dec 2016 00:59:04 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:59:04 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Wed, 14 Dec 2016 00:59:04 GMT
EXPOSE 5601/tcp
# Wed, 14 Dec 2016 00:59:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 00:59:05 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e00a3db9dc6b679810ef5ab1c7e5fc9b07d4900469b29175b204af9597a232`  
		Last Modified: Mon, 19 Dec 2016 23:35:58 GMT  
		Size: 16.6 MB (16612125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11eac4e0a6c21c587e9767b743ad475c4e8049bfce6bbba765479b8dcce87531`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6e83a4efc203366254f1dd3f11ebecb8ebfc24f11f10e9ca271375ef396ff2`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5bf5fc77888877ab1bd8c3d0d7d4cccc8885b1696ed898edf34f794828b632`  
		Last Modified: Mon, 19 Dec 2016 23:36:04 GMT  
		Size: 19.0 MB (19005919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106a4cdddb6b177da44817861afbb8c18ecfd633444cf2ca220a479418995f36`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1`

```console
$ docker pull kibana@sha256:b5d4847eee9ab87cb4433fa414dce99781236b90626c55d4ae65f171cc1ed9a5
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87800909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b29818bde362f376e6a7a682361456d261dcc738fa91b31167d91af1ed95aa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Dec 2016 00:58:23 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:58:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 00:58:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 00:58:28 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Dec 2016 00:58:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Dec 2016 00:58:56 GMT
ENV KIBANA_VERSION=4.1.11
# Wed, 14 Dec 2016 00:58:56 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Wed, 14 Dec 2016 00:59:03 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 14 Dec 2016 00:59:04 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:59:04 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Wed, 14 Dec 2016 00:59:04 GMT
EXPOSE 5601/tcp
# Wed, 14 Dec 2016 00:59:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 00:59:05 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e00a3db9dc6b679810ef5ab1c7e5fc9b07d4900469b29175b204af9597a232`  
		Last Modified: Mon, 19 Dec 2016 23:35:58 GMT  
		Size: 16.6 MB (16612125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11eac4e0a6c21c587e9767b743ad475c4e8049bfce6bbba765479b8dcce87531`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6e83a4efc203366254f1dd3f11ebecb8ebfc24f11f10e9ca271375ef396ff2`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5bf5fc77888877ab1bd8c3d0d7d4cccc8885b1696ed898edf34f794828b632`  
		Last Modified: Mon, 19 Dec 2016 23:36:04 GMT  
		Size: 19.0 MB (19005919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106a4cdddb6b177da44817861afbb8c18ecfd633444cf2ca220a479418995f36`  
		Last Modified: Mon, 19 Dec 2016 23:35:52 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
