<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:4`](#kibana4)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4.6.6`](#kibana466)
-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.3`](#kibana563)
-	[`kibana:latest`](#kibanalatest)

## `kibana:4`

```console
$ docker pull kibana@sha256:f8b613854ad883e75bfc22a89cb81b7e77ea70aa3dbe32316ac90209adab1494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

```console
$ docker pull kibana@sha256:2098fd0e44db065c0a154449f5e72c380b4ee86af077ea06e79aa81f9cc59f3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110388184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f6daa8f3e4206c18436b557f3c46b6402131674ddffc11129440d53d6d24c4f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:39:25 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Sat, 04 Nov 2017 18:40:40 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:40:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 18:40:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 18:40:45 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 04 Nov 2017 18:40:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 18:40:51 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:40:51 GMT
ENV KIBANA_MAJOR=4.6
# Sat, 04 Nov 2017 18:40:51 GMT
ENV KIBANA_VERSION=4.6.6
# Sat, 04 Nov 2017 18:40:52 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Sat, 04 Nov 2017 18:41:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Sat, 04 Nov 2017 18:41:07 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 18:41:07 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Sat, 04 Nov 2017 18:41:07 GMT
EXPOSE 5601/tcp
# Sat, 04 Nov 2017 18:41:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:41:08 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e91b4628c63378fa1c9b6a745f7616f9474b920a8c212e6776d7feeb80abed6`  
		Last Modified: Sat, 04 Nov 2017 18:41:21 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe217cb06ecdd7c891524626e1846f3effe81f3d5ed8bb7df27cd7dfc7e57b8`  
		Last Modified: Sat, 04 Nov 2017 18:42:02 GMT  
		Size: 20.5 MB (20524456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5dcc0c6c108c6d8b2e89214f2564cfc383617aa49f6260b228a1310b2e1a1a`  
		Last Modified: Sat, 04 Nov 2017 18:41:59 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2d124157e284a878cf8f8510dfb132f2252e5e576ec1574829f743134d8b6`  
		Last Modified: Sat, 04 Nov 2017 18:41:58 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bce8afa93729d2ba3c520b904f48aa30adbd8f7b6838675f5a993defebe9607`  
		Last Modified: Sat, 04 Nov 2017 18:41:57 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7fbfb1b6f16454eb24d00ce2a6d98af0ab1291435c31271b37eefe0c5231db`  
		Last Modified: Sat, 04 Nov 2017 18:41:57 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137912936ed4bfd8bd40a0e790a9e88de4f1c8d35015d773c3d3034aa74a6693`  
		Last Modified: Sat, 04 Nov 2017 18:42:07 GMT  
		Size: 36.8 MB (36754223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbe6cb70c57ae378183b7326222a14686499dcb41abf6d9bc431c6d1d33839d`  
		Last Modified: Sat, 04 Nov 2017 18:41:57 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:f8b613854ad883e75bfc22a89cb81b7e77ea70aa3dbe32316ac90209adab1494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

```console
$ docker pull kibana@sha256:2098fd0e44db065c0a154449f5e72c380b4ee86af077ea06e79aa81f9cc59f3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110388184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f6daa8f3e4206c18436b557f3c46b6402131674ddffc11129440d53d6d24c4f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:39:25 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Sat, 04 Nov 2017 18:40:40 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:40:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 18:40:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 18:40:45 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 04 Nov 2017 18:40:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 18:40:51 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:40:51 GMT
ENV KIBANA_MAJOR=4.6
# Sat, 04 Nov 2017 18:40:51 GMT
ENV KIBANA_VERSION=4.6.6
# Sat, 04 Nov 2017 18:40:52 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Sat, 04 Nov 2017 18:41:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Sat, 04 Nov 2017 18:41:07 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 18:41:07 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Sat, 04 Nov 2017 18:41:07 GMT
EXPOSE 5601/tcp
# Sat, 04 Nov 2017 18:41:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:41:08 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e91b4628c63378fa1c9b6a745f7616f9474b920a8c212e6776d7feeb80abed6`  
		Last Modified: Sat, 04 Nov 2017 18:41:21 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe217cb06ecdd7c891524626e1846f3effe81f3d5ed8bb7df27cd7dfc7e57b8`  
		Last Modified: Sat, 04 Nov 2017 18:42:02 GMT  
		Size: 20.5 MB (20524456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5dcc0c6c108c6d8b2e89214f2564cfc383617aa49f6260b228a1310b2e1a1a`  
		Last Modified: Sat, 04 Nov 2017 18:41:59 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2d124157e284a878cf8f8510dfb132f2252e5e576ec1574829f743134d8b6`  
		Last Modified: Sat, 04 Nov 2017 18:41:58 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bce8afa93729d2ba3c520b904f48aa30adbd8f7b6838675f5a993defebe9607`  
		Last Modified: Sat, 04 Nov 2017 18:41:57 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7fbfb1b6f16454eb24d00ce2a6d98af0ab1291435c31271b37eefe0c5231db`  
		Last Modified: Sat, 04 Nov 2017 18:41:57 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137912936ed4bfd8bd40a0e790a9e88de4f1c8d35015d773c3d3034aa74a6693`  
		Last Modified: Sat, 04 Nov 2017 18:42:07 GMT  
		Size: 36.8 MB (36754223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbe6cb70c57ae378183b7326222a14686499dcb41abf6d9bc431c6d1d33839d`  
		Last Modified: Sat, 04 Nov 2017 18:41:57 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.6`

```console
$ docker pull kibana@sha256:f8b613854ad883e75bfc22a89cb81b7e77ea70aa3dbe32316ac90209adab1494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6.6` - linux; amd64

```console
$ docker pull kibana@sha256:2098fd0e44db065c0a154449f5e72c380b4ee86af077ea06e79aa81f9cc59f3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110388184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f6daa8f3e4206c18436b557f3c46b6402131674ddffc11129440d53d6d24c4f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:39:25 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Sat, 04 Nov 2017 18:40:40 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:40:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 18:40:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 18:40:45 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 04 Nov 2017 18:40:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 18:40:51 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:40:51 GMT
ENV KIBANA_MAJOR=4.6
# Sat, 04 Nov 2017 18:40:51 GMT
ENV KIBANA_VERSION=4.6.6
# Sat, 04 Nov 2017 18:40:52 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Sat, 04 Nov 2017 18:41:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Sat, 04 Nov 2017 18:41:07 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 18:41:07 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Sat, 04 Nov 2017 18:41:07 GMT
EXPOSE 5601/tcp
# Sat, 04 Nov 2017 18:41:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:41:08 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e91b4628c63378fa1c9b6a745f7616f9474b920a8c212e6776d7feeb80abed6`  
		Last Modified: Sat, 04 Nov 2017 18:41:21 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe217cb06ecdd7c891524626e1846f3effe81f3d5ed8bb7df27cd7dfc7e57b8`  
		Last Modified: Sat, 04 Nov 2017 18:42:02 GMT  
		Size: 20.5 MB (20524456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5dcc0c6c108c6d8b2e89214f2564cfc383617aa49f6260b228a1310b2e1a1a`  
		Last Modified: Sat, 04 Nov 2017 18:41:59 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2d124157e284a878cf8f8510dfb132f2252e5e576ec1574829f743134d8b6`  
		Last Modified: Sat, 04 Nov 2017 18:41:58 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bce8afa93729d2ba3c520b904f48aa30adbd8f7b6838675f5a993defebe9607`  
		Last Modified: Sat, 04 Nov 2017 18:41:57 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7fbfb1b6f16454eb24d00ce2a6d98af0ab1291435c31271b37eefe0c5231db`  
		Last Modified: Sat, 04 Nov 2017 18:41:57 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137912936ed4bfd8bd40a0e790a9e88de4f1c8d35015d773c3d3034aa74a6693`  
		Last Modified: Sat, 04 Nov 2017 18:42:07 GMT  
		Size: 36.8 MB (36754223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbe6cb70c57ae378183b7326222a14686499dcb41abf6d9bc431c6d1d33839d`  
		Last Modified: Sat, 04 Nov 2017 18:41:57 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:245fab789bcb9b21a887bd15afc1873fa71944874484f588ac990362d741329b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:21fdb3f3d34f846d505c9089fae2bdaaafc3b244c6075c4f39987042dca9de53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128231558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e339b9043b4eb59cf25a5921a27bfe9f818ab2627cab565406ba8099d1fa5eca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:39:25 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Sat, 04 Nov 2017 18:39:41 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:39:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 18:39:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 18:39:46 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 04 Nov 2017 18:39:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 18:39:51 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:39:51 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Sat, 04 Nov 2017 18:39:52 GMT
ENV KIBANA_VERSION=5.6.3
# Sat, 04 Nov 2017 18:40:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Sat, 04 Nov 2017 18:40:12 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 18:40:13 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Sat, 04 Nov 2017 18:40:15 GMT
EXPOSE 5601/tcp
# Sat, 04 Nov 2017 18:40:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:40:15 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e91b4628c63378fa1c9b6a745f7616f9474b920a8c212e6776d7feeb80abed6`  
		Last Modified: Sat, 04 Nov 2017 18:41:21 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04defee0d76bd2f91d28f0d78483320ac9e1f0ceee7a522d3d442e1ff20dfe3b`  
		Last Modified: Sat, 04 Nov 2017 18:41:26 GMT  
		Size: 22.4 MB (22404244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e6fc52257bc4fae117e93f49c236285b68add0ebb6b935b95318f9bacfa740`  
		Last Modified: Sat, 04 Nov 2017 18:41:21 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f2371e7561c5f8c4656ee076a422ea46a0836c36df71561e786c178fe956c0`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44a1bde7b7cdb16d85e707f4f3874c64a6b1d2b792829f1141c7c41042111d0`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf869690ba08c0e2645403e76087810bbf341f54f986bef3f86256e697f14b01`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fcdaa6044f20c6c127e1eaaaa4af0ade2fc679488eb7611bc341379d1b53e0`  
		Last Modified: Sat, 04 Nov 2017 18:41:34 GMT  
		Size: 52.7 MB (52717810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9cb6ec10814ec0650453777100e68d592beec7982c6b2936c6506a4ab0ad49`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:245fab789bcb9b21a887bd15afc1873fa71944874484f588ac990362d741329b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:21fdb3f3d34f846d505c9089fae2bdaaafc3b244c6075c4f39987042dca9de53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128231558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e339b9043b4eb59cf25a5921a27bfe9f818ab2627cab565406ba8099d1fa5eca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:39:25 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Sat, 04 Nov 2017 18:39:41 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:39:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 18:39:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 18:39:46 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 04 Nov 2017 18:39:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 18:39:51 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:39:51 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Sat, 04 Nov 2017 18:39:52 GMT
ENV KIBANA_VERSION=5.6.3
# Sat, 04 Nov 2017 18:40:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Sat, 04 Nov 2017 18:40:12 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 18:40:13 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Sat, 04 Nov 2017 18:40:15 GMT
EXPOSE 5601/tcp
# Sat, 04 Nov 2017 18:40:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:40:15 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e91b4628c63378fa1c9b6a745f7616f9474b920a8c212e6776d7feeb80abed6`  
		Last Modified: Sat, 04 Nov 2017 18:41:21 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04defee0d76bd2f91d28f0d78483320ac9e1f0ceee7a522d3d442e1ff20dfe3b`  
		Last Modified: Sat, 04 Nov 2017 18:41:26 GMT  
		Size: 22.4 MB (22404244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e6fc52257bc4fae117e93f49c236285b68add0ebb6b935b95318f9bacfa740`  
		Last Modified: Sat, 04 Nov 2017 18:41:21 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f2371e7561c5f8c4656ee076a422ea46a0836c36df71561e786c178fe956c0`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44a1bde7b7cdb16d85e707f4f3874c64a6b1d2b792829f1141c7c41042111d0`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf869690ba08c0e2645403e76087810bbf341f54f986bef3f86256e697f14b01`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fcdaa6044f20c6c127e1eaaaa4af0ade2fc679488eb7611bc341379d1b53e0`  
		Last Modified: Sat, 04 Nov 2017 18:41:34 GMT  
		Size: 52.7 MB (52717810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9cb6ec10814ec0650453777100e68d592beec7982c6b2936c6506a4ab0ad49`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.3`

```console
$ docker pull kibana@sha256:245fab789bcb9b21a887bd15afc1873fa71944874484f588ac990362d741329b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.3` - linux; amd64

```console
$ docker pull kibana@sha256:21fdb3f3d34f846d505c9089fae2bdaaafc3b244c6075c4f39987042dca9de53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128231558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e339b9043b4eb59cf25a5921a27bfe9f818ab2627cab565406ba8099d1fa5eca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:39:25 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Sat, 04 Nov 2017 18:39:41 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:39:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 18:39:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 18:39:46 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 04 Nov 2017 18:39:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 18:39:51 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:39:51 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Sat, 04 Nov 2017 18:39:52 GMT
ENV KIBANA_VERSION=5.6.3
# Sat, 04 Nov 2017 18:40:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Sat, 04 Nov 2017 18:40:12 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 18:40:13 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Sat, 04 Nov 2017 18:40:15 GMT
EXPOSE 5601/tcp
# Sat, 04 Nov 2017 18:40:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:40:15 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e91b4628c63378fa1c9b6a745f7616f9474b920a8c212e6776d7feeb80abed6`  
		Last Modified: Sat, 04 Nov 2017 18:41:21 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04defee0d76bd2f91d28f0d78483320ac9e1f0ceee7a522d3d442e1ff20dfe3b`  
		Last Modified: Sat, 04 Nov 2017 18:41:26 GMT  
		Size: 22.4 MB (22404244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e6fc52257bc4fae117e93f49c236285b68add0ebb6b935b95318f9bacfa740`  
		Last Modified: Sat, 04 Nov 2017 18:41:21 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f2371e7561c5f8c4656ee076a422ea46a0836c36df71561e786c178fe956c0`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44a1bde7b7cdb16d85e707f4f3874c64a6b1d2b792829f1141c7c41042111d0`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf869690ba08c0e2645403e76087810bbf341f54f986bef3f86256e697f14b01`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fcdaa6044f20c6c127e1eaaaa4af0ade2fc679488eb7611bc341379d1b53e0`  
		Last Modified: Sat, 04 Nov 2017 18:41:34 GMT  
		Size: 52.7 MB (52717810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9cb6ec10814ec0650453777100e68d592beec7982c6b2936c6506a4ab0ad49`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:245fab789bcb9b21a887bd15afc1873fa71944874484f588ac990362d741329b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

```console
$ docker pull kibana@sha256:21fdb3f3d34f846d505c9089fae2bdaaafc3b244c6075c4f39987042dca9de53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128231558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e339b9043b4eb59cf25a5921a27bfe9f818ab2627cab565406ba8099d1fa5eca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:39:25 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Sat, 04 Nov 2017 18:39:41 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:39:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 18:39:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 18:39:46 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 04 Nov 2017 18:39:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 18:39:51 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:39:51 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Sat, 04 Nov 2017 18:39:52 GMT
ENV KIBANA_VERSION=5.6.3
# Sat, 04 Nov 2017 18:40:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Sat, 04 Nov 2017 18:40:12 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 18:40:13 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Sat, 04 Nov 2017 18:40:15 GMT
EXPOSE 5601/tcp
# Sat, 04 Nov 2017 18:40:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:40:15 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e91b4628c63378fa1c9b6a745f7616f9474b920a8c212e6776d7feeb80abed6`  
		Last Modified: Sat, 04 Nov 2017 18:41:21 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04defee0d76bd2f91d28f0d78483320ac9e1f0ceee7a522d3d442e1ff20dfe3b`  
		Last Modified: Sat, 04 Nov 2017 18:41:26 GMT  
		Size: 22.4 MB (22404244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e6fc52257bc4fae117e93f49c236285b68add0ebb6b935b95318f9bacfa740`  
		Last Modified: Sat, 04 Nov 2017 18:41:21 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f2371e7561c5f8c4656ee076a422ea46a0836c36df71561e786c178fe956c0`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44a1bde7b7cdb16d85e707f4f3874c64a6b1d2b792829f1141c7c41042111d0`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf869690ba08c0e2645403e76087810bbf341f54f986bef3f86256e697f14b01`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fcdaa6044f20c6c127e1eaaaa4af0ade2fc679488eb7611bc341379d1b53e0`  
		Last Modified: Sat, 04 Nov 2017 18:41:34 GMT  
		Size: 52.7 MB (52717810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9cb6ec10814ec0650453777100e68d592beec7982c6b2936c6506a4ab0ad49`  
		Last Modified: Sat, 04 Nov 2017 18:41:19 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
