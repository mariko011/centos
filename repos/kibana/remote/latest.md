## `kibana:latest`

```console
$ docker pull kibana@sha256:34bca633b63b91643bf33ae42e623b5648af8a5748505ece0972b77882b60dd0
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (112999393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c294fd330559357a273884f8b71e1084bd510dab1e4475c7f22ab232127e3c01`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Thu, 22 Dec 2016 20:28:53 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:28:54 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Dec 2016 20:28:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 22 Dec 2016 20:28:59 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 22 Dec 2016 20:29:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 22 Dec 2016 20:29:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 22 Dec 2016 20:29:05 GMT
ENV KIBANA_VERSION=5.1.1
# Thu, 22 Dec 2016 20:29:07 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 22 Dec 2016 20:29:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 22 Dec 2016 20:29:34 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Dec 2016 20:29:35 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 22 Dec 2016 20:29:36 GMT
EXPOSE 5601/tcp
# Thu, 22 Dec 2016 20:29:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Dec 2016 20:29:37 GMT
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
	-	`sha256:de15de0f8c7717803fbf24b23b1b2b473aee3b11a6957cf2e708e8c586f39a35`  
		Last Modified: Thu, 22 Dec 2016 20:32:10 GMT  
		Size: 21.6 MB (21631069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17aed4151f4670883ecea66782a8de0f0acf39a5257b83c8e3360ead9fd2b1d`  
		Last Modified: Thu, 22 Dec 2016 20:32:02 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8231e7373febb5b8f88850573480f49080a4888590dfa84de87c09ef53143a67`  
		Last Modified: Thu, 22 Dec 2016 20:31:59 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea6d04e205ffbbfff0558f6f9edb77fb366e6f749c12786096a935a4bb9156a`  
		Last Modified: Thu, 22 Dec 2016 20:32:02 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672be4b452623efebaafffff1dd82304b47361a798a000885897578bbdafdf8e`  
		Last Modified: Thu, 22 Dec 2016 20:31:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fccf3dab465d62b1b21228e610bdc12c45479eba031be1846fc4d75bf8c008`  
		Last Modified: Thu, 22 Dec 2016 20:32:21 GMT  
		Size: 39.2 MB (39183786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ed1179d38274887c8240ad1e7b3fae87b1566f32b08fd7f3c6430805ff0a5b`  
		Last Modified: Thu, 22 Dec 2016 20:32:04 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
