<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:4.0.3`](#kibana403)
-	[`kibana:4.0`](#kibana40)
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
-	[`kibana:4.6.0`](#kibana460)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4`](#kibana4)
-	[`kibana:latest`](#kibanalatest)
-	[`kibana:5.0.0-alpha5`](#kibana500-alpha5)
-	[`kibana:5.0.0`](#kibana500)
-	[`kibana:5.0`](#kibana50)
-	[`kibana:5`](#kibana5)

## `kibana:4.0.3`

```console
$ docker pull kibana@sha256:5656bfcf082ce8f0db27605f8c2371c11655875b0b12d8d229291c58fdd7f84d
```

-	Platforms:
	-	linux; amd64

### `kibana:4.0.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83239557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50413973441bf144b7f2c24a68032ebea61d2168d2666c6faa5f63a79f3a1fe8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:49:42 GMT
ENV KIBANA_VERSION=4.0.3
# Tue, 30 Aug 2016 21:49:42 GMT
ENV KIBANA_SHA1=75312e930466430167a7e01be3ae41aeaf01a26c
# Tue, 30 Aug 2016 21:49:47 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:49:48 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:49:48 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 30 Aug 2016 21:49:48 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:49:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:49:48 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78986d6f856cd4d37713a004e7ca7e64bf98c112b10c7bc338a182f7f9dc06bd`  
		Last Modified: Wed, 31 Aug 2016 17:36:34 GMT  
		Size: 14.4 MB (14443278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556396b3bece74434142be2025d9e39a6ccba21becdb3943e06607180e900bd6`  
		Last Modified: Wed, 31 Aug 2016 17:36:24 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.0`

```console
$ docker pull kibana@sha256:5656bfcf082ce8f0db27605f8c2371c11655875b0b12d8d229291c58fdd7f84d
```

-	Platforms:
	-	linux; amd64

### `kibana:4.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83239557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50413973441bf144b7f2c24a68032ebea61d2168d2666c6faa5f63a79f3a1fe8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:49:42 GMT
ENV KIBANA_VERSION=4.0.3
# Tue, 30 Aug 2016 21:49:42 GMT
ENV KIBANA_SHA1=75312e930466430167a7e01be3ae41aeaf01a26c
# Tue, 30 Aug 2016 21:49:47 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:49:48 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:49:48 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 30 Aug 2016 21:49:48 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:49:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:49:48 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78986d6f856cd4d37713a004e7ca7e64bf98c112b10c7bc338a182f7f9dc06bd`  
		Last Modified: Wed, 31 Aug 2016 17:36:34 GMT  
		Size: 14.4 MB (14443278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556396b3bece74434142be2025d9e39a6ccba21becdb3943e06607180e900bd6`  
		Last Modified: Wed, 31 Aug 2016 17:36:24 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1.11`

```console
$ docker pull kibana@sha256:6a13f8a53ffab69a50700d324dc97af42675f1bfe06268c70690be870a313475
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87802288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da83423294abb026fd9fa3ab3ac7da715da96c80799e4f08246fc24bb65ce74a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:49:49 GMT
ENV KIBANA_VERSION=4.1.11
# Tue, 30 Aug 2016 21:49:49 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Tue, 30 Aug 2016 21:49:56 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:49:56 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:49:56 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 30 Aug 2016 21:49:57 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:49:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:49:57 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e43b1ec1f613f0359874562c7862139ebd530b72142db85a8f9bd99410b85c`  
		Last Modified: Wed, 31 Aug 2016 17:37:10 GMT  
		Size: 19.0 MB (19006009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b51b9669172be0bd827d767e54fb96cc9f1d8cd5ecc1bfa59a21f24a030f7ce`  
		Last Modified: Wed, 31 Aug 2016 17:36:58 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1`

```console
$ docker pull kibana@sha256:6a13f8a53ffab69a50700d324dc97af42675f1bfe06268c70690be870a313475
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87802288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da83423294abb026fd9fa3ab3ac7da715da96c80799e4f08246fc24bb65ce74a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:49:49 GMT
ENV KIBANA_VERSION=4.1.11
# Tue, 30 Aug 2016 21:49:49 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Tue, 30 Aug 2016 21:49:56 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:49:56 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:49:56 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 30 Aug 2016 21:49:57 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:49:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:49:57 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e43b1ec1f613f0359874562c7862139ebd530b72142db85a8f9bd99410b85c`  
		Last Modified: Wed, 31 Aug 2016 17:37:10 GMT  
		Size: 19.0 MB (19006009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b51b9669172be0bd827d767e54fb96cc9f1d8cd5ecc1bfa59a21f24a030f7ce`  
		Last Modified: Wed, 31 Aug 2016 17:36:58 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.2.2`

```console
$ docker pull kibana@sha256:843f12b9ccfd933544153a965a8e5c21f2e888dac83e0e3029d89b4a9533ef4d
```

-	Platforms:
	-	linux; amd64

### `kibana:4.2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99295670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3766439731671abca136bf21f184b8500f4ac759c5716c9552c2c4c1d244e8de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:49:58 GMT
ENV KIBANA_VERSION=4.2.2
# Tue, 30 Aug 2016 21:49:58 GMT
ENV KIBANA_SHA1=f0daf9cd0b949c0ec7a3be300ee876fba17d1570
# Tue, 30 Aug 2016 21:50:08 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:50:09 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:50:09 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 30 Aug 2016 21:50:09 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:50:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:50:10 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd669d5daa2960c8dc554fa9fa99b58dd6870ca48e1f63d9d4fe68d49aaea4ae`  
		Last Modified: Wed, 31 Aug 2016 17:38:10 GMT  
		Size: 30.5 MB (30499388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8170af16093a3e4d73ea299381450618b0141de7d04079e772f66861b9a7bec9`  
		Last Modified: Wed, 31 Aug 2016 17:37:42 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.2`

```console
$ docker pull kibana@sha256:843f12b9ccfd933544153a965a8e5c21f2e888dac83e0e3029d89b4a9533ef4d
```

-	Platforms:
	-	linux; amd64

### `kibana:4.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99295670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3766439731671abca136bf21f184b8500f4ac759c5716c9552c2c4c1d244e8de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:49:58 GMT
ENV KIBANA_VERSION=4.2.2
# Tue, 30 Aug 2016 21:49:58 GMT
ENV KIBANA_SHA1=f0daf9cd0b949c0ec7a3be300ee876fba17d1570
# Tue, 30 Aug 2016 21:50:08 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:50:09 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:50:09 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 30 Aug 2016 21:50:09 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:50:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:50:10 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd669d5daa2960c8dc554fa9fa99b58dd6870ca48e1f63d9d4fe68d49aaea4ae`  
		Last Modified: Wed, 31 Aug 2016 17:38:10 GMT  
		Size: 30.5 MB (30499388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8170af16093a3e4d73ea299381450618b0141de7d04079e772f66861b9a7bec9`  
		Last Modified: Wed, 31 Aug 2016 17:37:42 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.3.3`

```console
$ docker pull kibana@sha256:e3c002350acab570354c1032bcf0dee6c58e3717aafc255b7a8bacea5623d58b
```

-	Platforms:
	-	linux; amd64

### `kibana:4.3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101324030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d6b8277307a1ce76db1a9e3e04afa7115f51dd14677c55cda59495142e2c69`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:10 GMT
ENV KIBANA_VERSION=4.3.3
# Tue, 30 Aug 2016 21:50:10 GMT
ENV KIBANA_SHA1=3d3d0ae7658a3a7cd0d79e0f3c21701511604531
# Tue, 30 Aug 2016 21:50:20 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:50:20 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:50:21 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 30 Aug 2016 21:50:21 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:50:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:50:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c06fa1e5c879284d87d0ed91f0a05dcd1dea071023b14518331534db19f9b0`  
		Last Modified: Wed, 31 Aug 2016 17:38:58 GMT  
		Size: 32.5 MB (32527750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9604455277278edef92b69b07e7efd6bd09f11ee6a4f190fcbf07251b528d326`  
		Last Modified: Wed, 31 Aug 2016 17:38:32 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.3`

```console
$ docker pull kibana@sha256:e3c002350acab570354c1032bcf0dee6c58e3717aafc255b7a8bacea5623d58b
```

-	Platforms:
	-	linux; amd64

### `kibana:4.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101324030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d6b8277307a1ce76db1a9e3e04afa7115f51dd14677c55cda59495142e2c69`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:10 GMT
ENV KIBANA_VERSION=4.3.3
# Tue, 30 Aug 2016 21:50:10 GMT
ENV KIBANA_SHA1=3d3d0ae7658a3a7cd0d79e0f3c21701511604531
# Tue, 30 Aug 2016 21:50:20 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:50:20 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:50:21 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 30 Aug 2016 21:50:21 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:50:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:50:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c06fa1e5c879284d87d0ed91f0a05dcd1dea071023b14518331534db19f9b0`  
		Last Modified: Wed, 31 Aug 2016 17:38:58 GMT  
		Size: 32.5 MB (32527750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9604455277278edef92b69b07e7efd6bd09f11ee6a4f190fcbf07251b528d326`  
		Last Modified: Wed, 31 Aug 2016 17:38:32 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.4.2`

```console
$ docker pull kibana@sha256:cd71e5236fbfe5fd7b4c55bb0bfa4017bb74c7f19de8ddf8b654f9624a67d97d
```

-	Platforms:
	-	linux; amd64

### `kibana:4.4.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101846114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b9eb6a0ec00fbb0e9cc9856a77ce4d9446815387f6c92e1494608a074d00e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 30 Aug 2016 21:50:23 GMT
ENV KIBANA_MAJOR=4.4
# Tue, 30 Aug 2016 21:50:23 GMT
ENV KIBANA_VERSION=4.4.2
# Tue, 30 Aug 2016 21:50:24 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 30 Aug 2016 21:50:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:50:40 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:50:41 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 30 Aug 2016 21:50:41 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:50:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:50:42 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37996e6e08bb4d0d24b49e40fc7f7c9c9dcb4d8c31691c7627ac223e00f80c7e`  
		Last Modified: Wed, 31 Aug 2016 17:39:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abdaa9b7768c2295a63ab0da987c992e6ec5c1911e55418729faaef6d40bf00`  
		Last Modified: Wed, 31 Aug 2016 17:39:48 GMT  
		Size: 33.0 MB (33048165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a07bd58c0044b977cad6cb4d001b508caa8c82d7da0f96ba8f7bedaccc7376`  
		Last Modified: Wed, 31 Aug 2016 17:39:20 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.4`

```console
$ docker pull kibana@sha256:cd71e5236fbfe5fd7b4c55bb0bfa4017bb74c7f19de8ddf8b654f9624a67d97d
```

-	Platforms:
	-	linux; amd64

### `kibana:4.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101846114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b9eb6a0ec00fbb0e9cc9856a77ce4d9446815387f6c92e1494608a074d00e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 30 Aug 2016 21:50:23 GMT
ENV KIBANA_MAJOR=4.4
# Tue, 30 Aug 2016 21:50:23 GMT
ENV KIBANA_VERSION=4.4.2
# Tue, 30 Aug 2016 21:50:24 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 30 Aug 2016 21:50:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:50:40 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:50:41 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 30 Aug 2016 21:50:41 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:50:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:50:42 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37996e6e08bb4d0d24b49e40fc7f7c9c9dcb4d8c31691c7627ac223e00f80c7e`  
		Last Modified: Wed, 31 Aug 2016 17:39:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abdaa9b7768c2295a63ab0da987c992e6ec5c1911e55418729faaef6d40bf00`  
		Last Modified: Wed, 31 Aug 2016 17:39:48 GMT  
		Size: 33.0 MB (33048165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a07bd58c0044b977cad6cb4d001b508caa8c82d7da0f96ba8f7bedaccc7376`  
		Last Modified: Wed, 31 Aug 2016 17:39:20 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.5.4`

```console
$ docker pull kibana@sha256:b17fa229b62cd682411494a74b9af02582178672c742c112cb881147fbf95c51
```

-	Platforms:
	-	linux; amd64

### `kibana:4.5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102250209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c7353cfb03ad44fe0454ae192c430da8a18897ecb0bd6663131e2f017c2b17`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 30 Aug 2016 21:50:42 GMT
ENV KIBANA_MAJOR=4.5
# Tue, 30 Aug 2016 21:50:42 GMT
ENV KIBANA_VERSION=4.5.4
# Tue, 30 Aug 2016 21:50:43 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 30 Aug 2016 21:50:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:50:59 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:00 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 30 Aug 2016 21:51:00 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:51:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:51:01 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2237a518e77128dc0109a6fd8e803fe813709df2f5eafebf686e26f80cda634e`  
		Last Modified: Wed, 31 Aug 2016 17:40:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3283af2d486232f714b02b30da57c6a734fa6551c704424969c91b26ceb28c30`  
		Last Modified: Wed, 31 Aug 2016 17:40:41 GMT  
		Size: 33.5 MB (33452260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcd6e14ffb6876645f1f34920752e309e2d6897943d0314e22da6584cc4cb2a`  
		Last Modified: Wed, 31 Aug 2016 17:40:12 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.5`

```console
$ docker pull kibana@sha256:b17fa229b62cd682411494a74b9af02582178672c742c112cb881147fbf95c51
```

-	Platforms:
	-	linux; amd64

### `kibana:4.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102250209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c7353cfb03ad44fe0454ae192c430da8a18897ecb0bd6663131e2f017c2b17`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 30 Aug 2016 21:50:42 GMT
ENV KIBANA_MAJOR=4.5
# Tue, 30 Aug 2016 21:50:42 GMT
ENV KIBANA_VERSION=4.5.4
# Tue, 30 Aug 2016 21:50:43 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 30 Aug 2016 21:50:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 30 Aug 2016 21:50:59 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:00 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 30 Aug 2016 21:51:00 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:51:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:51:01 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2237a518e77128dc0109a6fd8e803fe813709df2f5eafebf686e26f80cda634e`  
		Last Modified: Wed, 31 Aug 2016 17:40:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3283af2d486232f714b02b30da57c6a734fa6551c704424969c91b26ceb28c30`  
		Last Modified: Wed, 31 Aug 2016 17:40:41 GMT  
		Size: 33.5 MB (33452260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcd6e14ffb6876645f1f34920752e309e2d6897943d0314e22da6584cc4cb2a`  
		Last Modified: Wed, 31 Aug 2016 17:40:12 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.0`

```console
$ docker pull kibana@sha256:14ade80960b0876a452bf033633447fca976a718843b5ddcbdcc910371a76620
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103073831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64aaea9f0bd3223f5f31c6e344458a0396644c5d91c0f0def941f9f3ca147d77`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:35:50 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 31 Aug 2016 17:35:50 GMT
ENV KIBANA_VERSION=4.6.0
# Wed, 31 Aug 2016 17:35:51 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 31 Aug 2016 17:36:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 31 Aug 2016 17:36:16 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:36:16 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 31 Aug 2016 17:36:16 GMT
EXPOSE 5601/tcp
# Wed, 31 Aug 2016 17:36:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:36:17 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d02aee395ada6cf3081d0f7c42c41394244d15bfc52348932b2b0c747dc9d9`  
		Last Modified: Wed, 31 Aug 2016 17:41:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbef72b2fc6b07075fbf0772aeeea6aa7339f06986e0302ac8326d458a5b7df`  
		Last Modified: Wed, 31 Aug 2016 17:41:20 GMT  
		Size: 34.3 MB (34275882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469383efc06979def36589ca5edb1799074b66888ff22279bac10e72995ae351`  
		Last Modified: Wed, 31 Aug 2016 17:41:04 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:14ade80960b0876a452bf033633447fca976a718843b5ddcbdcc910371a76620
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103073831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64aaea9f0bd3223f5f31c6e344458a0396644c5d91c0f0def941f9f3ca147d77`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:35:50 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 31 Aug 2016 17:35:50 GMT
ENV KIBANA_VERSION=4.6.0
# Wed, 31 Aug 2016 17:35:51 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 31 Aug 2016 17:36:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 31 Aug 2016 17:36:16 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:36:16 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 31 Aug 2016 17:36:16 GMT
EXPOSE 5601/tcp
# Wed, 31 Aug 2016 17:36:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:36:17 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d02aee395ada6cf3081d0f7c42c41394244d15bfc52348932b2b0c747dc9d9`  
		Last Modified: Wed, 31 Aug 2016 17:41:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbef72b2fc6b07075fbf0772aeeea6aa7339f06986e0302ac8326d458a5b7df`  
		Last Modified: Wed, 31 Aug 2016 17:41:20 GMT  
		Size: 34.3 MB (34275882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469383efc06979def36589ca5edb1799074b66888ff22279bac10e72995ae351`  
		Last Modified: Wed, 31 Aug 2016 17:41:04 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:14ade80960b0876a452bf033633447fca976a718843b5ddcbdcc910371a76620
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103073831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64aaea9f0bd3223f5f31c6e344458a0396644c5d91c0f0def941f9f3ca147d77`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:35:50 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 31 Aug 2016 17:35:50 GMT
ENV KIBANA_VERSION=4.6.0
# Wed, 31 Aug 2016 17:35:51 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 31 Aug 2016 17:36:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 31 Aug 2016 17:36:16 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:36:16 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 31 Aug 2016 17:36:16 GMT
EXPOSE 5601/tcp
# Wed, 31 Aug 2016 17:36:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:36:17 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d02aee395ada6cf3081d0f7c42c41394244d15bfc52348932b2b0c747dc9d9`  
		Last Modified: Wed, 31 Aug 2016 17:41:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbef72b2fc6b07075fbf0772aeeea6aa7339f06986e0302ac8326d458a5b7df`  
		Last Modified: Wed, 31 Aug 2016 17:41:20 GMT  
		Size: 34.3 MB (34275882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469383efc06979def36589ca5edb1799074b66888ff22279bac10e72995ae351`  
		Last Modified: Wed, 31 Aug 2016 17:41:04 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:14ade80960b0876a452bf033633447fca976a718843b5ddcbdcc910371a76620
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103073831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64aaea9f0bd3223f5f31c6e344458a0396644c5d91c0f0def941f9f3ca147d77`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:35:50 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 31 Aug 2016 17:35:50 GMT
ENV KIBANA_VERSION=4.6.0
# Wed, 31 Aug 2016 17:35:51 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 31 Aug 2016 17:36:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 31 Aug 2016 17:36:16 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:36:16 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 31 Aug 2016 17:36:16 GMT
EXPOSE 5601/tcp
# Wed, 31 Aug 2016 17:36:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:36:17 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d02aee395ada6cf3081d0f7c42c41394244d15bfc52348932b2b0c747dc9d9`  
		Last Modified: Wed, 31 Aug 2016 17:41:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbef72b2fc6b07075fbf0772aeeea6aa7339f06986e0302ac8326d458a5b7df`  
		Last Modified: Wed, 31 Aug 2016 17:41:20 GMT  
		Size: 34.3 MB (34275882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469383efc06979def36589ca5edb1799074b66888ff22279bac10e72995ae351`  
		Last Modified: Wed, 31 Aug 2016 17:41:04 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0.0-alpha5`

```console
$ docker pull kibana@sha256:192eaacd12ef67a4bf4f6802eab5b83521b4f83a593b0a16fa1f6a8dda3ef3a7
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0.0-alpha5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105807753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98de6ae866cb708411f5164898703c0994a9156acaccc35da68477af0d978edb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 30 Aug 2016 21:51:01 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 30 Aug 2016 21:51:01 GMT
ENV KIBANA_VERSION=5.0.0-alpha5
# Tue, 30 Aug 2016 21:51:02 GMT
RUN echo 'deb http://packages.elastic.co/kibana/5.0.0-alpha/debian stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 30 Aug 2016 21:51:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q 'elasticsearch:9200' /etc/kibana/kibana.yml
# Tue, 30 Aug 2016 21:51:20 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:21 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 30 Aug 2016 21:51:21 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:51:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:51:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5c2b9906d1938f695c5d9c7ff917169c9d9335a07513af206ffe1ea863a06f`  
		Last Modified: Wed, 31 Aug 2016 17:41:59 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb05740782c650864e012ab59b4dc9e9b019c61d135c3175d12c4e79437d4d`  
		Last Modified: Wed, 31 Aug 2016 17:42:33 GMT  
		Size: 37.0 MB (37009804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeace29002bdbf348dbba63bf80be642c4faec625f13fe89a420a4e3f8201c50`  
		Last Modified: Wed, 31 Aug 2016 17:42:00 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0.0`

```console
$ docker pull kibana@sha256:192eaacd12ef67a4bf4f6802eab5b83521b4f83a593b0a16fa1f6a8dda3ef3a7
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105807753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98de6ae866cb708411f5164898703c0994a9156acaccc35da68477af0d978edb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 30 Aug 2016 21:51:01 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 30 Aug 2016 21:51:01 GMT
ENV KIBANA_VERSION=5.0.0-alpha5
# Tue, 30 Aug 2016 21:51:02 GMT
RUN echo 'deb http://packages.elastic.co/kibana/5.0.0-alpha/debian stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 30 Aug 2016 21:51:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q 'elasticsearch:9200' /etc/kibana/kibana.yml
# Tue, 30 Aug 2016 21:51:20 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:21 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 30 Aug 2016 21:51:21 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:51:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:51:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5c2b9906d1938f695c5d9c7ff917169c9d9335a07513af206ffe1ea863a06f`  
		Last Modified: Wed, 31 Aug 2016 17:41:59 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb05740782c650864e012ab59b4dc9e9b019c61d135c3175d12c4e79437d4d`  
		Last Modified: Wed, 31 Aug 2016 17:42:33 GMT  
		Size: 37.0 MB (37009804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeace29002bdbf348dbba63bf80be642c4faec625f13fe89a420a4e3f8201c50`  
		Last Modified: Wed, 31 Aug 2016 17:42:00 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0`

```console
$ docker pull kibana@sha256:192eaacd12ef67a4bf4f6802eab5b83521b4f83a593b0a16fa1f6a8dda3ef3a7
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105807753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98de6ae866cb708411f5164898703c0994a9156acaccc35da68477af0d978edb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 30 Aug 2016 21:51:01 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 30 Aug 2016 21:51:01 GMT
ENV KIBANA_VERSION=5.0.0-alpha5
# Tue, 30 Aug 2016 21:51:02 GMT
RUN echo 'deb http://packages.elastic.co/kibana/5.0.0-alpha/debian stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 30 Aug 2016 21:51:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q 'elasticsearch:9200' /etc/kibana/kibana.yml
# Tue, 30 Aug 2016 21:51:20 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:21 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 30 Aug 2016 21:51:21 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:51:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:51:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5c2b9906d1938f695c5d9c7ff917169c9d9335a07513af206ffe1ea863a06f`  
		Last Modified: Wed, 31 Aug 2016 17:41:59 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb05740782c650864e012ab59b4dc9e9b019c61d135c3175d12c4e79437d4d`  
		Last Modified: Wed, 31 Aug 2016 17:42:33 GMT  
		Size: 37.0 MB (37009804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeace29002bdbf348dbba63bf80be642c4faec625f13fe89a420a4e3f8201c50`  
		Last Modified: Wed, 31 Aug 2016 17:42:00 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:192eaacd12ef67a4bf4f6802eab5b83521b4f83a593b0a16fa1f6a8dda3ef3a7
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105807753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98de6ae866cb708411f5164898703c0994a9156acaccc35da68477af0d978edb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 30 Aug 2016 21:51:01 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 30 Aug 2016 21:51:01 GMT
ENV KIBANA_VERSION=5.0.0-alpha5
# Tue, 30 Aug 2016 21:51:02 GMT
RUN echo 'deb http://packages.elastic.co/kibana/5.0.0-alpha/debian stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 30 Aug 2016 21:51:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q 'elasticsearch:9200' /etc/kibana/kibana.yml
# Tue, 30 Aug 2016 21:51:20 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:21 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 30 Aug 2016 21:51:21 GMT
EXPOSE 5601/tcp
# Tue, 30 Aug 2016 21:51:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:51:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5c2b9906d1938f695c5d9c7ff917169c9d9335a07513af206ffe1ea863a06f`  
		Last Modified: Wed, 31 Aug 2016 17:41:59 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb05740782c650864e012ab59b4dc9e9b019c61d135c3175d12c4e79437d4d`  
		Last Modified: Wed, 31 Aug 2016 17:42:33 GMT  
		Size: 37.0 MB (37009804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeace29002bdbf348dbba63bf80be642c4faec625f13fe89a420a4e3f8201c50`  
		Last Modified: Wed, 31 Aug 2016 17:42:00 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
