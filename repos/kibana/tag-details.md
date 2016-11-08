<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:4.1.11`](#kibana4111)
-	[`kibana:4.1`](#kibana41)
-	[`kibana:4.2.2`](#kibana422)
-	[`kibana:4.2`](#kibana42)
-	[`kibana:4.3.3`](#kibana433)
-	[`kibana:4.3`](#kibana43)
-	[`kibana:4.4.2`](#kibana442)
-	[`kibana:4.4`](#kibana44)
-	[`kibana:4.5.4`](#kibana454)
-	[`kibana:4.5`](#kibana45)
-	[`kibana:4.6.2`](#kibana462)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4`](#kibana4)
-	[`kibana:5.0.0`](#kibana500)
-	[`kibana:5.0`](#kibana50)
-	[`kibana:5`](#kibana5)
-	[`kibana:latest`](#kibanalatest)

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

## `kibana:4.2.2`

```console
$ docker pull kibana@sha256:0921c6826b253bd83c6238b997cfa96ee20d71386b11035d740e5f909fc0e0cd
```

-	Platforms:
	-	linux; amd64

### `kibana:4.2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99286814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12efbbb771f9105c88ccdc7e4e47c37f18424af3e1ae41a4960b36411e562827`
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
# Tue, 08 Nov 2016 20:27:53 GMT
ENV KIBANA_VERSION=4.2.2
# Tue, 08 Nov 2016 20:27:53 GMT
ENV KIBANA_SHA1=f0daf9cd0b949c0ec7a3be300ee876fba17d1570
# Tue, 08 Nov 2016 20:28:04 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:28:04 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:28:05 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 08 Nov 2016 20:28:05 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:28:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:28:06 GMT
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
	-	`sha256:8c3cf09d76501a8e05739314e1287e419e6cd22cfc3e130795778fda93cc1cda`  
		Last Modified: Tue, 08 Nov 2016 20:28:30 GMT  
		Size: 30.5 MB (30500427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a7363d34b9b7a1a5f4f36cd41c119ef3b92e783ca0e806c6dac511c172d1d3`  
		Last Modified: Tue, 08 Nov 2016 20:28:18 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.2`

```console
$ docker pull kibana@sha256:0921c6826b253bd83c6238b997cfa96ee20d71386b11035d740e5f909fc0e0cd
```

-	Platforms:
	-	linux; amd64

### `kibana:4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99286814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12efbbb771f9105c88ccdc7e4e47c37f18424af3e1ae41a4960b36411e562827`
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
# Tue, 08 Nov 2016 20:27:53 GMT
ENV KIBANA_VERSION=4.2.2
# Tue, 08 Nov 2016 20:27:53 GMT
ENV KIBANA_SHA1=f0daf9cd0b949c0ec7a3be300ee876fba17d1570
# Tue, 08 Nov 2016 20:28:04 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:28:04 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:28:05 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 08 Nov 2016 20:28:05 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:28:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:28:06 GMT
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
	-	`sha256:8c3cf09d76501a8e05739314e1287e419e6cd22cfc3e130795778fda93cc1cda`  
		Last Modified: Tue, 08 Nov 2016 20:28:30 GMT  
		Size: 30.5 MB (30500427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a7363d34b9b7a1a5f4f36cd41c119ef3b92e783ca0e806c6dac511c172d1d3`  
		Last Modified: Tue, 08 Nov 2016 20:28:18 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.3.3`

```console
$ docker pull kibana@sha256:c2042e67486a41b9ef36568383eeaf25d622e378aa329ca7de262d3b4bdeb0dd
```

-	Platforms:
	-	linux; amd64

### `kibana:4.3.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101314291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67b851a7d4c87438180e85161ff62aeddca82b1ec5f31dc920a3a4d2fa4db30`
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
# Tue, 08 Nov 2016 20:28:51 GMT
ENV KIBANA_VERSION=4.3.3
# Tue, 08 Nov 2016 20:28:51 GMT
ENV KIBANA_SHA1=3d3d0ae7658a3a7cd0d79e0f3c21701511604531
# Tue, 08 Nov 2016 20:29:02 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:29:03 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:29:03 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 08 Nov 2016 20:29:04 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:29:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:29:04 GMT
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
	-	`sha256:aad94baccb24994ac63333083816bca312fb3b732495808b2227e385f3460476`  
		Last Modified: Tue, 08 Nov 2016 20:29:28 GMT  
		Size: 32.5 MB (32527905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31f92520a50cce1f251ce19720ed2babcb2afd0897460d3cf68b61b91bfd92d`  
		Last Modified: Tue, 08 Nov 2016 20:29:16 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.3`

```console
$ docker pull kibana@sha256:c2042e67486a41b9ef36568383eeaf25d622e378aa329ca7de262d3b4bdeb0dd
```

-	Platforms:
	-	linux; amd64

### `kibana:4.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101314291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67b851a7d4c87438180e85161ff62aeddca82b1ec5f31dc920a3a4d2fa4db30`
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
# Tue, 08 Nov 2016 20:28:51 GMT
ENV KIBANA_VERSION=4.3.3
# Tue, 08 Nov 2016 20:28:51 GMT
ENV KIBANA_SHA1=3d3d0ae7658a3a7cd0d79e0f3c21701511604531
# Tue, 08 Nov 2016 20:29:02 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:29:03 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:29:03 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 08 Nov 2016 20:29:04 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:29:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:29:04 GMT
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
	-	`sha256:aad94baccb24994ac63333083816bca312fb3b732495808b2227e385f3460476`  
		Last Modified: Tue, 08 Nov 2016 20:29:28 GMT  
		Size: 32.5 MB (32527905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31f92520a50cce1f251ce19720ed2babcb2afd0897460d3cf68b61b91bfd92d`  
		Last Modified: Tue, 08 Nov 2016 20:29:16 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.4.2`

```console
$ docker pull kibana@sha256:b3946fecb614f91da5dd4c46f188e3781b2fee7359061456caaf927cfd4f02ce
```

-	Platforms:
	-	linux; amd64

### `kibana:4.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101835893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3773b5399f9afdb8eca08bdfc3e3a24b84385bdf30a351d5a165b5b2dc2d697`
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
# Tue, 08 Nov 2016 20:29:51 GMT
ENV KIBANA_MAJOR=4.4
# Tue, 08 Nov 2016 20:29:51 GMT
ENV KIBANA_VERSION=4.4.2
# Tue, 08 Nov 2016 20:29:52 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 08 Nov 2016 20:30:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:30:10 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:30:10 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 08 Nov 2016 20:30:10 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:30:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:30:11 GMT
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
	-	`sha256:89ac106672b0ed253fe09bad90f7fcb0b032517982461bdb1be8fc215ad20700`  
		Last Modified: Tue, 08 Nov 2016 20:30:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dc51720296b1ad50f3cf8aff614141bad7d8babfdc2521b2b11b1c753a8e86`  
		Last Modified: Tue, 08 Nov 2016 20:30:35 GMT  
		Size: 33.0 MB (33047834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689fa4bc516df01edbf8229e52aff31ad428b1cc8de956898d480d47d1367b38`  
		Last Modified: Tue, 08 Nov 2016 20:30:23 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.4`

```console
$ docker pull kibana@sha256:b3946fecb614f91da5dd4c46f188e3781b2fee7359061456caaf927cfd4f02ce
```

-	Platforms:
	-	linux; amd64

### `kibana:4.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101835893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3773b5399f9afdb8eca08bdfc3e3a24b84385bdf30a351d5a165b5b2dc2d697`
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
# Tue, 08 Nov 2016 20:29:51 GMT
ENV KIBANA_MAJOR=4.4
# Tue, 08 Nov 2016 20:29:51 GMT
ENV KIBANA_VERSION=4.4.2
# Tue, 08 Nov 2016 20:29:52 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 08 Nov 2016 20:30:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:30:10 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:30:10 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 08 Nov 2016 20:30:10 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:30:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:30:11 GMT
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
	-	`sha256:89ac106672b0ed253fe09bad90f7fcb0b032517982461bdb1be8fc215ad20700`  
		Last Modified: Tue, 08 Nov 2016 20:30:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dc51720296b1ad50f3cf8aff614141bad7d8babfdc2521b2b11b1c753a8e86`  
		Last Modified: Tue, 08 Nov 2016 20:30:35 GMT  
		Size: 33.0 MB (33047834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689fa4bc516df01edbf8229e52aff31ad428b1cc8de956898d480d47d1367b38`  
		Last Modified: Tue, 08 Nov 2016 20:30:23 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.5.4`

```console
$ docker pull kibana@sha256:e20c72adf50da597339f1d226f327708009e5cab0a7b557064d4867784893689
```

-	Platforms:
	-	linux; amd64

### `kibana:4.5.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.2 MB (102241051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a737b4cb2813f6b41f0d7eea27b86857ee03527d2f3ee66b83492ebfd68509`
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
# Tue, 08 Nov 2016 20:30:55 GMT
ENV KIBANA_MAJOR=4.5
# Tue, 08 Nov 2016 20:30:55 GMT
ENV KIBANA_VERSION=4.5.4
# Tue, 08 Nov 2016 20:30:56 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 08 Nov 2016 20:31:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:31:14 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:31:14 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 08 Nov 2016 20:31:15 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:31:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:31:15 GMT
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
	-	`sha256:a48cef54b0ae99e47d85472a3e86303a7928ba1233bf228f42dc9c2d81fcf7a1`  
		Last Modified: Tue, 08 Nov 2016 20:31:26 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498df90c46561cc6890b1cdbf5487c9590b6cff789878d198478834ccb35f7a0`  
		Last Modified: Tue, 08 Nov 2016 20:31:41 GMT  
		Size: 33.5 MB (33452994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce678fea6fa114c07e0542258bfc8172f4bd4ff17b674b2bfdf52d07ba4c226`  
		Last Modified: Tue, 08 Nov 2016 20:31:27 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.5`

```console
$ docker pull kibana@sha256:e20c72adf50da597339f1d226f327708009e5cab0a7b557064d4867784893689
```

-	Platforms:
	-	linux; amd64

### `kibana:4.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.2 MB (102241051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a737b4cb2813f6b41f0d7eea27b86857ee03527d2f3ee66b83492ebfd68509`
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
# Tue, 08 Nov 2016 20:30:55 GMT
ENV KIBANA_MAJOR=4.5
# Tue, 08 Nov 2016 20:30:55 GMT
ENV KIBANA_VERSION=4.5.4
# Tue, 08 Nov 2016 20:30:56 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 08 Nov 2016 20:31:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:31:14 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:31:14 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 08 Nov 2016 20:31:15 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:31:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:31:15 GMT
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
	-	`sha256:a48cef54b0ae99e47d85472a3e86303a7928ba1233bf228f42dc9c2d81fcf7a1`  
		Last Modified: Tue, 08 Nov 2016 20:31:26 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498df90c46561cc6890b1cdbf5487c9590b6cff789878d198478834ccb35f7a0`  
		Last Modified: Tue, 08 Nov 2016 20:31:41 GMT  
		Size: 33.5 MB (33452994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce678fea6fa114c07e0542258bfc8172f4bd4ff17b674b2bfdf52d07ba4c226`  
		Last Modified: Tue, 08 Nov 2016 20:31:27 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.2`

```console
$ docker pull kibana@sha256:40c8033e3b3117867097a40d2b47343cdb125fcc1b1a2d0393a4c5133a69aa05
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103074287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b57d567071f7754531f39b2499857f2c347e78ec96b1c3550eefe0e531e13a7`
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
# Tue, 08 Nov 2016 20:25:43 GMT
ENV KIBANA_VERSION=4.6.2
# Tue, 08 Nov 2016 20:25:44 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 08 Nov 2016 20:26:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:26:03 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:26:04 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 08 Nov 2016 20:26:04 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:26:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:26:05 GMT
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
	-	`sha256:7af4b69d519ea83cde7bf25301864c4dade8bf4a6ac835b3557701a195c13fbd`  
		Last Modified: Tue, 08 Nov 2016 20:26:16 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbf7fb0406c7800187793192edfcdaa14fd3fd3155bdfb0e661d3cf6f795b8a`  
		Last Modified: Tue, 08 Nov 2016 20:26:29 GMT  
		Size: 34.3 MB (34286226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2129f95b1a699bceafd088b50516193d35af27fb6addf6f137d031ed557a3c`  
		Last Modified: Tue, 08 Nov 2016 20:26:16 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:40c8033e3b3117867097a40d2b47343cdb125fcc1b1a2d0393a4c5133a69aa05
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103074287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b57d567071f7754531f39b2499857f2c347e78ec96b1c3550eefe0e531e13a7`
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
# Tue, 08 Nov 2016 20:25:43 GMT
ENV KIBANA_VERSION=4.6.2
# Tue, 08 Nov 2016 20:25:44 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 08 Nov 2016 20:26:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:26:03 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:26:04 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 08 Nov 2016 20:26:04 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:26:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:26:05 GMT
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
	-	`sha256:7af4b69d519ea83cde7bf25301864c4dade8bf4a6ac835b3557701a195c13fbd`  
		Last Modified: Tue, 08 Nov 2016 20:26:16 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbf7fb0406c7800187793192edfcdaa14fd3fd3155bdfb0e661d3cf6f795b8a`  
		Last Modified: Tue, 08 Nov 2016 20:26:29 GMT  
		Size: 34.3 MB (34286226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2129f95b1a699bceafd088b50516193d35af27fb6addf6f137d031ed557a3c`  
		Last Modified: Tue, 08 Nov 2016 20:26:16 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:40c8033e3b3117867097a40d2b47343cdb125fcc1b1a2d0393a4c5133a69aa05
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103074287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b57d567071f7754531f39b2499857f2c347e78ec96b1c3550eefe0e531e13a7`
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
# Tue, 08 Nov 2016 20:25:43 GMT
ENV KIBANA_VERSION=4.6.2
# Tue, 08 Nov 2016 20:25:44 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 08 Nov 2016 20:26:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 08 Nov 2016 20:26:03 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:26:04 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 08 Nov 2016 20:26:04 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:26:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:26:05 GMT
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
	-	`sha256:7af4b69d519ea83cde7bf25301864c4dade8bf4a6ac835b3557701a195c13fbd`  
		Last Modified: Tue, 08 Nov 2016 20:26:16 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbf7fb0406c7800187793192edfcdaa14fd3fd3155bdfb0e661d3cf6f795b8a`  
		Last Modified: Tue, 08 Nov 2016 20:26:29 GMT  
		Size: 34.3 MB (34286226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2129f95b1a699bceafd088b50516193d35af27fb6addf6f137d031ed557a3c`  
		Last Modified: Tue, 08 Nov 2016 20:26:16 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0.0`

```console
$ docker pull kibana@sha256:877261a01af3841c22d0d5dc85dfe8acf31fbed7be93373d8f648b1aaf4f4c49
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111005540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ebb286d47c9fdfaad27d9f23c27a4be02b2d7dc0be024d767874fe0cdcf5bb`
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
# Tue, 08 Nov 2016 20:32:28 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 08 Nov 2016 20:32:28 GMT
ENV KIBANA_VERSION=5.0.0
# Tue, 08 Nov 2016 20:32:29 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 08 Nov 2016 20:32:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 08 Nov 2016 20:32:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:32:49 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 08 Nov 2016 20:32:49 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:32:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:32:50 GMT
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
	-	`sha256:dea6662e4f8ac28b8179feeb6d9ffef12d836fb1971b5db533e37bad9ef468af`  
		Last Modified: Tue, 08 Nov 2016 20:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8145237cc51067b6dae5d418f7bcabfe1f4499ca8c4317731e3d0ab9d9a9871`  
		Last Modified: Tue, 08 Nov 2016 20:33:16 GMT  
		Size: 40.4 MB (40370636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3606a0ae9eb2f39dac015bb5aedc5eddbafdb8bb700b91d0210eb8289524d1`  
		Last Modified: Tue, 08 Nov 2016 20:33:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0`

```console
$ docker pull kibana@sha256:877261a01af3841c22d0d5dc85dfe8acf31fbed7be93373d8f648b1aaf4f4c49
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111005540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ebb286d47c9fdfaad27d9f23c27a4be02b2d7dc0be024d767874fe0cdcf5bb`
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
# Tue, 08 Nov 2016 20:32:28 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 08 Nov 2016 20:32:28 GMT
ENV KIBANA_VERSION=5.0.0
# Tue, 08 Nov 2016 20:32:29 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 08 Nov 2016 20:32:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 08 Nov 2016 20:32:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:32:49 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 08 Nov 2016 20:32:49 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:32:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:32:50 GMT
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
	-	`sha256:dea6662e4f8ac28b8179feeb6d9ffef12d836fb1971b5db533e37bad9ef468af`  
		Last Modified: Tue, 08 Nov 2016 20:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8145237cc51067b6dae5d418f7bcabfe1f4499ca8c4317731e3d0ab9d9a9871`  
		Last Modified: Tue, 08 Nov 2016 20:33:16 GMT  
		Size: 40.4 MB (40370636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3606a0ae9eb2f39dac015bb5aedc5eddbafdb8bb700b91d0210eb8289524d1`  
		Last Modified: Tue, 08 Nov 2016 20:33:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:877261a01af3841c22d0d5dc85dfe8acf31fbed7be93373d8f648b1aaf4f4c49
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111005540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ebb286d47c9fdfaad27d9f23c27a4be02b2d7dc0be024d767874fe0cdcf5bb`
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
# Tue, 08 Nov 2016 20:32:28 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 08 Nov 2016 20:32:28 GMT
ENV KIBANA_VERSION=5.0.0
# Tue, 08 Nov 2016 20:32:29 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 08 Nov 2016 20:32:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 08 Nov 2016 20:32:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:32:49 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 08 Nov 2016 20:32:49 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:32:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:32:50 GMT
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
	-	`sha256:dea6662e4f8ac28b8179feeb6d9ffef12d836fb1971b5db533e37bad9ef468af`  
		Last Modified: Tue, 08 Nov 2016 20:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8145237cc51067b6dae5d418f7bcabfe1f4499ca8c4317731e3d0ab9d9a9871`  
		Last Modified: Tue, 08 Nov 2016 20:33:16 GMT  
		Size: 40.4 MB (40370636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3606a0ae9eb2f39dac015bb5aedc5eddbafdb8bb700b91d0210eb8289524d1`  
		Last Modified: Tue, 08 Nov 2016 20:33:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:877261a01af3841c22d0d5dc85dfe8acf31fbed7be93373d8f648b1aaf4f4c49
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111005540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ebb286d47c9fdfaad27d9f23c27a4be02b2d7dc0be024d767874fe0cdcf5bb`
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
# Tue, 08 Nov 2016 20:32:28 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 08 Nov 2016 20:32:28 GMT
ENV KIBANA_VERSION=5.0.0
# Tue, 08 Nov 2016 20:32:29 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 08 Nov 2016 20:32:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 08 Nov 2016 20:32:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:32:49 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 08 Nov 2016 20:32:49 GMT
EXPOSE 5601/tcp
# Tue, 08 Nov 2016 20:32:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:32:50 GMT
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
	-	`sha256:dea6662e4f8ac28b8179feeb6d9ffef12d836fb1971b5db533e37bad9ef468af`  
		Last Modified: Tue, 08 Nov 2016 20:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8145237cc51067b6dae5d418f7bcabfe1f4499ca8c4317731e3d0ab9d9a9871`  
		Last Modified: Tue, 08 Nov 2016 20:33:16 GMT  
		Size: 40.4 MB (40370636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3606a0ae9eb2f39dac015bb5aedc5eddbafdb8bb700b91d0210eb8289524d1`  
		Last Modified: Tue, 08 Nov 2016 20:33:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
