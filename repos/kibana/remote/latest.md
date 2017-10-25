## `kibana:latest`

```console
$ docker pull kibana@sha256:3d7c13da424e806a6cb9da14953b533c0f57b7814275a94c9b181eb159d2c5fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

```console
$ docker pull kibana@sha256:a844a651fea3ef91350cddfe1fd1edeaf315ae2e6af6a0dce90310f3ffa39459
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128232114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a5908e7d449ba8ffad91e58e06d6c653caf0ed60d63420c18f170d34c1c34b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Wed, 25 Oct 2017 15:13:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 25 Oct 2017 15:14:02 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 15:14:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:14:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:14:08 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 25 Oct 2017 15:14:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 15:14:19 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 25 Oct 2017 15:14:20 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 25 Oct 2017 19:14:35 GMT
ENV KIBANA_VERSION=5.6.3
# Wed, 25 Oct 2017 19:15:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 25 Oct 2017 19:15:29 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:15:29 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 25 Oct 2017 19:15:30 GMT
EXPOSE 5601/tcp
# Wed, 25 Oct 2017 19:15:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 19:15:30 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aac72d6286b0b155123e6e9b670105290a45b5f25fe799a0d9a1ce63d76c2b7`  
		Last Modified: Wed, 25 Oct 2017 15:23:15 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb43d762a5af0374873c0bc68901e02f7c83d02b4ebdae99d485410a660fc8f6`  
		Last Modified: Wed, 25 Oct 2017 15:23:20 GMT  
		Size: 22.4 MB (22404277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c9afc36893e883815e6b4c372c6458b0eb3bd186d63852d886f43db1f783b0`  
		Last Modified: Wed, 25 Oct 2017 15:23:16 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58f4ce28c4fa5c760097911f724bde013182554de989f2837fe4dbb626c49aa`  
		Last Modified: Wed, 25 Oct 2017 15:23:13 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84921a80c0902398c1632a63e36ef711ef00d6f0d5b7434de476a3bccbea7c3`  
		Last Modified: Wed, 25 Oct 2017 15:23:13 GMT  
		Size: 1.5 KB (1454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3e437895c900bc6fcb4271c86ca14bb6e74759da3db1ac3903e728592233a5`  
		Last Modified: Wed, 25 Oct 2017 15:23:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1195449c2525cb65841b0f4fb70d129a4b2544766ad614814d38acf25f01d806`  
		Last Modified: Wed, 25 Oct 2017 19:19:25 GMT  
		Size: 52.7 MB (52718329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245cd97663ca63280a9a28e25af5e969833cbc4fc7831d191fdd4eb0dc8ef8a8`  
		Last Modified: Wed, 25 Oct 2017 19:19:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
