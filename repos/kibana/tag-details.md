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
$ docker pull kibana@sha256:cd75925d96925a6b065782f2e838f2a345ab32d3e7c2667a87a1d550207eff35
```

-	Platforms:
	-	linux; amd64

### `kibana:5.1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109811730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b110fb13e67d51599702e5a0499559fd86a08bce721969d7130dc05e3ae92d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:25:19 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 08 Nov 2016 20:32:16 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:32:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 20:32:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 20:32:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 08 Nov 2016 20:32:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 08 Nov 2016 20:32:27 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:46:09 GMT
ENV KIBANA_VERSION=5.1.1
# Fri, 09 Dec 2016 17:46:10 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 09 Dec 2016 17:46:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 09 Dec 2016 17:46:30 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Dec 2016 17:46:31 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 09 Dec 2016 17:46:31 GMT
EXPOSE 5601/tcp
# Fri, 09 Dec 2016 17:46:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:46:32 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca92df3a376d42a01bfbeccafcddd0d5661fec2f29c9f62c140b032416dd4a8`  
		Last Modified: Tue, 08 Nov 2016 20:26:19 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04752ac6b44b7d73a18d102d7c529be122c5d848e03918f97cbe2afcb5f67c6`  
		Last Modified: Tue, 08 Nov 2016 20:33:12 GMT  
		Size: 18.5 MB (18456506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bfecbcf70ff7fb01040fd49649476ce19c1757482de927932387ff5683c7f81`  
		Last Modified: Tue, 08 Nov 2016 20:33:05 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1338b2c8ead733b160592bfc13ae32ef463b181083962b8a7a5ba9c42bba5a9`  
		Last Modified: Tue, 08 Nov 2016 20:33:02 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe1da400856ae4c727463c1c5a232e487ee53fbc0f847ab34f8ba3a5cc88c85`  
		Last Modified: Tue, 08 Nov 2016 20:33:01 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9000d704548aad08ae1679d7069f8be42271f6754ac8c7f21713a321fdea23ca`  
		Last Modified: Fri, 09 Dec 2016 17:46:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85010a6b8e488bca4648c46fa2f50b3817e4166f532064925986f3d2165bf9b0`  
		Last Modified: Fri, 09 Dec 2016 17:47:00 GMT  
		Size: 39.2 MB (39176823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eea9f6577f68a53443a23d51aa8a7f4ddf19b821290c64ed2595aa43a7d990`  
		Last Modified: Fri, 09 Dec 2016 17:46:46 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.1`

```console
$ docker pull kibana@sha256:cd75925d96925a6b065782f2e838f2a345ab32d3e7c2667a87a1d550207eff35
```

-	Platforms:
	-	linux; amd64

### `kibana:5.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109811730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b110fb13e67d51599702e5a0499559fd86a08bce721969d7130dc05e3ae92d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:25:19 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 08 Nov 2016 20:32:16 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:32:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 20:32:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 20:32:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 08 Nov 2016 20:32:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 08 Nov 2016 20:32:27 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:46:09 GMT
ENV KIBANA_VERSION=5.1.1
# Fri, 09 Dec 2016 17:46:10 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 09 Dec 2016 17:46:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 09 Dec 2016 17:46:30 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Dec 2016 17:46:31 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 09 Dec 2016 17:46:31 GMT
EXPOSE 5601/tcp
# Fri, 09 Dec 2016 17:46:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:46:32 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca92df3a376d42a01bfbeccafcddd0d5661fec2f29c9f62c140b032416dd4a8`  
		Last Modified: Tue, 08 Nov 2016 20:26:19 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04752ac6b44b7d73a18d102d7c529be122c5d848e03918f97cbe2afcb5f67c6`  
		Last Modified: Tue, 08 Nov 2016 20:33:12 GMT  
		Size: 18.5 MB (18456506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bfecbcf70ff7fb01040fd49649476ce19c1757482de927932387ff5683c7f81`  
		Last Modified: Tue, 08 Nov 2016 20:33:05 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1338b2c8ead733b160592bfc13ae32ef463b181083962b8a7a5ba9c42bba5a9`  
		Last Modified: Tue, 08 Nov 2016 20:33:02 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe1da400856ae4c727463c1c5a232e487ee53fbc0f847ab34f8ba3a5cc88c85`  
		Last Modified: Tue, 08 Nov 2016 20:33:01 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9000d704548aad08ae1679d7069f8be42271f6754ac8c7f21713a321fdea23ca`  
		Last Modified: Fri, 09 Dec 2016 17:46:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85010a6b8e488bca4648c46fa2f50b3817e4166f532064925986f3d2165bf9b0`  
		Last Modified: Fri, 09 Dec 2016 17:47:00 GMT  
		Size: 39.2 MB (39176823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eea9f6577f68a53443a23d51aa8a7f4ddf19b821290c64ed2595aa43a7d990`  
		Last Modified: Fri, 09 Dec 2016 17:46:46 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:cd75925d96925a6b065782f2e838f2a345ab32d3e7c2667a87a1d550207eff35
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109811730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b110fb13e67d51599702e5a0499559fd86a08bce721969d7130dc05e3ae92d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:25:19 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 08 Nov 2016 20:32:16 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:32:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 20:32:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 20:32:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 08 Nov 2016 20:32:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 08 Nov 2016 20:32:27 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:46:09 GMT
ENV KIBANA_VERSION=5.1.1
# Fri, 09 Dec 2016 17:46:10 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 09 Dec 2016 17:46:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 09 Dec 2016 17:46:30 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Dec 2016 17:46:31 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 09 Dec 2016 17:46:31 GMT
EXPOSE 5601/tcp
# Fri, 09 Dec 2016 17:46:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:46:32 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca92df3a376d42a01bfbeccafcddd0d5661fec2f29c9f62c140b032416dd4a8`  
		Last Modified: Tue, 08 Nov 2016 20:26:19 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04752ac6b44b7d73a18d102d7c529be122c5d848e03918f97cbe2afcb5f67c6`  
		Last Modified: Tue, 08 Nov 2016 20:33:12 GMT  
		Size: 18.5 MB (18456506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bfecbcf70ff7fb01040fd49649476ce19c1757482de927932387ff5683c7f81`  
		Last Modified: Tue, 08 Nov 2016 20:33:05 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1338b2c8ead733b160592bfc13ae32ef463b181083962b8a7a5ba9c42bba5a9`  
		Last Modified: Tue, 08 Nov 2016 20:33:02 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe1da400856ae4c727463c1c5a232e487ee53fbc0f847ab34f8ba3a5cc88c85`  
		Last Modified: Tue, 08 Nov 2016 20:33:01 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9000d704548aad08ae1679d7069f8be42271f6754ac8c7f21713a321fdea23ca`  
		Last Modified: Fri, 09 Dec 2016 17:46:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85010a6b8e488bca4648c46fa2f50b3817e4166f532064925986f3d2165bf9b0`  
		Last Modified: Fri, 09 Dec 2016 17:47:00 GMT  
		Size: 39.2 MB (39176823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eea9f6577f68a53443a23d51aa8a7f4ddf19b821290c64ed2595aa43a7d990`  
		Last Modified: Fri, 09 Dec 2016 17:46:46 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:cd75925d96925a6b065782f2e838f2a345ab32d3e7c2667a87a1d550207eff35
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109811730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b110fb13e67d51599702e5a0499559fd86a08bce721969d7130dc05e3ae92d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:25:19 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 08 Nov 2016 20:32:16 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:32:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 20:32:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 20:32:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 08 Nov 2016 20:32:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 08 Nov 2016 20:32:27 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:46:09 GMT
ENV KIBANA_VERSION=5.1.1
# Fri, 09 Dec 2016 17:46:10 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 09 Dec 2016 17:46:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 09 Dec 2016 17:46:30 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Dec 2016 17:46:31 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 09 Dec 2016 17:46:31 GMT
EXPOSE 5601/tcp
# Fri, 09 Dec 2016 17:46:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:46:32 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca92df3a376d42a01bfbeccafcddd0d5661fec2f29c9f62c140b032416dd4a8`  
		Last Modified: Tue, 08 Nov 2016 20:26:19 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04752ac6b44b7d73a18d102d7c529be122c5d848e03918f97cbe2afcb5f67c6`  
		Last Modified: Tue, 08 Nov 2016 20:33:12 GMT  
		Size: 18.5 MB (18456506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bfecbcf70ff7fb01040fd49649476ce19c1757482de927932387ff5683c7f81`  
		Last Modified: Tue, 08 Nov 2016 20:33:05 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1338b2c8ead733b160592bfc13ae32ef463b181083962b8a7a5ba9c42bba5a9`  
		Last Modified: Tue, 08 Nov 2016 20:33:02 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe1da400856ae4c727463c1c5a232e487ee53fbc0f847ab34f8ba3a5cc88c85`  
		Last Modified: Tue, 08 Nov 2016 20:33:01 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9000d704548aad08ae1679d7069f8be42271f6754ac8c7f21713a321fdea23ca`  
		Last Modified: Fri, 09 Dec 2016 17:46:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85010a6b8e488bca4648c46fa2f50b3817e4166f532064925986f3d2165bf9b0`  
		Last Modified: Fri, 09 Dec 2016 17:47:00 GMT  
		Size: 39.2 MB (39176823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eea9f6577f68a53443a23d51aa8a7f4ddf19b821290c64ed2595aa43a7d990`  
		Last Modified: Fri, 09 Dec 2016 17:46:46 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.3`

```console
$ docker pull kibana@sha256:3542981febce10ae58b42802845ca6f21e5239ab2c6c853733de0eb7f178ebfb
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103079042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037f5ba65d2b9dd22396fc7486a3b3d0c42b75188d55408bcf62328ad7e558d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:25:19 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 08 Nov 2016 20:25:31 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:25:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 20:25:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 20:25:37 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 08 Nov 2016 20:25:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 08 Nov 2016 20:25:42 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 20:25:43 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 15 Nov 2016 20:53:50 GMT
ENV KIBANA_VERSION=4.6.3
# Tue, 15 Nov 2016 20:53:52 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 15 Nov 2016 20:54:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 15 Nov 2016 20:54:10 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 20:54:11 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 15 Nov 2016 20:54:11 GMT
EXPOSE 5601/tcp
# Tue, 15 Nov 2016 20:54:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 20:54:12 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca92df3a376d42a01bfbeccafcddd0d5661fec2f29c9f62c140b032416dd4a8`  
		Last Modified: Tue, 08 Nov 2016 20:26:19 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de1cfe1cd2cb88c381e93b0569ee34ca94fc0e7032e0b5c67adc417f741e818`  
		Last Modified: Tue, 08 Nov 2016 20:26:24 GMT  
		Size: 16.6 MB (16609659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd7a923115f8946a920208347b564acd56e4433c1d90debd2d00bdd7ed64754`  
		Last Modified: Tue, 08 Nov 2016 20:26:20 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187da68d251f12d97b559ab0343905585ace71c28108616950405a6e2df262e4`  
		Last Modified: Tue, 08 Nov 2016 20:26:16 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dd953b083225cca827350f1535328c7250855e7ed25e5ff18b7f85d5baf221`  
		Last Modified: Tue, 08 Nov 2016 20:26:17 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4c3a8d2cb72c571955e4a27975e2631ff6a022f46d6ac88be6a7cf7f52ae5c`  
		Last Modified: Tue, 15 Nov 2016 20:57:11 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db71d246cf0091dd77330617e57ae0de731e0bc71b2c509358dc818bcba5265e`  
		Last Modified: Tue, 15 Nov 2016 20:57:24 GMT  
		Size: 34.3 MB (34290979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca05df53a997654b740340b26c23700b2916fb74d80c217cdfed03c6d926fd8`  
		Last Modified: Tue, 15 Nov 2016 20:57:12 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:3542981febce10ae58b42802845ca6f21e5239ab2c6c853733de0eb7f178ebfb
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103079042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037f5ba65d2b9dd22396fc7486a3b3d0c42b75188d55408bcf62328ad7e558d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:25:19 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 08 Nov 2016 20:25:31 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:25:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 20:25:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 20:25:37 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 08 Nov 2016 20:25:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 08 Nov 2016 20:25:42 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 20:25:43 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 15 Nov 2016 20:53:50 GMT
ENV KIBANA_VERSION=4.6.3
# Tue, 15 Nov 2016 20:53:52 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 15 Nov 2016 20:54:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 15 Nov 2016 20:54:10 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 20:54:11 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 15 Nov 2016 20:54:11 GMT
EXPOSE 5601/tcp
# Tue, 15 Nov 2016 20:54:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 20:54:12 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca92df3a376d42a01bfbeccafcddd0d5661fec2f29c9f62c140b032416dd4a8`  
		Last Modified: Tue, 08 Nov 2016 20:26:19 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de1cfe1cd2cb88c381e93b0569ee34ca94fc0e7032e0b5c67adc417f741e818`  
		Last Modified: Tue, 08 Nov 2016 20:26:24 GMT  
		Size: 16.6 MB (16609659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd7a923115f8946a920208347b564acd56e4433c1d90debd2d00bdd7ed64754`  
		Last Modified: Tue, 08 Nov 2016 20:26:20 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187da68d251f12d97b559ab0343905585ace71c28108616950405a6e2df262e4`  
		Last Modified: Tue, 08 Nov 2016 20:26:16 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dd953b083225cca827350f1535328c7250855e7ed25e5ff18b7f85d5baf221`  
		Last Modified: Tue, 08 Nov 2016 20:26:17 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4c3a8d2cb72c571955e4a27975e2631ff6a022f46d6ac88be6a7cf7f52ae5c`  
		Last Modified: Tue, 15 Nov 2016 20:57:11 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db71d246cf0091dd77330617e57ae0de731e0bc71b2c509358dc818bcba5265e`  
		Last Modified: Tue, 15 Nov 2016 20:57:24 GMT  
		Size: 34.3 MB (34290979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca05df53a997654b740340b26c23700b2916fb74d80c217cdfed03c6d926fd8`  
		Last Modified: Tue, 15 Nov 2016 20:57:12 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:3542981febce10ae58b42802845ca6f21e5239ab2c6c853733de0eb7f178ebfb
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103079042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037f5ba65d2b9dd22396fc7486a3b3d0c42b75188d55408bcf62328ad7e558d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:25:19 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 08 Nov 2016 20:25:31 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:25:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 20:25:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 20:25:37 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 08 Nov 2016 20:25:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 08 Nov 2016 20:25:42 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 20:25:43 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 15 Nov 2016 20:53:50 GMT
ENV KIBANA_VERSION=4.6.3
# Tue, 15 Nov 2016 20:53:52 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 15 Nov 2016 20:54:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 15 Nov 2016 20:54:10 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 20:54:11 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 15 Nov 2016 20:54:11 GMT
EXPOSE 5601/tcp
# Tue, 15 Nov 2016 20:54:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 20:54:12 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca92df3a376d42a01bfbeccafcddd0d5661fec2f29c9f62c140b032416dd4a8`  
		Last Modified: Tue, 08 Nov 2016 20:26:19 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de1cfe1cd2cb88c381e93b0569ee34ca94fc0e7032e0b5c67adc417f741e818`  
		Last Modified: Tue, 08 Nov 2016 20:26:24 GMT  
		Size: 16.6 MB (16609659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd7a923115f8946a920208347b564acd56e4433c1d90debd2d00bdd7ed64754`  
		Last Modified: Tue, 08 Nov 2016 20:26:20 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187da68d251f12d97b559ab0343905585ace71c28108616950405a6e2df262e4`  
		Last Modified: Tue, 08 Nov 2016 20:26:16 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dd953b083225cca827350f1535328c7250855e7ed25e5ff18b7f85d5baf221`  
		Last Modified: Tue, 08 Nov 2016 20:26:17 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4c3a8d2cb72c571955e4a27975e2631ff6a022f46d6ac88be6a7cf7f52ae5c`  
		Last Modified: Tue, 15 Nov 2016 20:57:11 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db71d246cf0091dd77330617e57ae0de731e0bc71b2c509358dc818bcba5265e`  
		Last Modified: Tue, 15 Nov 2016 20:57:24 GMT  
		Size: 34.3 MB (34290979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca05df53a997654b740340b26c23700b2916fb74d80c217cdfed03c6d926fd8`  
		Last Modified: Tue, 15 Nov 2016 20:57:12 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1.11`

```console
$ docker pull kibana@sha256:567679efde18868932e6780f1d1dd4c606858d4954e7d58a71519d72d7a04670
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87792437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98407b5e90ed07910c843be10fa5c45d7d0547b8ca8731c09d0f8924b541dcc4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:25:19 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 08 Nov 2016 20:25:31 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:25:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 20:25:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 20:25:37 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 08 Nov 2016 20:25:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 08 Nov 2016 20:27:04 GMT
ENV KIBANA_VERSION=4.1.11
# Tue, 08 Nov 2016 20:27:05 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Tue, 08 Nov 2016 20:27:12 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:27:12 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:27:13 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 08 Nov 2016 20:27:13 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:27:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:27:14 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca92df3a376d42a01bfbeccafcddd0d5661fec2f29c9f62c140b032416dd4a8`  
		Last Modified: Tue, 08 Nov 2016 20:26:19 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de1cfe1cd2cb88c381e93b0569ee34ca94fc0e7032e0b5c67adc417f741e818`  
		Last Modified: Tue, 08 Nov 2016 20:26:24 GMT  
		Size: 16.6 MB (16609659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd7a923115f8946a920208347b564acd56e4433c1d90debd2d00bdd7ed64754`  
		Last Modified: Tue, 08 Nov 2016 20:26:20 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187da68d251f12d97b559ab0343905585ace71c28108616950405a6e2df262e4`  
		Last Modified: Tue, 08 Nov 2016 20:26:16 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d036ad7b1a7229549fd2dbf60d410f16e32f018c0f2d9d4cab64906c9693484`  
		Last Modified: Tue, 08 Nov 2016 20:27:31 GMT  
		Size: 19.0 MB (19006051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba11e7e69b6c82ccb14df7025b3351b3eb4b4668de7c61716fe68a7b6f814e3`  
		Last Modified: Tue, 08 Nov 2016 20:27:26 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1`

```console
$ docker pull kibana@sha256:567679efde18868932e6780f1d1dd4c606858d4954e7d58a71519d72d7a04670
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87792437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98407b5e90ed07910c843be10fa5c45d7d0547b8ca8731c09d0f8924b541dcc4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:25:19 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 08 Nov 2016 20:25:31 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:25:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 20:25:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 20:25:37 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 08 Nov 2016 20:25:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 08 Nov 2016 20:27:04 GMT
ENV KIBANA_VERSION=4.1.11
# Tue, 08 Nov 2016 20:27:05 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Tue, 08 Nov 2016 20:27:12 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:27:12 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:27:13 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 08 Nov 2016 20:27:13 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:27:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:27:14 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca92df3a376d42a01bfbeccafcddd0d5661fec2f29c9f62c140b032416dd4a8`  
		Last Modified: Tue, 08 Nov 2016 20:26:19 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de1cfe1cd2cb88c381e93b0569ee34ca94fc0e7032e0b5c67adc417f741e818`  
		Last Modified: Tue, 08 Nov 2016 20:26:24 GMT  
		Size: 16.6 MB (16609659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd7a923115f8946a920208347b564acd56e4433c1d90debd2d00bdd7ed64754`  
		Last Modified: Tue, 08 Nov 2016 20:26:20 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187da68d251f12d97b559ab0343905585ace71c28108616950405a6e2df262e4`  
		Last Modified: Tue, 08 Nov 2016 20:26:16 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d036ad7b1a7229549fd2dbf60d410f16e32f018c0f2d9d4cab64906c9693484`  
		Last Modified: Tue, 08 Nov 2016 20:27:31 GMT  
		Size: 19.0 MB (19006051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba11e7e69b6c82ccb14df7025b3351b3eb4b4668de7c61716fe68a7b6f814e3`  
		Last Modified: Tue, 08 Nov 2016 20:27:26 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
