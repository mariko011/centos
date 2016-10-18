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
-	[`kibana:5.0.0-rc1`](#kibana500-rc1)
-	[`kibana:5.0.0`](#kibana500)
-	[`kibana:5.0`](#kibana50)
-	[`kibana:5`](#kibana5)

## `kibana:4.1.11`

```console
$ docker pull kibana@sha256:2bd24aa67fd0b6bf12d87bc66e2b6a238eb5601860d79d295fdeb93b25dace7c
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87789658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef483fb5c7b3f063789bc9aa4b84fe4d791ba0fbd843a49a16bbb33b34b24526`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:51:17 GMT
ENV KIBANA_VERSION=4.1.11
# Fri, 23 Sep 2016 19:51:17 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Fri, 23 Sep 2016 19:51:24 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:51:25 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:51:25 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Fri, 23 Sep 2016 19:51:26 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:51:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:51:26 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55b9a3a229c024286e3990afb2300c57832e4e31058d94df7bcc32febebe2eb`  
		Last Modified: Fri, 23 Sep 2016 19:51:40 GMT  
		Size: 19.0 MB (19005967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04070560d5eb2326cc297a35d077395e64f47b66e9eb79728c0261125a1ceed8`  
		Last Modified: Fri, 23 Sep 2016 19:51:35 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1`

```console
$ docker pull kibana@sha256:2bd24aa67fd0b6bf12d87bc66e2b6a238eb5601860d79d295fdeb93b25dace7c
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87789658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef483fb5c7b3f063789bc9aa4b84fe4d791ba0fbd843a49a16bbb33b34b24526`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:51:17 GMT
ENV KIBANA_VERSION=4.1.11
# Fri, 23 Sep 2016 19:51:17 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Fri, 23 Sep 2016 19:51:24 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:51:25 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:51:25 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Fri, 23 Sep 2016 19:51:26 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:51:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:51:26 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55b9a3a229c024286e3990afb2300c57832e4e31058d94df7bcc32febebe2eb`  
		Last Modified: Fri, 23 Sep 2016 19:51:40 GMT  
		Size: 19.0 MB (19005967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04070560d5eb2326cc297a35d077395e64f47b66e9eb79728c0261125a1ceed8`  
		Last Modified: Fri, 23 Sep 2016 19:51:35 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.2.2`

```console
$ docker pull kibana@sha256:a747c9997a43295cdbc309097517edcd561b9695d20b323a42253e0bbe62d343
```

-	Platforms:
	-	linux; amd64

### `kibana:4.2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99282692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce852dc75221a021fdc7c395272f9dce91ff91513b5af9a6ccda88d8162fc1f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:51:58 GMT
ENV KIBANA_VERSION=4.2.2
# Fri, 23 Sep 2016 19:51:58 GMT
ENV KIBANA_SHA1=f0daf9cd0b949c0ec7a3be300ee876fba17d1570
# Fri, 23 Sep 2016 19:52:19 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:52:20 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:52:20 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:52:20 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:52:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:52:21 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7374d2ceb7c16c07dfbca1bbc5e4b03f784e8668b4d5aaa0b638b1eec456bf`  
		Last Modified: Fri, 23 Sep 2016 19:52:39 GMT  
		Size: 30.5 MB (30498999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a2f08137edf5aa619f33d0a661eb1e07d314f893433b98f25601904846766b`  
		Last Modified: Fri, 23 Sep 2016 19:52:28 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.2`

```console
$ docker pull kibana@sha256:a747c9997a43295cdbc309097517edcd561b9695d20b323a42253e0bbe62d343
```

-	Platforms:
	-	linux; amd64

### `kibana:4.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99282692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce852dc75221a021fdc7c395272f9dce91ff91513b5af9a6ccda88d8162fc1f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:51:58 GMT
ENV KIBANA_VERSION=4.2.2
# Fri, 23 Sep 2016 19:51:58 GMT
ENV KIBANA_SHA1=f0daf9cd0b949c0ec7a3be300ee876fba17d1570
# Fri, 23 Sep 2016 19:52:19 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:52:20 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:52:20 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:52:20 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:52:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:52:21 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7374d2ceb7c16c07dfbca1bbc5e4b03f784e8668b4d5aaa0b638b1eec456bf`  
		Last Modified: Fri, 23 Sep 2016 19:52:39 GMT  
		Size: 30.5 MB (30498999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a2f08137edf5aa619f33d0a661eb1e07d314f893433b98f25601904846766b`  
		Last Modified: Fri, 23 Sep 2016 19:52:28 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.3.3`

```console
$ docker pull kibana@sha256:a2950bd117333938f2b2322a6122550df14a0a159542a09c7992c228958460e1
```

-	Platforms:
	-	linux; amd64

### `kibana:4.3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101311012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d1222fed78154a4a9f69efaa20e85c12701585905c9573acefb1f3f947eacd4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:52:58 GMT
ENV KIBANA_VERSION=4.3.3
# Fri, 23 Sep 2016 19:52:59 GMT
ENV KIBANA_SHA1=3d3d0ae7658a3a7cd0d79e0f3c21701511604531
# Fri, 23 Sep 2016 19:53:09 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:53:10 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:53:11 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:53:11 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:53:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:53:12 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e48107d6340172a6907718390a9378021fdc538fdfc49c3ff73ea2f54f6628`  
		Last Modified: Fri, 23 Sep 2016 19:53:30 GMT  
		Size: 32.5 MB (32527320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294e0ccedd9c635c1e3b293c5a17d1d24f0f71c745cd280eacb6edac543f038e`  
		Last Modified: Fri, 23 Sep 2016 19:53:19 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.3`

```console
$ docker pull kibana@sha256:a2950bd117333938f2b2322a6122550df14a0a159542a09c7992c228958460e1
```

-	Platforms:
	-	linux; amd64

### `kibana:4.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101311012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d1222fed78154a4a9f69efaa20e85c12701585905c9573acefb1f3f947eacd4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:52:58 GMT
ENV KIBANA_VERSION=4.3.3
# Fri, 23 Sep 2016 19:52:59 GMT
ENV KIBANA_SHA1=3d3d0ae7658a3a7cd0d79e0f3c21701511604531
# Fri, 23 Sep 2016 19:53:09 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:53:10 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:53:11 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:53:11 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:53:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:53:12 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e48107d6340172a6907718390a9378021fdc538fdfc49c3ff73ea2f54f6628`  
		Last Modified: Fri, 23 Sep 2016 19:53:30 GMT  
		Size: 32.5 MB (32527320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294e0ccedd9c635c1e3b293c5a17d1d24f0f71c745cd280eacb6edac543f038e`  
		Last Modified: Fri, 23 Sep 2016 19:53:19 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.4.2`

```console
$ docker pull kibana@sha256:4bb68bb2112ff0270462eec90df2224b83adb4417779fb7eb5d074fbcdd065bd
```

-	Platforms:
	-	linux; amd64

### `kibana:4.4.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101832316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72543497267d359d62d3b0fb3cd2ab0b2eb6934100d7bde72ebfbd2f39210124`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:49:58 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 23 Sep 2016 19:53:48 GMT
ENV KIBANA_MAJOR=4.4
# Fri, 23 Sep 2016 19:53:48 GMT
ENV KIBANA_VERSION=4.4.2
# Fri, 23 Sep 2016 19:53:49 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 23 Sep 2016 19:54:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:54:05 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:54:06 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:54:06 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:54:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:54:07 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d64b0065b10f10248dabcb8cf8734c721046d717d60748c815eac418955388`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f64bbd115797c25b8864fb5c78ec294b07c7ac09709c18b9f7dd34e8e604c`  
		Last Modified: Fri, 23 Sep 2016 19:54:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c8eb6d66db701038218cfdd565e94fb34ec9eea80003860d520c1b4515d66a`  
		Last Modified: Fri, 23 Sep 2016 19:54:25 GMT  
		Size: 33.0 MB (33046955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae06bf7e9057892c7885776043f8e1fcf09f6fbcaef07b20068896d974b0189`  
		Last Modified: Fri, 23 Sep 2016 19:54:15 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.4`

```console
$ docker pull kibana@sha256:4bb68bb2112ff0270462eec90df2224b83adb4417779fb7eb5d074fbcdd065bd
```

-	Platforms:
	-	linux; amd64

### `kibana:4.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101832316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72543497267d359d62d3b0fb3cd2ab0b2eb6934100d7bde72ebfbd2f39210124`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:49:58 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 23 Sep 2016 19:53:48 GMT
ENV KIBANA_MAJOR=4.4
# Fri, 23 Sep 2016 19:53:48 GMT
ENV KIBANA_VERSION=4.4.2
# Fri, 23 Sep 2016 19:53:49 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 23 Sep 2016 19:54:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:54:05 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:54:06 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:54:06 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:54:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:54:07 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d64b0065b10f10248dabcb8cf8734c721046d717d60748c815eac418955388`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f64bbd115797c25b8864fb5c78ec294b07c7ac09709c18b9f7dd34e8e604c`  
		Last Modified: Fri, 23 Sep 2016 19:54:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c8eb6d66db701038218cfdd565e94fb34ec9eea80003860d520c1b4515d66a`  
		Last Modified: Fri, 23 Sep 2016 19:54:25 GMT  
		Size: 33.0 MB (33046955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae06bf7e9057892c7885776043f8e1fcf09f6fbcaef07b20068896d974b0189`  
		Last Modified: Fri, 23 Sep 2016 19:54:15 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.5.4`

```console
$ docker pull kibana@sha256:31169bd33eee88b744933272b1118648b09150a624e1b6c6f1643ef1a8390fe8
```

-	Platforms:
	-	linux; amd64

### `kibana:4.5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.2 MB (102237608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3200d7b8e235e235c4bf2cb61eefbc036aadca520f6e72d86217cb2301438a0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:49:58 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 23 Sep 2016 19:54:42 GMT
ENV KIBANA_MAJOR=4.5
# Fri, 23 Sep 2016 19:54:42 GMT
ENV KIBANA_VERSION=4.5.4
# Fri, 23 Sep 2016 19:54:43 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 23 Sep 2016 19:54:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:55:00 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:55:00 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:55:00 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:55:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:55:01 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d64b0065b10f10248dabcb8cf8734c721046d717d60748c815eac418955388`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0769b1872ba5324b90a84d90ef33c168ac07e1f36723241d18743355d3ba8c2`  
		Last Modified: Fri, 23 Sep 2016 19:55:08 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d6c154a83aec6b0d6bb38fba84b60978e06ea32da0714f7e2e38e839a9cd37`  
		Last Modified: Fri, 23 Sep 2016 19:55:20 GMT  
		Size: 33.5 MB (33452249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ff39c878df4a1d1e63a2f7e8b0dc038718e81ea6a6e786056de0ceaabcece`  
		Last Modified: Fri, 23 Sep 2016 19:55:08 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.5`

```console
$ docker pull kibana@sha256:31169bd33eee88b744933272b1118648b09150a624e1b6c6f1643ef1a8390fe8
```

-	Platforms:
	-	linux; amd64

### `kibana:4.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.2 MB (102237608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3200d7b8e235e235c4bf2cb61eefbc036aadca520f6e72d86217cb2301438a0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:49:58 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 23 Sep 2016 19:54:42 GMT
ENV KIBANA_MAJOR=4.5
# Fri, 23 Sep 2016 19:54:42 GMT
ENV KIBANA_VERSION=4.5.4
# Fri, 23 Sep 2016 19:54:43 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 23 Sep 2016 19:54:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:55:00 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:55:00 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:55:00 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:55:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:55:01 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d64b0065b10f10248dabcb8cf8734c721046d717d60748c815eac418955388`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0769b1872ba5324b90a84d90ef33c168ac07e1f36723241d18743355d3ba8c2`  
		Last Modified: Fri, 23 Sep 2016 19:55:08 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d6c154a83aec6b0d6bb38fba84b60978e06ea32da0714f7e2e38e839a9cd37`  
		Last Modified: Fri, 23 Sep 2016 19:55:20 GMT  
		Size: 33.5 MB (33452249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ff39c878df4a1d1e63a2f7e8b0dc038718e81ea6a6e786056de0ceaabcece`  
		Last Modified: Fri, 23 Sep 2016 19:55:08 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.1`

```console
$ docker pull kibana@sha256:c7194b6f6068133313e251e5916f48910f369b7f9bcfb7af3a088b920057e840
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103057046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c20a93c5bc2e22bbdfe8de39cac2ec626164a7658c6fe02948e756791c1ec4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:49:58 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 23 Sep 2016 19:49:58 GMT
ENV KIBANA_MAJOR=4.6
# Fri, 23 Sep 2016 19:49:59 GMT
ENV KIBANA_VERSION=4.6.1
# Fri, 23 Sep 2016 19:49:59 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 23 Sep 2016 19:50:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:50:18 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:50:18 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:50:19 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:50:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:50:19 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d64b0065b10f10248dabcb8cf8734c721046d717d60748c815eac418955388`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bc0a3619ef040e1442ce700df94d990439a24fd04015cbdfe5b96b36d8154f`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82973a490db681ef60d9f621b499c49a94437445ca6944996f687a8bbb3398b4`  
		Last Modified: Fri, 23 Sep 2016 19:50:40 GMT  
		Size: 34.3 MB (34271688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e21a31e84a079eb854e73d8ecc51bc427037278353d285826cd255e88cbd9c`  
		Last Modified: Fri, 23 Sep 2016 19:50:29 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:c7194b6f6068133313e251e5916f48910f369b7f9bcfb7af3a088b920057e840
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103057046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c20a93c5bc2e22bbdfe8de39cac2ec626164a7658c6fe02948e756791c1ec4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:49:58 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 23 Sep 2016 19:49:58 GMT
ENV KIBANA_MAJOR=4.6
# Fri, 23 Sep 2016 19:49:59 GMT
ENV KIBANA_VERSION=4.6.1
# Fri, 23 Sep 2016 19:49:59 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 23 Sep 2016 19:50:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:50:18 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:50:18 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:50:19 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:50:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:50:19 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d64b0065b10f10248dabcb8cf8734c721046d717d60748c815eac418955388`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bc0a3619ef040e1442ce700df94d990439a24fd04015cbdfe5b96b36d8154f`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82973a490db681ef60d9f621b499c49a94437445ca6944996f687a8bbb3398b4`  
		Last Modified: Fri, 23 Sep 2016 19:50:40 GMT  
		Size: 34.3 MB (34271688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e21a31e84a079eb854e73d8ecc51bc427037278353d285826cd255e88cbd9c`  
		Last Modified: Fri, 23 Sep 2016 19:50:29 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:c7194b6f6068133313e251e5916f48910f369b7f9bcfb7af3a088b920057e840
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103057046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c20a93c5bc2e22bbdfe8de39cac2ec626164a7658c6fe02948e756791c1ec4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:49:58 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 23 Sep 2016 19:49:58 GMT
ENV KIBANA_MAJOR=4.6
# Fri, 23 Sep 2016 19:49:59 GMT
ENV KIBANA_VERSION=4.6.1
# Fri, 23 Sep 2016 19:49:59 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 23 Sep 2016 19:50:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:50:18 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:50:18 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:50:19 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:50:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:50:19 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d64b0065b10f10248dabcb8cf8734c721046d717d60748c815eac418955388`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bc0a3619ef040e1442ce700df94d990439a24fd04015cbdfe5b96b36d8154f`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82973a490db681ef60d9f621b499c49a94437445ca6944996f687a8bbb3398b4`  
		Last Modified: Fri, 23 Sep 2016 19:50:40 GMT  
		Size: 34.3 MB (34271688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e21a31e84a079eb854e73d8ecc51bc427037278353d285826cd255e88cbd9c`  
		Last Modified: Fri, 23 Sep 2016 19:50:29 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:c7194b6f6068133313e251e5916f48910f369b7f9bcfb7af3a088b920057e840
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103057046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c20a93c5bc2e22bbdfe8de39cac2ec626164a7658c6fe02948e756791c1ec4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 23 Sep 2016 19:49:47 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:49:48 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:49:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 19:49:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 19:49:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 19:49:58 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 23 Sep 2016 19:49:58 GMT
ENV KIBANA_MAJOR=4.6
# Fri, 23 Sep 2016 19:49:59 GMT
ENV KIBANA_VERSION=4.6.1
# Fri, 23 Sep 2016 19:49:59 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 23 Sep 2016 19:50:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 23 Sep 2016 19:50:18 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:50:18 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 23 Sep 2016 19:50:19 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:50:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:50:19 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15960ce0c2c27e6701a733a2dd040c04f6afd45650949aefa99e8fe710cd71ed`  
		Last Modified: Fri, 23 Sep 2016 19:50:34 GMT  
		Size: 16.6 MB (16609592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b1d6f1af818b7555768b97db513ce6cf61a476d7bc360924c36a2ffb2c7b7b`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ebae07020c452df5609fdf3b11b27f1119a802dc3ea182f8fc14aefdd5595`  
		Last Modified: Fri, 23 Sep 2016 19:50:27 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d64b0065b10f10248dabcb8cf8734c721046d717d60748c815eac418955388`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bc0a3619ef040e1442ce700df94d990439a24fd04015cbdfe5b96b36d8154f`  
		Last Modified: Fri, 23 Sep 2016 19:50:26 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82973a490db681ef60d9f621b499c49a94437445ca6944996f687a8bbb3398b4`  
		Last Modified: Fri, 23 Sep 2016 19:50:40 GMT  
		Size: 34.3 MB (34271688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e21a31e84a079eb854e73d8ecc51bc427037278353d285826cd255e88cbd9c`  
		Last Modified: Fri, 23 Sep 2016 19:50:29 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0.0-rc1`

```console
$ docker pull kibana@sha256:139fc705c1901798e1c1e5ee6d9215ac9ccad99451c2de6d313816aa030a4951
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0.0-rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110379913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaefdeec9c22ffb4317f690e001b4509df4e976d2d26c910a4cdfaeb165bb132`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 11 Oct 2016 21:08:14 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:08:15 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:08:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:08:20 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 11 Oct 2016 21:08:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 11 Oct 2016 21:08:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 11 Oct 2016 21:08:25 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 11 Oct 2016 21:08:25 GMT
ENV KIBANA_VERSION=5.0.0-rc1
# Tue, 11 Oct 2016 21:08:26 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x-prerelease/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 18 Oct 2016 20:58:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 18 Oct 2016 20:58:24 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 20:58:24 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 18 Oct 2016 20:58:25 GMT
EXPOSE 5601/tcp
# Tue, 18 Oct 2016 20:58:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 20:58:25 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf4671c6e1329b7fdcc6d6a119b9d8a252906c45078a5880c0b31bb48a7ef4`  
		Last Modified: Tue, 11 Oct 2016 21:11:26 GMT  
		Size: 18.5 MB (18456279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe2e6b0ccb1bb6df72aa03be7011358f0d7f95a7449a8e4030ee123db28bff9`  
		Last Modified: Tue, 11 Oct 2016 21:11:21 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e8fab39682429fda009a5c076e7fbf5a510722cc60939494fa77e7686aa558`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9eb555e685e1e1832ed18e31654dcd1a537779cbb10f2cf9d378c4604a3b30e`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeed1e83b198d4ba96ea7e4185a3c000437f3790f0eea92863d98e80c3e25062`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ee4c99e0f93c49a919bc3b73ed8af345f0106fc074edde606c380289ea24f`  
		Last Modified: Tue, 18 Oct 2016 21:01:19 GMT  
		Size: 39.7 MB (39747846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d276168b85085f4f78a47a4092edd914d06fec9ae6f22f90a7faee7d1d044ab5`  
		Last Modified: Tue, 18 Oct 2016 21:01:06 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0.0`

```console
$ docker pull kibana@sha256:139fc705c1901798e1c1e5ee6d9215ac9ccad99451c2de6d313816aa030a4951
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110379913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaefdeec9c22ffb4317f690e001b4509df4e976d2d26c910a4cdfaeb165bb132`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 11 Oct 2016 21:08:14 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:08:15 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:08:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:08:20 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 11 Oct 2016 21:08:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 11 Oct 2016 21:08:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 11 Oct 2016 21:08:25 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 11 Oct 2016 21:08:25 GMT
ENV KIBANA_VERSION=5.0.0-rc1
# Tue, 11 Oct 2016 21:08:26 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x-prerelease/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 18 Oct 2016 20:58:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 18 Oct 2016 20:58:24 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 20:58:24 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 18 Oct 2016 20:58:25 GMT
EXPOSE 5601/tcp
# Tue, 18 Oct 2016 20:58:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 20:58:25 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf4671c6e1329b7fdcc6d6a119b9d8a252906c45078a5880c0b31bb48a7ef4`  
		Last Modified: Tue, 11 Oct 2016 21:11:26 GMT  
		Size: 18.5 MB (18456279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe2e6b0ccb1bb6df72aa03be7011358f0d7f95a7449a8e4030ee123db28bff9`  
		Last Modified: Tue, 11 Oct 2016 21:11:21 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e8fab39682429fda009a5c076e7fbf5a510722cc60939494fa77e7686aa558`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9eb555e685e1e1832ed18e31654dcd1a537779cbb10f2cf9d378c4604a3b30e`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeed1e83b198d4ba96ea7e4185a3c000437f3790f0eea92863d98e80c3e25062`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ee4c99e0f93c49a919bc3b73ed8af345f0106fc074edde606c380289ea24f`  
		Last Modified: Tue, 18 Oct 2016 21:01:19 GMT  
		Size: 39.7 MB (39747846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d276168b85085f4f78a47a4092edd914d06fec9ae6f22f90a7faee7d1d044ab5`  
		Last Modified: Tue, 18 Oct 2016 21:01:06 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0`

```console
$ docker pull kibana@sha256:139fc705c1901798e1c1e5ee6d9215ac9ccad99451c2de6d313816aa030a4951
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110379913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaefdeec9c22ffb4317f690e001b4509df4e976d2d26c910a4cdfaeb165bb132`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 11 Oct 2016 21:08:14 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:08:15 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:08:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:08:20 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 11 Oct 2016 21:08:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 11 Oct 2016 21:08:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 11 Oct 2016 21:08:25 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 11 Oct 2016 21:08:25 GMT
ENV KIBANA_VERSION=5.0.0-rc1
# Tue, 11 Oct 2016 21:08:26 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x-prerelease/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 18 Oct 2016 20:58:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 18 Oct 2016 20:58:24 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 20:58:24 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 18 Oct 2016 20:58:25 GMT
EXPOSE 5601/tcp
# Tue, 18 Oct 2016 20:58:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 20:58:25 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf4671c6e1329b7fdcc6d6a119b9d8a252906c45078a5880c0b31bb48a7ef4`  
		Last Modified: Tue, 11 Oct 2016 21:11:26 GMT  
		Size: 18.5 MB (18456279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe2e6b0ccb1bb6df72aa03be7011358f0d7f95a7449a8e4030ee123db28bff9`  
		Last Modified: Tue, 11 Oct 2016 21:11:21 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e8fab39682429fda009a5c076e7fbf5a510722cc60939494fa77e7686aa558`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9eb555e685e1e1832ed18e31654dcd1a537779cbb10f2cf9d378c4604a3b30e`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeed1e83b198d4ba96ea7e4185a3c000437f3790f0eea92863d98e80c3e25062`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ee4c99e0f93c49a919bc3b73ed8af345f0106fc074edde606c380289ea24f`  
		Last Modified: Tue, 18 Oct 2016 21:01:19 GMT  
		Size: 39.7 MB (39747846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d276168b85085f4f78a47a4092edd914d06fec9ae6f22f90a7faee7d1d044ab5`  
		Last Modified: Tue, 18 Oct 2016 21:01:06 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:139fc705c1901798e1c1e5ee6d9215ac9ccad99451c2de6d313816aa030a4951
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110379913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaefdeec9c22ffb4317f690e001b4509df4e976d2d26c910a4cdfaeb165bb132`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:49:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 11 Oct 2016 21:08:14 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:08:15 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:08:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:08:20 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 11 Oct 2016 21:08:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 11 Oct 2016 21:08:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 11 Oct 2016 21:08:25 GMT
ENV KIBANA_MAJOR=5.0
# Tue, 11 Oct 2016 21:08:25 GMT
ENV KIBANA_VERSION=5.0.0-rc1
# Tue, 11 Oct 2016 21:08:26 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x-prerelease/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 18 Oct 2016 20:58:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 18 Oct 2016 20:58:24 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 20:58:24 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 18 Oct 2016 20:58:25 GMT
EXPOSE 5601/tcp
# Tue, 18 Oct 2016 20:58:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 20:58:25 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd569946b3946990afd82dbfcdfa14c6e30171043ab9227a4ffc74aed2aef039`  
		Last Modified: Fri, 23 Sep 2016 19:50:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf4671c6e1329b7fdcc6d6a119b9d8a252906c45078a5880c0b31bb48a7ef4`  
		Last Modified: Tue, 11 Oct 2016 21:11:26 GMT  
		Size: 18.5 MB (18456279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe2e6b0ccb1bb6df72aa03be7011358f0d7f95a7449a8e4030ee123db28bff9`  
		Last Modified: Tue, 11 Oct 2016 21:11:21 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e8fab39682429fda009a5c076e7fbf5a510722cc60939494fa77e7686aa558`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9eb555e685e1e1832ed18e31654dcd1a537779cbb10f2cf9d378c4604a3b30e`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeed1e83b198d4ba96ea7e4185a3c000437f3790f0eea92863d98e80c3e25062`  
		Last Modified: Tue, 11 Oct 2016 21:11:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ee4c99e0f93c49a919bc3b73ed8af345f0106fc074edde606c380289ea24f`  
		Last Modified: Tue, 18 Oct 2016 21:01:19 GMT  
		Size: 39.7 MB (39747846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d276168b85085f4f78a47a4092edd914d06fec9ae6f22f90a7faee7d1d044ab5`  
		Last Modified: Tue, 18 Oct 2016 21:01:06 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
