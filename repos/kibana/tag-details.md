<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5.2.1`](#kibana521)
-	[`kibana:5.2`](#kibana52)
-	[`kibana:5`](#kibana5)
-	[`kibana:latest`](#kibanalatest)
-	[`kibana:4.6.4`](#kibana464)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4`](#kibana4)
-	[`kibana:4.1.11`](#kibana4111)
-	[`kibana:4.1`](#kibana41)

## `kibana:5.2.1`

```console
$ docker pull kibana@sha256:c5d76370632beddf86e0a612d77a5d67fdd83a95120b019eaefb8c9d94d824e2
```

-	Platforms:
	-	linux; amd64

### `kibana:5.2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112861996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd28da2c94ad293942bc41b549fc33f920bb14ab591001474bae8d4528f134d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:14:20 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 17 Jan 2017 17:15:28 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:15:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:15:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 17:15:34 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 17 Jan 2017 17:15:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 17 Jan 2017 17:15:38 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:15:39 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 17 Feb 2017 19:17:02 GMT
ENV KIBANA_VERSION=5.2.1
# Fri, 17 Feb 2017 19:17:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 17 Feb 2017 19:17:27 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Feb 2017 19:17:28 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 17 Feb 2017 19:17:29 GMT
EXPOSE 5601/tcp
# Fri, 17 Feb 2017 19:17:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 17 Feb 2017 19:17:30 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8502e84f5ddf59d41f3b25f5ab130731fa585fa7b7d3e6be8c31740dba9cc`  
		Last Modified: Wed, 18 Jan 2017 04:23:30 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ca2be203eecc2ad84b3c10447e80d503b65cfcf83bf9666cf713c74c03bc77`  
		Last Modified: Wed, 18 Jan 2017 04:25:32 GMT  
		Size: 21.6 MB (21638331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd4e8631ffa15d3d6d023ebfd37cf32a5f0476505241423df03df5f5ed71379`  
		Last Modified: Wed, 18 Jan 2017 04:25:25 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d91dad24e260c9550e1aa8212e024b781ec08039f01e98e325b1395b0a35f5d`  
		Last Modified: Wed, 18 Jan 2017 04:25:22 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e632de183972a3120decfb5ccabf6cee84b2bde5a68f479b3ef23ae0f220d793`  
		Last Modified: Wed, 18 Jan 2017 04:25:22 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d00befc3e6e4306eb767914f0ef3003129b80622e210762bdb747bf53a15bf9`  
		Last Modified: Wed, 18 Jan 2017 04:25:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4ccdc0fa24a2bc6ae445353274a2e65f9905f0d6efa3748f93bbb54b6190e6`  
		Last Modified: Fri, 17 Feb 2017 19:18:17 GMT  
		Size: 39.0 MB (39041049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d9b739bce5166688172bf8a8937e9b1b84f05a2bb09ce6d2087a39d0440a14`  
		Last Modified: Fri, 17 Feb 2017 19:17:56 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.2`

```console
$ docker pull kibana@sha256:c5d76370632beddf86e0a612d77a5d67fdd83a95120b019eaefb8c9d94d824e2
```

-	Platforms:
	-	linux; amd64

### `kibana:5.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112861996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd28da2c94ad293942bc41b549fc33f920bb14ab591001474bae8d4528f134d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:14:20 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 17 Jan 2017 17:15:28 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:15:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:15:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 17:15:34 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 17 Jan 2017 17:15:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 17 Jan 2017 17:15:38 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:15:39 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 17 Feb 2017 19:17:02 GMT
ENV KIBANA_VERSION=5.2.1
# Fri, 17 Feb 2017 19:17:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 17 Feb 2017 19:17:27 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Feb 2017 19:17:28 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 17 Feb 2017 19:17:29 GMT
EXPOSE 5601/tcp
# Fri, 17 Feb 2017 19:17:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 17 Feb 2017 19:17:30 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8502e84f5ddf59d41f3b25f5ab130731fa585fa7b7d3e6be8c31740dba9cc`  
		Last Modified: Wed, 18 Jan 2017 04:23:30 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ca2be203eecc2ad84b3c10447e80d503b65cfcf83bf9666cf713c74c03bc77`  
		Last Modified: Wed, 18 Jan 2017 04:25:32 GMT  
		Size: 21.6 MB (21638331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd4e8631ffa15d3d6d023ebfd37cf32a5f0476505241423df03df5f5ed71379`  
		Last Modified: Wed, 18 Jan 2017 04:25:25 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d91dad24e260c9550e1aa8212e024b781ec08039f01e98e325b1395b0a35f5d`  
		Last Modified: Wed, 18 Jan 2017 04:25:22 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e632de183972a3120decfb5ccabf6cee84b2bde5a68f479b3ef23ae0f220d793`  
		Last Modified: Wed, 18 Jan 2017 04:25:22 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d00befc3e6e4306eb767914f0ef3003129b80622e210762bdb747bf53a15bf9`  
		Last Modified: Wed, 18 Jan 2017 04:25:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4ccdc0fa24a2bc6ae445353274a2e65f9905f0d6efa3748f93bbb54b6190e6`  
		Last Modified: Fri, 17 Feb 2017 19:18:17 GMT  
		Size: 39.0 MB (39041049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d9b739bce5166688172bf8a8937e9b1b84f05a2bb09ce6d2087a39d0440a14`  
		Last Modified: Fri, 17 Feb 2017 19:17:56 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:c5d76370632beddf86e0a612d77a5d67fdd83a95120b019eaefb8c9d94d824e2
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112861996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd28da2c94ad293942bc41b549fc33f920bb14ab591001474bae8d4528f134d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:14:20 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 17 Jan 2017 17:15:28 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:15:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:15:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 17:15:34 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 17 Jan 2017 17:15:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 17 Jan 2017 17:15:38 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:15:39 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 17 Feb 2017 19:17:02 GMT
ENV KIBANA_VERSION=5.2.1
# Fri, 17 Feb 2017 19:17:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 17 Feb 2017 19:17:27 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Feb 2017 19:17:28 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 17 Feb 2017 19:17:29 GMT
EXPOSE 5601/tcp
# Fri, 17 Feb 2017 19:17:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 17 Feb 2017 19:17:30 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8502e84f5ddf59d41f3b25f5ab130731fa585fa7b7d3e6be8c31740dba9cc`  
		Last Modified: Wed, 18 Jan 2017 04:23:30 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ca2be203eecc2ad84b3c10447e80d503b65cfcf83bf9666cf713c74c03bc77`  
		Last Modified: Wed, 18 Jan 2017 04:25:32 GMT  
		Size: 21.6 MB (21638331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd4e8631ffa15d3d6d023ebfd37cf32a5f0476505241423df03df5f5ed71379`  
		Last Modified: Wed, 18 Jan 2017 04:25:25 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d91dad24e260c9550e1aa8212e024b781ec08039f01e98e325b1395b0a35f5d`  
		Last Modified: Wed, 18 Jan 2017 04:25:22 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e632de183972a3120decfb5ccabf6cee84b2bde5a68f479b3ef23ae0f220d793`  
		Last Modified: Wed, 18 Jan 2017 04:25:22 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d00befc3e6e4306eb767914f0ef3003129b80622e210762bdb747bf53a15bf9`  
		Last Modified: Wed, 18 Jan 2017 04:25:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4ccdc0fa24a2bc6ae445353274a2e65f9905f0d6efa3748f93bbb54b6190e6`  
		Last Modified: Fri, 17 Feb 2017 19:18:17 GMT  
		Size: 39.0 MB (39041049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d9b739bce5166688172bf8a8937e9b1b84f05a2bb09ce6d2087a39d0440a14`  
		Last Modified: Fri, 17 Feb 2017 19:17:56 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:c5d76370632beddf86e0a612d77a5d67fdd83a95120b019eaefb8c9d94d824e2
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112861996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd28da2c94ad293942bc41b549fc33f920bb14ab591001474bae8d4528f134d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:14:20 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 17 Jan 2017 17:15:28 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:15:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:15:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 17:15:34 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 17 Jan 2017 17:15:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 17 Jan 2017 17:15:38 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:15:39 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 17 Feb 2017 19:17:02 GMT
ENV KIBANA_VERSION=5.2.1
# Fri, 17 Feb 2017 19:17:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 17 Feb 2017 19:17:27 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Feb 2017 19:17:28 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 17 Feb 2017 19:17:29 GMT
EXPOSE 5601/tcp
# Fri, 17 Feb 2017 19:17:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 17 Feb 2017 19:17:30 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8502e84f5ddf59d41f3b25f5ab130731fa585fa7b7d3e6be8c31740dba9cc`  
		Last Modified: Wed, 18 Jan 2017 04:23:30 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ca2be203eecc2ad84b3c10447e80d503b65cfcf83bf9666cf713c74c03bc77`  
		Last Modified: Wed, 18 Jan 2017 04:25:32 GMT  
		Size: 21.6 MB (21638331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd4e8631ffa15d3d6d023ebfd37cf32a5f0476505241423df03df5f5ed71379`  
		Last Modified: Wed, 18 Jan 2017 04:25:25 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d91dad24e260c9550e1aa8212e024b781ec08039f01e98e325b1395b0a35f5d`  
		Last Modified: Wed, 18 Jan 2017 04:25:22 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e632de183972a3120decfb5ccabf6cee84b2bde5a68f479b3ef23ae0f220d793`  
		Last Modified: Wed, 18 Jan 2017 04:25:22 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d00befc3e6e4306eb767914f0ef3003129b80622e210762bdb747bf53a15bf9`  
		Last Modified: Wed, 18 Jan 2017 04:25:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4ccdc0fa24a2bc6ae445353274a2e65f9905f0d6efa3748f93bbb54b6190e6`  
		Last Modified: Fri, 17 Feb 2017 19:18:17 GMT  
		Size: 39.0 MB (39041049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d9b739bce5166688172bf8a8937e9b1b84f05a2bb09ce6d2087a39d0440a14`  
		Last Modified: Fri, 17 Feb 2017 19:17:56 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.4`

```console
$ docker pull kibana@sha256:8ef765a01a4934bf52864aacbeb1d316b24811431df5110d5fa1b988bc0b0b3e
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107904854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2113d346f74789a3e13f5f1153827c1ebd3b55dbaf05b3e07c47cfee18372e2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:14:20 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 17 Jan 2017 17:14:31 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:14:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:14:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 17:14:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 17 Jan 2017 17:14:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 17 Jan 2017 17:14:40 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:14:40 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 17 Jan 2017 17:14:41 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 17 Jan 2017 17:14:41 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 17 Jan 2017 17:14:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 17 Jan 2017 17:15:00 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 17:15:00 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 17 Jan 2017 17:15:00 GMT
EXPOSE 5601/tcp
# Tue, 17 Jan 2017 17:15:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:15:01 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8502e84f5ddf59d41f3b25f5ab130731fa585fa7b7d3e6be8c31740dba9cc`  
		Last Modified: Wed, 18 Jan 2017 04:23:30 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c681aa0f8635e31d4084a50a952c5a401c84a9135ca9318588ffbe67900328b7`  
		Last Modified: Wed, 18 Jan 2017 04:23:33 GMT  
		Size: 19.8 MB (19797294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fe52b9851e74a8fbb9967c2560a7233c664e00e8b7b3c4180e1bd0ee148b63`  
		Last Modified: Wed, 18 Jan 2017 04:23:27 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f289ffafce1b03baeb90c947b05e8b7af131b8d1fb54bd85c691ef88cd87a387`  
		Last Modified: Wed, 18 Jan 2017 04:23:28 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe465036a8618539290039d3feb81344acad8ffad6f7905dcb233ac213e7370`  
		Last Modified: Wed, 18 Jan 2017 04:24:11 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d652c732a5a251295d2418da5f3c84c51dda07b937fe6065217bae898100d6e`  
		Last Modified: Wed, 18 Jan 2017 04:24:12 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec4a64f5e3998032235114ba9cf1994b90ba9bc040348cc6835c66fa80772b5`  
		Last Modified: Wed, 18 Jan 2017 04:24:34 GMT  
		Size: 35.9 MB (35924948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d762316cf20d635409007f79345f1ccf044a8e94e07d93c815b817e5cab3588`  
		Last Modified: Wed, 18 Jan 2017 04:24:12 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:8ef765a01a4934bf52864aacbeb1d316b24811431df5110d5fa1b988bc0b0b3e
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107904854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2113d346f74789a3e13f5f1153827c1ebd3b55dbaf05b3e07c47cfee18372e2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:14:20 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 17 Jan 2017 17:14:31 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:14:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:14:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 17:14:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 17 Jan 2017 17:14:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 17 Jan 2017 17:14:40 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:14:40 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 17 Jan 2017 17:14:41 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 17 Jan 2017 17:14:41 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 17 Jan 2017 17:14:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 17 Jan 2017 17:15:00 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 17:15:00 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 17 Jan 2017 17:15:00 GMT
EXPOSE 5601/tcp
# Tue, 17 Jan 2017 17:15:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:15:01 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8502e84f5ddf59d41f3b25f5ab130731fa585fa7b7d3e6be8c31740dba9cc`  
		Last Modified: Wed, 18 Jan 2017 04:23:30 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c681aa0f8635e31d4084a50a952c5a401c84a9135ca9318588ffbe67900328b7`  
		Last Modified: Wed, 18 Jan 2017 04:23:33 GMT  
		Size: 19.8 MB (19797294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fe52b9851e74a8fbb9967c2560a7233c664e00e8b7b3c4180e1bd0ee148b63`  
		Last Modified: Wed, 18 Jan 2017 04:23:27 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f289ffafce1b03baeb90c947b05e8b7af131b8d1fb54bd85c691ef88cd87a387`  
		Last Modified: Wed, 18 Jan 2017 04:23:28 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe465036a8618539290039d3feb81344acad8ffad6f7905dcb233ac213e7370`  
		Last Modified: Wed, 18 Jan 2017 04:24:11 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d652c732a5a251295d2418da5f3c84c51dda07b937fe6065217bae898100d6e`  
		Last Modified: Wed, 18 Jan 2017 04:24:12 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec4a64f5e3998032235114ba9cf1994b90ba9bc040348cc6835c66fa80772b5`  
		Last Modified: Wed, 18 Jan 2017 04:24:34 GMT  
		Size: 35.9 MB (35924948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d762316cf20d635409007f79345f1ccf044a8e94e07d93c815b817e5cab3588`  
		Last Modified: Wed, 18 Jan 2017 04:24:12 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:8ef765a01a4934bf52864aacbeb1d316b24811431df5110d5fa1b988bc0b0b3e
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107904854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2113d346f74789a3e13f5f1153827c1ebd3b55dbaf05b3e07c47cfee18372e2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:14:20 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 17 Jan 2017 17:14:31 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:14:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:14:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 17:14:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 17 Jan 2017 17:14:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 17 Jan 2017 17:14:40 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:14:40 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 17 Jan 2017 17:14:41 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 17 Jan 2017 17:14:41 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 17 Jan 2017 17:14:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 17 Jan 2017 17:15:00 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 17:15:00 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 17 Jan 2017 17:15:00 GMT
EXPOSE 5601/tcp
# Tue, 17 Jan 2017 17:15:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:15:01 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8502e84f5ddf59d41f3b25f5ab130731fa585fa7b7d3e6be8c31740dba9cc`  
		Last Modified: Wed, 18 Jan 2017 04:23:30 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c681aa0f8635e31d4084a50a952c5a401c84a9135ca9318588ffbe67900328b7`  
		Last Modified: Wed, 18 Jan 2017 04:23:33 GMT  
		Size: 19.8 MB (19797294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fe52b9851e74a8fbb9967c2560a7233c664e00e8b7b3c4180e1bd0ee148b63`  
		Last Modified: Wed, 18 Jan 2017 04:23:27 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f289ffafce1b03baeb90c947b05e8b7af131b8d1fb54bd85c691ef88cd87a387`  
		Last Modified: Wed, 18 Jan 2017 04:23:28 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe465036a8618539290039d3feb81344acad8ffad6f7905dcb233ac213e7370`  
		Last Modified: Wed, 18 Jan 2017 04:24:11 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d652c732a5a251295d2418da5f3c84c51dda07b937fe6065217bae898100d6e`  
		Last Modified: Wed, 18 Jan 2017 04:24:12 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec4a64f5e3998032235114ba9cf1994b90ba9bc040348cc6835c66fa80772b5`  
		Last Modified: Wed, 18 Jan 2017 04:24:34 GMT  
		Size: 35.9 MB (35924948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d762316cf20d635409007f79345f1ccf044a8e94e07d93c815b817e5cab3588`  
		Last Modified: Wed, 18 Jan 2017 04:24:12 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1.11`

```console
$ docker pull kibana@sha256:5f5423ba7395ffa9687b0e7045ace404f4ce3179bc328eb908522a4128a3ad8a
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90984150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a436db5d0ea4bf79a2fcb9560cf89c021eedd51c23ffe8b2a65e11238e2edf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:14:20 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 17 Jan 2017 17:14:31 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:14:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:14:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 17:14:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 17 Jan 2017 17:14:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 17 Jan 2017 17:15:02 GMT
ENV KIBANA_VERSION=4.1.11
# Tue, 17 Jan 2017 17:15:02 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Tue, 17 Jan 2017 17:15:09 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 17 Jan 2017 17:15:09 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 17:15:10 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 17 Jan 2017 17:15:10 GMT
EXPOSE 5601/tcp
# Tue, 17 Jan 2017 17:15:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:15:11 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8502e84f5ddf59d41f3b25f5ab130731fa585fa7b7d3e6be8c31740dba9cc`  
		Last Modified: Wed, 18 Jan 2017 04:23:30 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c681aa0f8635e31d4084a50a952c5a401c84a9135ca9318588ffbe67900328b7`  
		Last Modified: Wed, 18 Jan 2017 04:23:33 GMT  
		Size: 19.8 MB (19797294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fe52b9851e74a8fbb9967c2560a7233c664e00e8b7b3c4180e1bd0ee148b63`  
		Last Modified: Wed, 18 Jan 2017 04:23:27 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f289ffafce1b03baeb90c947b05e8b7af131b8d1fb54bd85c691ef88cd87a387`  
		Last Modified: Wed, 18 Jan 2017 04:23:28 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6bb6e10b36e814cd669f7f2005981b52ce9120adc7729e3cf13f6fd4edf213`  
		Last Modified: Wed, 18 Jan 2017 04:23:38 GMT  
		Size: 19.0 MB (19005905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71bc3c721fa5d0a87de1a429559eae10fed7494be5d69c063a6be884f9a19b3`  
		Last Modified: Wed, 18 Jan 2017 04:23:27 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1`

```console
$ docker pull kibana@sha256:5f5423ba7395ffa9687b0e7045ace404f4ce3179bc328eb908522a4128a3ad8a
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90984150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a436db5d0ea4bf79a2fcb9560cf89c021eedd51c23ffe8b2a65e11238e2edf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:14:20 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 17 Jan 2017 17:14:31 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:14:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:14:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 17:14:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 17 Jan 2017 17:14:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 17 Jan 2017 17:15:02 GMT
ENV KIBANA_VERSION=4.1.11
# Tue, 17 Jan 2017 17:15:02 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Tue, 17 Jan 2017 17:15:09 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 17 Jan 2017 17:15:09 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 17:15:10 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 17 Jan 2017 17:15:10 GMT
EXPOSE 5601/tcp
# Tue, 17 Jan 2017 17:15:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:15:11 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8502e84f5ddf59d41f3b25f5ab130731fa585fa7b7d3e6be8c31740dba9cc`  
		Last Modified: Wed, 18 Jan 2017 04:23:30 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c681aa0f8635e31d4084a50a952c5a401c84a9135ca9318588ffbe67900328b7`  
		Last Modified: Wed, 18 Jan 2017 04:23:33 GMT  
		Size: 19.8 MB (19797294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fe52b9851e74a8fbb9967c2560a7233c664e00e8b7b3c4180e1bd0ee148b63`  
		Last Modified: Wed, 18 Jan 2017 04:23:27 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f289ffafce1b03baeb90c947b05e8b7af131b8d1fb54bd85c691ef88cd87a387`  
		Last Modified: Wed, 18 Jan 2017 04:23:28 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6bb6e10b36e814cd669f7f2005981b52ce9120adc7729e3cf13f6fd4edf213`  
		Last Modified: Wed, 18 Jan 2017 04:23:38 GMT  
		Size: 19.0 MB (19005905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71bc3c721fa5d0a87de1a429559eae10fed7494be5d69c063a6be884f9a19b3`  
		Last Modified: Wed, 18 Jan 2017 04:23:27 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
