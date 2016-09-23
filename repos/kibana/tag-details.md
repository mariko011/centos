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
$ docker pull kibana@sha256:0f389dc349a822426ab3991defb8c3456ba5be531599dcccb2e932c832eccdc0
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
$ docker pull kibana@sha256:0f389dc349a822426ab3991defb8c3456ba5be531599dcccb2e932c832eccdc0
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
$ docker pull kibana@sha256:bbe7c3253cc4da7717454f7cb55f134936e0e3587fac7a209c40388ea64f00d2
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
$ docker pull kibana@sha256:bbe7c3253cc4da7717454f7cb55f134936e0e3587fac7a209c40388ea64f00d2
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
$ docker pull kibana@sha256:4dfb36482164448f3d7b175a313569ea02407c885fb7a8e9c7686c4475f5c13e
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
$ docker pull kibana@sha256:4dfb36482164448f3d7b175a313569ea02407c885fb7a8e9c7686c4475f5c13e
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
$ docker pull kibana@sha256:dbbfbfdff5f5da0a898a93bbfc9a10631c9d64e427dab667ebc781bcc61a5987
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
$ docker pull kibana@sha256:dbbfbfdff5f5da0a898a93bbfc9a10631c9d64e427dab667ebc781bcc61a5987
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
$ docker pull kibana@sha256:a21770e79e2fd93adae2f69dbf3d588a2c3e0ed3b958af9dd95b50a34d1b534c
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
$ docker pull kibana@sha256:a21770e79e2fd93adae2f69dbf3d588a2c3e0ed3b958af9dd95b50a34d1b534c
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
$ docker pull kibana@sha256:95178ea2a763982b95658f0739b508d6619f7920c8db810d7acd626d91e5397a
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
$ docker pull kibana@sha256:95178ea2a763982b95658f0739b508d6619f7920c8db810d7acd626d91e5397a
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
$ docker pull kibana@sha256:95178ea2a763982b95658f0739b508d6619f7920c8db810d7acd626d91e5397a
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
$ docker pull kibana@sha256:95178ea2a763982b95658f0739b508d6619f7920c8db810d7acd626d91e5397a
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

## `kibana:5.0.0-alpha5`

```console
$ docker pull kibana@sha256:0a0ee14c5c309c6b990bb15f8399a697fe99e8258d515a38b098aff5d4c83e6f
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0.0-alpha5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105794412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357842eb493611a40622dc849f105235ff6cc1e8b0c4b7311e7932794f8e088b`
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
# Fri, 23 Sep 2016 19:55:38 GMT
ENV KIBANA_MAJOR=5.0
# Fri, 23 Sep 2016 19:55:38 GMT
ENV KIBANA_VERSION=5.0.0-alpha5
# Fri, 23 Sep 2016 19:55:39 GMT
RUN echo 'deb http://packages.elastic.co/kibana/5.0.0-alpha/debian stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 23 Sep 2016 19:55:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q 'elasticsearch:9200' /etc/kibana/kibana.yml
# Fri, 23 Sep 2016 19:55:57 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:55:58 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 23 Sep 2016 19:55:58 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:55:59 GMT
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
	-	`sha256:2c6800708e5144a005a07f50a5bb958eced08ce0b3bd6f602b65e0ec279784b4`  
		Last Modified: Fri, 23 Sep 2016 19:56:06 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13235824283fb4684e8220e39594a3804bbaecb56653720a1c50121bf5a4ff64`  
		Last Modified: Fri, 23 Sep 2016 19:56:19 GMT  
		Size: 37.0 MB (37009051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef64ed70dce3d927a14734277a4ddf890ec2a1ada11fa39cb034a6dcf59d41e`  
		Last Modified: Fri, 23 Sep 2016 19:56:06 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0.0`

```console
$ docker pull kibana@sha256:0a0ee14c5c309c6b990bb15f8399a697fe99e8258d515a38b098aff5d4c83e6f
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105794412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357842eb493611a40622dc849f105235ff6cc1e8b0c4b7311e7932794f8e088b`
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
# Fri, 23 Sep 2016 19:55:38 GMT
ENV KIBANA_MAJOR=5.0
# Fri, 23 Sep 2016 19:55:38 GMT
ENV KIBANA_VERSION=5.0.0-alpha5
# Fri, 23 Sep 2016 19:55:39 GMT
RUN echo 'deb http://packages.elastic.co/kibana/5.0.0-alpha/debian stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 23 Sep 2016 19:55:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q 'elasticsearch:9200' /etc/kibana/kibana.yml
# Fri, 23 Sep 2016 19:55:57 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:55:58 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 23 Sep 2016 19:55:58 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:55:59 GMT
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
	-	`sha256:2c6800708e5144a005a07f50a5bb958eced08ce0b3bd6f602b65e0ec279784b4`  
		Last Modified: Fri, 23 Sep 2016 19:56:06 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13235824283fb4684e8220e39594a3804bbaecb56653720a1c50121bf5a4ff64`  
		Last Modified: Fri, 23 Sep 2016 19:56:19 GMT  
		Size: 37.0 MB (37009051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef64ed70dce3d927a14734277a4ddf890ec2a1ada11fa39cb034a6dcf59d41e`  
		Last Modified: Fri, 23 Sep 2016 19:56:06 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.0`

```console
$ docker pull kibana@sha256:0a0ee14c5c309c6b990bb15f8399a697fe99e8258d515a38b098aff5d4c83e6f
```

-	Platforms:
	-	linux; amd64

### `kibana:5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105794412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357842eb493611a40622dc849f105235ff6cc1e8b0c4b7311e7932794f8e088b`
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
# Fri, 23 Sep 2016 19:55:38 GMT
ENV KIBANA_MAJOR=5.0
# Fri, 23 Sep 2016 19:55:38 GMT
ENV KIBANA_VERSION=5.0.0-alpha5
# Fri, 23 Sep 2016 19:55:39 GMT
RUN echo 'deb http://packages.elastic.co/kibana/5.0.0-alpha/debian stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 23 Sep 2016 19:55:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q 'elasticsearch:9200' /etc/kibana/kibana.yml
# Fri, 23 Sep 2016 19:55:57 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:55:58 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 23 Sep 2016 19:55:58 GMT
EXPOSE 5601/tcp
# Fri, 23 Sep 2016 19:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:55:59 GMT
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
	-	`sha256:2c6800708e5144a005a07f50a5bb958eced08ce0b3bd6f602b65e0ec279784b4`  
		Last Modified: Fri, 23 Sep 2016 19:56:06 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13235824283fb4684e8220e39594a3804bbaecb56653720a1c50121bf5a4ff64`  
		Last Modified: Fri, 23 Sep 2016 19:56:19 GMT  
		Size: 37.0 MB (37009051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef64ed70dce3d927a14734277a4ddf890ec2a1ada11fa39cb034a6dcf59d41e`  
		Last Modified: Fri, 23 Sep 2016 19:56:06 GMT  
		Size: 337.0 B  
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
