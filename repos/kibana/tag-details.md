<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5.4.2`](#kibana542)
-	[`kibana:5.4`](#kibana54)
-	[`kibana:5`](#kibana5)
-	[`kibana:latest`](#kibanalatest)
-	[`kibana:4.6.4`](#kibana464)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4`](#kibana4)

## `kibana:5.4.2`

```console
$ docker pull kibana@sha256:f34bf12833679261c83a3f49f5fe97fb9c4a0aa0ec98d92fba503235c74fadea
```

-	Platforms:
	-	linux; amd64

### `kibana:5.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129662958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2ddfcb786491b2778c6e6e7c1e55d1b609d771451b657d050238d724b2f6ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 22:20:05 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 20 Jun 2017 22:20:47 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:20:59 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:21:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:21:27 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 20 Jun 2017 22:21:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 20 Jun 2017 22:21:56 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:22:20 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 20 Jun 2017 22:22:21 GMT
ENV KIBANA_VERSION=5.4.2
# Tue, 20 Jun 2017 22:22:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 20 Jun 2017 22:26:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:27:12 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 20 Jun 2017 22:27:13 GMT
EXPOSE 5601/tcp
# Tue, 20 Jun 2017 22:27:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:27:14 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5f11dcc4056d16ed481272c37a1a39df0c4f23b226e8603df563d03e435967`  
		Last Modified: Tue, 20 Jun 2017 22:31:59 GMT  
		Size: 4.4 KB (4377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874bd4f47d7a721a0df4a7647f582f853685cf8e2425963e65284c3a976c8663`  
		Last Modified: Tue, 20 Jun 2017 22:32:05 GMT  
		Size: 22.4 MB (22404961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b4dc2954d39f3837178bc406754ced3032966f5aa08c0316b55ec3f82b37f`  
		Last Modified: Tue, 20 Jun 2017 22:31:57 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3da6b03da531ab76e5d529a1989579bf8968b219cd1438691dea3cb329df863`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 7.3 KB (7287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a29671870a29e947d353ea99aadda9177c5d5d4444a40dad7a19b234a7121bb`  
		Last Modified: Tue, 20 Jun 2017 22:31:57 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c52cc60fdec384e6390b7c67c5984ddf5efa62380cae77170bcc0777883631`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bad596297f229369d81a165e075eac393409f956de0977d910e2f73db9a65e`  
		Last Modified: Tue, 20 Jun 2017 22:32:41 GMT  
		Size: 54.1 MB (54128856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10add5fb9bd7170156564b89b894736e08b9dacddb68b8e32acb0873a2f9570e`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.4`

```console
$ docker pull kibana@sha256:f34bf12833679261c83a3f49f5fe97fb9c4a0aa0ec98d92fba503235c74fadea
```

-	Platforms:
	-	linux; amd64

### `kibana:5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129662958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2ddfcb786491b2778c6e6e7c1e55d1b609d771451b657d050238d724b2f6ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 22:20:05 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 20 Jun 2017 22:20:47 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:20:59 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:21:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:21:27 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 20 Jun 2017 22:21:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 20 Jun 2017 22:21:56 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:22:20 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 20 Jun 2017 22:22:21 GMT
ENV KIBANA_VERSION=5.4.2
# Tue, 20 Jun 2017 22:22:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 20 Jun 2017 22:26:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:27:12 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 20 Jun 2017 22:27:13 GMT
EXPOSE 5601/tcp
# Tue, 20 Jun 2017 22:27:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:27:14 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5f11dcc4056d16ed481272c37a1a39df0c4f23b226e8603df563d03e435967`  
		Last Modified: Tue, 20 Jun 2017 22:31:59 GMT  
		Size: 4.4 KB (4377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874bd4f47d7a721a0df4a7647f582f853685cf8e2425963e65284c3a976c8663`  
		Last Modified: Tue, 20 Jun 2017 22:32:05 GMT  
		Size: 22.4 MB (22404961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b4dc2954d39f3837178bc406754ced3032966f5aa08c0316b55ec3f82b37f`  
		Last Modified: Tue, 20 Jun 2017 22:31:57 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3da6b03da531ab76e5d529a1989579bf8968b219cd1438691dea3cb329df863`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 7.3 KB (7287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a29671870a29e947d353ea99aadda9177c5d5d4444a40dad7a19b234a7121bb`  
		Last Modified: Tue, 20 Jun 2017 22:31:57 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c52cc60fdec384e6390b7c67c5984ddf5efa62380cae77170bcc0777883631`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bad596297f229369d81a165e075eac393409f956de0977d910e2f73db9a65e`  
		Last Modified: Tue, 20 Jun 2017 22:32:41 GMT  
		Size: 54.1 MB (54128856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10add5fb9bd7170156564b89b894736e08b9dacddb68b8e32acb0873a2f9570e`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:f34bf12833679261c83a3f49f5fe97fb9c4a0aa0ec98d92fba503235c74fadea
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129662958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2ddfcb786491b2778c6e6e7c1e55d1b609d771451b657d050238d724b2f6ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 22:20:05 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 20 Jun 2017 22:20:47 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:20:59 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:21:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:21:27 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 20 Jun 2017 22:21:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 20 Jun 2017 22:21:56 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:22:20 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 20 Jun 2017 22:22:21 GMT
ENV KIBANA_VERSION=5.4.2
# Tue, 20 Jun 2017 22:22:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 20 Jun 2017 22:26:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:27:12 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 20 Jun 2017 22:27:13 GMT
EXPOSE 5601/tcp
# Tue, 20 Jun 2017 22:27:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:27:14 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5f11dcc4056d16ed481272c37a1a39df0c4f23b226e8603df563d03e435967`  
		Last Modified: Tue, 20 Jun 2017 22:31:59 GMT  
		Size: 4.4 KB (4377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874bd4f47d7a721a0df4a7647f582f853685cf8e2425963e65284c3a976c8663`  
		Last Modified: Tue, 20 Jun 2017 22:32:05 GMT  
		Size: 22.4 MB (22404961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b4dc2954d39f3837178bc406754ced3032966f5aa08c0316b55ec3f82b37f`  
		Last Modified: Tue, 20 Jun 2017 22:31:57 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3da6b03da531ab76e5d529a1989579bf8968b219cd1438691dea3cb329df863`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 7.3 KB (7287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a29671870a29e947d353ea99aadda9177c5d5d4444a40dad7a19b234a7121bb`  
		Last Modified: Tue, 20 Jun 2017 22:31:57 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c52cc60fdec384e6390b7c67c5984ddf5efa62380cae77170bcc0777883631`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bad596297f229369d81a165e075eac393409f956de0977d910e2f73db9a65e`  
		Last Modified: Tue, 20 Jun 2017 22:32:41 GMT  
		Size: 54.1 MB (54128856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10add5fb9bd7170156564b89b894736e08b9dacddb68b8e32acb0873a2f9570e`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:f34bf12833679261c83a3f49f5fe97fb9c4a0aa0ec98d92fba503235c74fadea
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129662958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2ddfcb786491b2778c6e6e7c1e55d1b609d771451b657d050238d724b2f6ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 22:20:05 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 20 Jun 2017 22:20:47 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:20:59 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:21:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:21:27 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 20 Jun 2017 22:21:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 20 Jun 2017 22:21:56 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:22:20 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 20 Jun 2017 22:22:21 GMT
ENV KIBANA_VERSION=5.4.2
# Tue, 20 Jun 2017 22:22:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 20 Jun 2017 22:26:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:27:12 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 20 Jun 2017 22:27:13 GMT
EXPOSE 5601/tcp
# Tue, 20 Jun 2017 22:27:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:27:14 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5f11dcc4056d16ed481272c37a1a39df0c4f23b226e8603df563d03e435967`  
		Last Modified: Tue, 20 Jun 2017 22:31:59 GMT  
		Size: 4.4 KB (4377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874bd4f47d7a721a0df4a7647f582f853685cf8e2425963e65284c3a976c8663`  
		Last Modified: Tue, 20 Jun 2017 22:32:05 GMT  
		Size: 22.4 MB (22404961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b4dc2954d39f3837178bc406754ced3032966f5aa08c0316b55ec3f82b37f`  
		Last Modified: Tue, 20 Jun 2017 22:31:57 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3da6b03da531ab76e5d529a1989579bf8968b219cd1438691dea3cb329df863`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 7.3 KB (7287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a29671870a29e947d353ea99aadda9177c5d5d4444a40dad7a19b234a7121bb`  
		Last Modified: Tue, 20 Jun 2017 22:31:57 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c52cc60fdec384e6390b7c67c5984ddf5efa62380cae77170bcc0777883631`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bad596297f229369d81a165e075eac393409f956de0977d910e2f73db9a65e`  
		Last Modified: Tue, 20 Jun 2017 22:32:41 GMT  
		Size: 54.1 MB (54128856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10add5fb9bd7170156564b89b894736e08b9dacddb68b8e32acb0873a2f9570e`  
		Last Modified: Tue, 20 Jun 2017 22:31:56 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.4`

```console
$ docker pull kibana@sha256:62fd073e82ec5b00eab2b344993ed166269cb209491c8be3a6163b645661de55
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109962996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feef2a0dcc6e10de35ddafdd4886a579192fda81d7e952d9ce81ba16f4a376ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 22:20:05 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 20 Jun 2017 22:28:21 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:28:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:28:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:28:58 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 20 Jun 2017 22:29:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 20 Jun 2017 22:29:27 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:29:51 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 20 Jun 2017 22:29:52 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 20 Jun 2017 22:29:53 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 20 Jun 2017 22:30:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 20 Jun 2017 22:30:47 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:30:48 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 20 Jun 2017 22:30:49 GMT
EXPOSE 5601/tcp
# Tue, 20 Jun 2017 22:30:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:30:51 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5f11dcc4056d16ed481272c37a1a39df0c4f23b226e8603df563d03e435967`  
		Last Modified: Tue, 20 Jun 2017 22:31:59 GMT  
		Size: 4.4 KB (4377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e6777e53f3ec303afd126ac2d908f364f557361326d224cf2906347618b7ea`  
		Last Modified: Tue, 20 Jun 2017 22:34:38 GMT  
		Size: 20.5 MB (20524802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8717862385d290b2119b5e0242bafb718bad4fefd86d8b91e8c03d311b4bc01`  
		Last Modified: Tue, 20 Jun 2017 22:34:32 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c5e195ec7d279c0e5754bc8be9e64680b7ed4bfc3b6d583e48bab0723ba7fa`  
		Last Modified: Tue, 20 Jun 2017 22:34:31 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aab52681606a12180040079b75c9b1be09ae3d9b9b25f023b931afaccb00fd0`  
		Last Modified: Tue, 20 Jun 2017 22:34:32 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35f79b7b65201df2aefd3e7cc1d987912e851ecbd0ab6a0ed6c04e13ab3d907`  
		Last Modified: Tue, 20 Jun 2017 22:34:31 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f861164451f55364ce579392a8e9997c0aa451fd2eb67b0cc3c91521778c3e2`  
		Last Modified: Tue, 20 Jun 2017 22:34:41 GMT  
		Size: 36.3 MB (36309050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae5906f241e956eeca0e94cb7db9651fd783244018e92ee44a30d08663af1`  
		Last Modified: Tue, 20 Jun 2017 22:34:31 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:62fd073e82ec5b00eab2b344993ed166269cb209491c8be3a6163b645661de55
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109962996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feef2a0dcc6e10de35ddafdd4886a579192fda81d7e952d9ce81ba16f4a376ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 22:20:05 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 20 Jun 2017 22:28:21 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:28:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:28:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:28:58 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 20 Jun 2017 22:29:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 20 Jun 2017 22:29:27 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:29:51 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 20 Jun 2017 22:29:52 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 20 Jun 2017 22:29:53 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 20 Jun 2017 22:30:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 20 Jun 2017 22:30:47 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:30:48 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 20 Jun 2017 22:30:49 GMT
EXPOSE 5601/tcp
# Tue, 20 Jun 2017 22:30:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:30:51 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5f11dcc4056d16ed481272c37a1a39df0c4f23b226e8603df563d03e435967`  
		Last Modified: Tue, 20 Jun 2017 22:31:59 GMT  
		Size: 4.4 KB (4377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e6777e53f3ec303afd126ac2d908f364f557361326d224cf2906347618b7ea`  
		Last Modified: Tue, 20 Jun 2017 22:34:38 GMT  
		Size: 20.5 MB (20524802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8717862385d290b2119b5e0242bafb718bad4fefd86d8b91e8c03d311b4bc01`  
		Last Modified: Tue, 20 Jun 2017 22:34:32 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c5e195ec7d279c0e5754bc8be9e64680b7ed4bfc3b6d583e48bab0723ba7fa`  
		Last Modified: Tue, 20 Jun 2017 22:34:31 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aab52681606a12180040079b75c9b1be09ae3d9b9b25f023b931afaccb00fd0`  
		Last Modified: Tue, 20 Jun 2017 22:34:32 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35f79b7b65201df2aefd3e7cc1d987912e851ecbd0ab6a0ed6c04e13ab3d907`  
		Last Modified: Tue, 20 Jun 2017 22:34:31 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f861164451f55364ce579392a8e9997c0aa451fd2eb67b0cc3c91521778c3e2`  
		Last Modified: Tue, 20 Jun 2017 22:34:41 GMT  
		Size: 36.3 MB (36309050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae5906f241e956eeca0e94cb7db9651fd783244018e92ee44a30d08663af1`  
		Last Modified: Tue, 20 Jun 2017 22:34:31 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:62fd073e82ec5b00eab2b344993ed166269cb209491c8be3a6163b645661de55
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109962996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feef2a0dcc6e10de35ddafdd4886a579192fda81d7e952d9ce81ba16f4a376ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 22:20:05 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 20 Jun 2017 22:28:21 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:28:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:28:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:28:58 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 20 Jun 2017 22:29:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 20 Jun 2017 22:29:27 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:29:51 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 20 Jun 2017 22:29:52 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 20 Jun 2017 22:29:53 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 20 Jun 2017 22:30:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 20 Jun 2017 22:30:47 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:30:48 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 20 Jun 2017 22:30:49 GMT
EXPOSE 5601/tcp
# Tue, 20 Jun 2017 22:30:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:30:51 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5f11dcc4056d16ed481272c37a1a39df0c4f23b226e8603df563d03e435967`  
		Last Modified: Tue, 20 Jun 2017 22:31:59 GMT  
		Size: 4.4 KB (4377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e6777e53f3ec303afd126ac2d908f364f557361326d224cf2906347618b7ea`  
		Last Modified: Tue, 20 Jun 2017 22:34:38 GMT  
		Size: 20.5 MB (20524802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8717862385d290b2119b5e0242bafb718bad4fefd86d8b91e8c03d311b4bc01`  
		Last Modified: Tue, 20 Jun 2017 22:34:32 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c5e195ec7d279c0e5754bc8be9e64680b7ed4bfc3b6d583e48bab0723ba7fa`  
		Last Modified: Tue, 20 Jun 2017 22:34:31 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aab52681606a12180040079b75c9b1be09ae3d9b9b25f023b931afaccb00fd0`  
		Last Modified: Tue, 20 Jun 2017 22:34:32 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35f79b7b65201df2aefd3e7cc1d987912e851ecbd0ab6a0ed6c04e13ab3d907`  
		Last Modified: Tue, 20 Jun 2017 22:34:31 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f861164451f55364ce579392a8e9997c0aa451fd2eb67b0cc3c91521778c3e2`  
		Last Modified: Tue, 20 Jun 2017 22:34:41 GMT  
		Size: 36.3 MB (36309050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae5906f241e956eeca0e94cb7db9651fd783244018e92ee44a30d08663af1`  
		Last Modified: Tue, 20 Jun 2017 22:34:31 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
