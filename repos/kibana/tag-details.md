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
-	[`kibana:4.6.1`](#kibana461)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4`](#kibana4)
-	[`kibana:latest`](#kibanalatest)
-	[`kibana:5.0.0-alpha5`](#kibana500-alpha5)
-	[`kibana:5.0.0`](#kibana500)
-	[`kibana:5.0`](#kibana50)
-	[`kibana:5`](#kibana5)

## `kibana:4.1.11`

```console
$ docker pull kibana@sha256:3faa31e04d74658496583d10adffb65dab935bdcc6ae4b90816f186d0b380b58
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87789430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e551c280d62e3425c2b79fddbc8b79afe16b2706b9bda0ee58dde6aa8b01674b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:05:15 GMT
ENV KIBANA_VERSION=4.1.11
# Mon, 19 Sep 2016 20:05:16 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Mon, 19 Sep 2016 20:05:22 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:05:23 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:05:23 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Mon, 19 Sep 2016 20:05:24 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:05:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:05:24 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383f7829622ecd1eb9f14cf49025fc56ef7ba35e873ece16634065c0fdc20880`  
		Last Modified: Tue, 20 Sep 2016 05:03:31 GMT  
		Size: 19.0 MB (19005885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80d23ea840de8e8c20b4328277911798b84f18af2ee789b133c9a31189a6ceb`  
		Last Modified: Tue, 20 Sep 2016 05:03:19 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1`

```console
$ docker pull kibana@sha256:3faa31e04d74658496583d10adffb65dab935bdcc6ae4b90816f186d0b380b58
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87789430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e551c280d62e3425c2b79fddbc8b79afe16b2706b9bda0ee58dde6aa8b01674b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:05:15 GMT
ENV KIBANA_VERSION=4.1.11
# Mon, 19 Sep 2016 20:05:16 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Mon, 19 Sep 2016 20:05:22 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:05:23 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:05:23 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Mon, 19 Sep 2016 20:05:24 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:05:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:05:24 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383f7829622ecd1eb9f14cf49025fc56ef7ba35e873ece16634065c0fdc20880`  
		Last Modified: Tue, 20 Sep 2016 05:03:31 GMT  
		Size: 19.0 MB (19005885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80d23ea840de8e8c20b4328277911798b84f18af2ee789b133c9a31189a6ceb`  
		Last Modified: Tue, 20 Sep 2016 05:03:19 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.2.2`

```console
$ docker pull kibana@sha256:c2bbbc28788c4527d967ce0a3ef6ea65c689d733b4bf3f36e7fff3156389f4c8
```

-	Platforms:
	-	linux; amd64

### `kibana:4.2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99283038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a017c90ea3f9ba9cff1df07c63050721c31ac4f4f62f5e4e151c1c4e4fdc3966`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:05:24 GMT
ENV KIBANA_VERSION=4.2.2
# Mon, 19 Sep 2016 20:05:25 GMT
ENV KIBANA_SHA1=f0daf9cd0b949c0ec7a3be300ee876fba17d1570
# Mon, 19 Sep 2016 20:05:34 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:05:35 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:05:36 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:05:36 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:05:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:05:36 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc73741073ccccf439b8d15c6e25aeba09201c9cb01a4bb2c083fa07c49dd59`  
		Last Modified: Tue, 20 Sep 2016 05:04:18 GMT  
		Size: 30.5 MB (30499491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47bc45ff92ad1b8d5efa11e4715a30552e297492dbe85f62cfd940066391c71`  
		Last Modified: Tue, 20 Sep 2016 05:03:57 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.2`

```console
$ docker pull kibana@sha256:c2bbbc28788c4527d967ce0a3ef6ea65c689d733b4bf3f36e7fff3156389f4c8
```

-	Platforms:
	-	linux; amd64

### `kibana:4.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99283038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a017c90ea3f9ba9cff1df07c63050721c31ac4f4f62f5e4e151c1c4e4fdc3966`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:05:24 GMT
ENV KIBANA_VERSION=4.2.2
# Mon, 19 Sep 2016 20:05:25 GMT
ENV KIBANA_SHA1=f0daf9cd0b949c0ec7a3be300ee876fba17d1570
# Mon, 19 Sep 2016 20:05:34 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:05:35 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:05:36 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:05:36 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:05:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:05:36 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc73741073ccccf439b8d15c6e25aeba09201c9cb01a4bb2c083fa07c49dd59`  
		Last Modified: Tue, 20 Sep 2016 05:04:18 GMT  
		Size: 30.5 MB (30499491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47bc45ff92ad1b8d5efa11e4715a30552e297492dbe85f62cfd940066391c71`  
		Last Modified: Tue, 20 Sep 2016 05:03:57 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.3.3`

```console
$ docker pull kibana@sha256:5ed4f0dc8a23f3a91008cfb3ba98cb9a028a8ecffb5357ebcdf7ad2757031678
```

-	Platforms:
	-	linux; amd64

### `kibana:4.3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101310716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f414afc0d0a07e472f63bf18dd8c86b46acc3e64c26d02eab132fa8b5d3952cb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:05:37 GMT
ENV KIBANA_VERSION=4.3.3
# Mon, 19 Sep 2016 20:05:37 GMT
ENV KIBANA_SHA1=3d3d0ae7658a3a7cd0d79e0f3c21701511604531
# Mon, 19 Sep 2016 20:05:47 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:05:48 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:05:48 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:05:49 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:05:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:05:49 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d65673bcfb176b04c556dbb544de7e55ee8dfc9d2f5490fdd8f6885168139ae`  
		Last Modified: Tue, 20 Sep 2016 05:05:04 GMT  
		Size: 32.5 MB (32527167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd6587bdcddd5008144472a9ba5849ecbbc73e6ea6c940dba8258bf9ffa08a`  
		Last Modified: Tue, 20 Sep 2016 05:04:44 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.3`

```console
$ docker pull kibana@sha256:5ed4f0dc8a23f3a91008cfb3ba98cb9a028a8ecffb5357ebcdf7ad2757031678
```

-	Platforms:
	-	linux; amd64

### `kibana:4.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101310716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f414afc0d0a07e472f63bf18dd8c86b46acc3e64c26d02eab132fa8b5d3952cb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:05:37 GMT
ENV KIBANA_VERSION=4.3.3
# Mon, 19 Sep 2016 20:05:37 GMT
ENV KIBANA_SHA1=3d3d0ae7658a3a7cd0d79e0f3c21701511604531
# Mon, 19 Sep 2016 20:05:47 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:05:48 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:05:48 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:05:49 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:05:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:05:49 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d65673bcfb176b04c556dbb544de7e55ee8dfc9d2f5490fdd8f6885168139ae`  
		Last Modified: Tue, 20 Sep 2016 05:05:04 GMT  
		Size: 32.5 MB (32527167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd6587bdcddd5008144472a9ba5849ecbbc73e6ea6c940dba8258bf9ffa08a`  
		Last Modified: Tue, 20 Sep 2016 05:04:44 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.4.2`

```console
$ docker pull kibana@sha256:c73cbb3c885582c520e2536dc22c579e0c88090f344aad8fee7c551b3d66155c
```

-	Platforms:
	-	linux; amd64

### `kibana:4.4.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101832119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e40af095db238b73f8eed3930dad0b5b2c96b692190e400297e6ed25d5110a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:05:50 GMT
ENV KIBANA_MAJOR=4.4
# Mon, 19 Sep 2016 20:05:50 GMT
ENV KIBANA_VERSION=4.4.2
# Mon, 19 Sep 2016 20:05:51 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:06:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:06:07 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:06:08 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:06:08 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:06:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:06:09 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065f69fcd390540ac72c4944340aec7841faa5fb4c79b162817f15d4c78b618`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c21a3f4acdb035f91a3d41f3739c446c9e47e28ac2c5a3613ca833175761e97`  
		Last Modified: Tue, 20 Sep 2016 05:05:47 GMT  
		Size: 33.0 MB (33046901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23dc3ea736dbcf98976339fcb3232c5e9c3ec33c2cc5b6358860c9a3be3b1b1`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.4`

```console
$ docker pull kibana@sha256:c73cbb3c885582c520e2536dc22c579e0c88090f344aad8fee7c551b3d66155c
```

-	Platforms:
	-	linux; amd64

### `kibana:4.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101832119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e40af095db238b73f8eed3930dad0b5b2c96b692190e400297e6ed25d5110a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:05:50 GMT
ENV KIBANA_MAJOR=4.4
# Mon, 19 Sep 2016 20:05:50 GMT
ENV KIBANA_VERSION=4.4.2
# Mon, 19 Sep 2016 20:05:51 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:06:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:06:07 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:06:08 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:06:08 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:06:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:06:09 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065f69fcd390540ac72c4944340aec7841faa5fb4c79b162817f15d4c78b618`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c21a3f4acdb035f91a3d41f3739c446c9e47e28ac2c5a3613ca833175761e97`  
		Last Modified: Tue, 20 Sep 2016 05:05:47 GMT  
		Size: 33.0 MB (33046901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23dc3ea736dbcf98976339fcb3232c5e9c3ec33c2cc5b6358860c9a3be3b1b1`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.5.4`

```console
$ docker pull kibana@sha256:72cd11cdc6c523cf50404c9fe6307ea2449413f060c84adb889a808475180c91
```

-	Platforms:
	-	linux; amd64

### `kibana:4.5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.2 MB (102237135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:858177da8bcbbf49010169f298dc2b17b516f314e85f82055170d868af3ec9db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:06:09 GMT
ENV KIBANA_MAJOR=4.5
# Mon, 19 Sep 2016 20:06:09 GMT
ENV KIBANA_VERSION=4.5.4
# Mon, 19 Sep 2016 20:06:10 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:06:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:06:27 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:06:27 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:06:27 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:06:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:06:28 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5d4ac73949cdb808da03f96536d9c89f02ced1738c674030d0b9096114746`  
		Last Modified: Tue, 20 Sep 2016 05:06:12 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e00807615dbd60e43831c1343ab8c2aef5ad4d9949c817aa5f43e384c3f51b4`  
		Last Modified: Tue, 20 Sep 2016 05:06:34 GMT  
		Size: 33.5 MB (33451918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d16cfe07150099874fc79fe9eebe8c891d765a6b5cbcb6e02819a4d9faf8e`  
		Last Modified: Tue, 20 Sep 2016 05:06:13 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.5`

```console
$ docker pull kibana@sha256:72cd11cdc6c523cf50404c9fe6307ea2449413f060c84adb889a808475180c91
```

-	Platforms:
	-	linux; amd64

### `kibana:4.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.2 MB (102237135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:858177da8bcbbf49010169f298dc2b17b516f314e85f82055170d868af3ec9db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:06:09 GMT
ENV KIBANA_MAJOR=4.5
# Mon, 19 Sep 2016 20:06:09 GMT
ENV KIBANA_VERSION=4.5.4
# Mon, 19 Sep 2016 20:06:10 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:06:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:06:27 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:06:27 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:06:27 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:06:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:06:28 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5d4ac73949cdb808da03f96536d9c89f02ced1738c674030d0b9096114746`  
		Last Modified: Tue, 20 Sep 2016 05:06:12 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e00807615dbd60e43831c1343ab8c2aef5ad4d9949c817aa5f43e384c3f51b4`  
		Last Modified: Tue, 20 Sep 2016 05:06:34 GMT  
		Size: 33.5 MB (33451918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d16cfe07150099874fc79fe9eebe8c891d765a6b5cbcb6e02819a4d9faf8e`  
		Last Modified: Tue, 20 Sep 2016 05:06:13 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.1`

```console
$ docker pull kibana@sha256:f52793dd89f2f32f3d4e45192c5c31591862c23eb7b75e6529c34511ecfe7ac5
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103055324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699e0f9ed72f4339fd5876c571cc76449830fa4379f80fa190f044525cd8643d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:06:28 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 19 Sep 2016 20:06:29 GMT
ENV KIBANA_VERSION=4.6.1
# Mon, 19 Sep 2016 20:06:29 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:06:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:06:47 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:06:47 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:06:47 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:06:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:06:48 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96df01b7745d5a948d943c29681be9e6f34c51874e0ca38a1871735230d43fe`  
		Last Modified: Tue, 20 Sep 2016 05:06:58 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912f4bf38e1aa054073443dcaf9be6507ca96756d21e723136679a9a66e15e8f`  
		Last Modified: Tue, 20 Sep 2016 05:07:21 GMT  
		Size: 34.3 MB (34270106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09055699b71395602302df889cb569603bc87da722fca24034703bc842d13219`  
		Last Modified: Tue, 20 Sep 2016 05:06:58 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:f52793dd89f2f32f3d4e45192c5c31591862c23eb7b75e6529c34511ecfe7ac5
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103055324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699e0f9ed72f4339fd5876c571cc76449830fa4379f80fa190f044525cd8643d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:06:28 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 19 Sep 2016 20:06:29 GMT
ENV KIBANA_VERSION=4.6.1
# Mon, 19 Sep 2016 20:06:29 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:06:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:06:47 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:06:47 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:06:47 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:06:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:06:48 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96df01b7745d5a948d943c29681be9e6f34c51874e0ca38a1871735230d43fe`  
		Last Modified: Tue, 20 Sep 2016 05:06:58 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912f4bf38e1aa054073443dcaf9be6507ca96756d21e723136679a9a66e15e8f`  
		Last Modified: Tue, 20 Sep 2016 05:07:21 GMT  
		Size: 34.3 MB (34270106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09055699b71395602302df889cb569603bc87da722fca24034703bc842d13219`  
		Last Modified: Tue, 20 Sep 2016 05:06:58 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:f52793dd89f2f32f3d4e45192c5c31591862c23eb7b75e6529c34511ecfe7ac5
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103055324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699e0f9ed72f4339fd5876c571cc76449830fa4379f80fa190f044525cd8643d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:06:28 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 19 Sep 2016 20:06:29 GMT
ENV KIBANA_VERSION=4.6.1
# Mon, 19 Sep 2016 20:06:29 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:06:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:06:47 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:06:47 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:06:47 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:06:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:06:48 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96df01b7745d5a948d943c29681be9e6f34c51874e0ca38a1871735230d43fe`  
		Last Modified: Tue, 20 Sep 2016 05:06:58 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912f4bf38e1aa054073443dcaf9be6507ca96756d21e723136679a9a66e15e8f`  
		Last Modified: Tue, 20 Sep 2016 05:07:21 GMT  
		Size: 34.3 MB (34270106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09055699b71395602302df889cb569603bc87da722fca24034703bc842d13219`  
		Last Modified: Tue, 20 Sep 2016 05:06:58 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:f52793dd89f2f32f3d4e45192c5c31591862c23eb7b75e6529c34511ecfe7ac5
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103055324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699e0f9ed72f4339fd5876c571cc76449830fa4379f80fa190f044525cd8643d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:06:28 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 19 Sep 2016 20:06:29 GMT
ENV KIBANA_VERSION=4.6.1
# Mon, 19 Sep 2016 20:06:29 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:06:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 19 Sep 2016 20:06:47 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:06:47 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 19 Sep 2016 20:06:47 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:06:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:06:48 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96df01b7745d5a948d943c29681be9e6f34c51874e0ca38a1871735230d43fe`  
		Last Modified: Tue, 20 Sep 2016 05:06:58 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912f4bf38e1aa054073443dcaf9be6507ca96756d21e723136679a9a66e15e8f`  
		Last Modified: Tue, 20 Sep 2016 05:07:21 GMT  
		Size: 34.3 MB (34270106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09055699b71395602302df889cb569603bc87da722fca24034703bc842d13219`  
		Last Modified: Tue, 20 Sep 2016 05:06:58 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0.0-alpha5`

```console
$ docker pull kibana@sha256:f07ab352106aec2170cc6e3014a06274b8f894547c3d4721d00fddafb7d163b8
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0.0-alpha5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105794009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fb97f14c11cbb381e808ff5c8010e850d1e54b89d2ddfa71e6dccc7671650d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:04:55 GMT
ENV KIBANA_MAJOR=5.0
# Mon, 19 Sep 2016 20:04:55 GMT
ENV KIBANA_VERSION=5.0.0-alpha5
# Mon, 19 Sep 2016 20:04:56 GMT
RUN echo 'deb http://packages.elastic.co/kibana/5.0.0-alpha/debian stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:05:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q 'elasticsearch:9200' /etc/kibana/kibana.yml
# Mon, 19 Sep 2016 20:05:14 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:05:14 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 19 Sep 2016 20:05:14 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:05:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:05:15 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02546cae68417dbd54d04e7d4ea83f2123c33ab560a40fc8e86cd19a72885eb`  
		Last Modified: Tue, 20 Sep 2016 05:08:01 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3760b3708a8c0186c024f71a02c7fc381bbd5899a5627a83133411e18e18d95`  
		Last Modified: Tue, 20 Sep 2016 05:08:25 GMT  
		Size: 37.0 MB (37008788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dc980dfb37a7aa1bf679ebf107777546052fc3d0e698dd23451c69436ec9`  
		Last Modified: Tue, 20 Sep 2016 05:08:03 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0.0`

```console
$ docker pull kibana@sha256:f07ab352106aec2170cc6e3014a06274b8f894547c3d4721d00fddafb7d163b8
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105794009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fb97f14c11cbb381e808ff5c8010e850d1e54b89d2ddfa71e6dccc7671650d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:04:55 GMT
ENV KIBANA_MAJOR=5.0
# Mon, 19 Sep 2016 20:04:55 GMT
ENV KIBANA_VERSION=5.0.0-alpha5
# Mon, 19 Sep 2016 20:04:56 GMT
RUN echo 'deb http://packages.elastic.co/kibana/5.0.0-alpha/debian stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:05:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q 'elasticsearch:9200' /etc/kibana/kibana.yml
# Mon, 19 Sep 2016 20:05:14 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:05:14 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 19 Sep 2016 20:05:14 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:05:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:05:15 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02546cae68417dbd54d04e7d4ea83f2123c33ab560a40fc8e86cd19a72885eb`  
		Last Modified: Tue, 20 Sep 2016 05:08:01 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3760b3708a8c0186c024f71a02c7fc381bbd5899a5627a83133411e18e18d95`  
		Last Modified: Tue, 20 Sep 2016 05:08:25 GMT  
		Size: 37.0 MB (37008788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dc980dfb37a7aa1bf679ebf107777546052fc3d0e698dd23451c69436ec9`  
		Last Modified: Tue, 20 Sep 2016 05:08:03 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0`

```console
$ docker pull kibana@sha256:f07ab352106aec2170cc6e3014a06274b8f894547c3d4721d00fddafb7d163b8
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105794009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fb97f14c11cbb381e808ff5c8010e850d1e54b89d2ddfa71e6dccc7671650d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:04:55 GMT
ENV KIBANA_MAJOR=5.0
# Mon, 19 Sep 2016 20:04:55 GMT
ENV KIBANA_VERSION=5.0.0-alpha5
# Mon, 19 Sep 2016 20:04:56 GMT
RUN echo 'deb http://packages.elastic.co/kibana/5.0.0-alpha/debian stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:05:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q 'elasticsearch:9200' /etc/kibana/kibana.yml
# Mon, 19 Sep 2016 20:05:14 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:05:14 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 19 Sep 2016 20:05:14 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:05:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:05:15 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02546cae68417dbd54d04e7d4ea83f2123c33ab560a40fc8e86cd19a72885eb`  
		Last Modified: Tue, 20 Sep 2016 05:08:01 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3760b3708a8c0186c024f71a02c7fc381bbd5899a5627a83133411e18e18d95`  
		Last Modified: Tue, 20 Sep 2016 05:08:25 GMT  
		Size: 37.0 MB (37008788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dc980dfb37a7aa1bf679ebf107777546052fc3d0e698dd23451c69436ec9`  
		Last Modified: Tue, 20 Sep 2016 05:08:03 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:f07ab352106aec2170cc6e3014a06274b8f894547c3d4721d00fddafb7d163b8
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105794009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fb97f14c11cbb381e808ff5c8010e850d1e54b89d2ddfa71e6dccc7671650d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:04:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 19 Sep 2016 20:04:36 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:04:37 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:04:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:04:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 19 Sep 2016 20:04:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 19 Sep 2016 20:04:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Sep 2016 20:04:55 GMT
ENV KIBANA_MAJOR=5.0
# Mon, 19 Sep 2016 20:04:55 GMT
ENV KIBANA_VERSION=5.0.0-alpha5
# Mon, 19 Sep 2016 20:04:56 GMT
RUN echo 'deb http://packages.elastic.co/kibana/5.0.0-alpha/debian stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 19 Sep 2016 20:05:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q 'elasticsearch:9200' /etc/kibana/kibana.yml
# Mon, 19 Sep 2016 20:05:14 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Sep 2016 20:05:14 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 19 Sep 2016 20:05:14 GMT
EXPOSE 5601/tcp
# Mon, 19 Sep 2016 20:05:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:05:15 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67317be3d6ff85050224111e3692a00f208d9eafcea89e27e22e16fe52c65f0`  
		Last Modified: Tue, 20 Sep 2016 05:03:23 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52afa52bbb7f6261012bceaab48ed8988a93258ee7a9ccf7c8300e21a75addb8`  
		Last Modified: Tue, 20 Sep 2016 05:03:25 GMT  
		Size: 16.6 MB (16609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e03397b10da5e3f5e155f94dc58f5d092349652e817bda9b536315779700c7`  
		Last Modified: Tue, 20 Sep 2016 05:03:21 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a063cecfefa0a3fe890cef16f19896d43fd0be3b47e275d78d474a524793652`  
		Last Modified: Tue, 20 Sep 2016 05:03:20 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b97159aeb5bf4ed597b1c6039977f937b6537b97f2b4d8e9edd6d1fada929`  
		Last Modified: Tue, 20 Sep 2016 05:05:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02546cae68417dbd54d04e7d4ea83f2123c33ab560a40fc8e86cd19a72885eb`  
		Last Modified: Tue, 20 Sep 2016 05:08:01 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3760b3708a8c0186c024f71a02c7fc381bbd5899a5627a83133411e18e18d95`  
		Last Modified: Tue, 20 Sep 2016 05:08:25 GMT  
		Size: 37.0 MB (37008788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dc980dfb37a7aa1bf679ebf107777546052fc3d0e698dd23451c69436ec9`  
		Last Modified: Tue, 20 Sep 2016 05:08:03 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
