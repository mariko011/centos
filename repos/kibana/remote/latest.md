## `kibana:latest`

```console
$ docker pull kibana@sha256:b4734a9db251060e8d931b6ff34772be1abc97b0b2905efbe278add7f68a88f2
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127209704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b5ca7f5040fd6cb602ae60a97e9e56cc6ff2bc5a99b7d7927cf5d000e32382`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:07:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 26 Jul 2017 06:08:00 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:08:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 06:08:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Jul 2017 06:08:04 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 26 Jul 2017 06:08:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 26 Jul 2017 06:08:11 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:08:11 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 26 Jul 2017 20:29:16 GMT
ENV KIBANA_VERSION=5.5.1
# Wed, 26 Jul 2017 20:29:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 26 Jul 2017 20:29:51 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 20:29:52 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 26 Jul 2017 20:29:52 GMT
EXPOSE 5601/tcp
# Wed, 26 Jul 2017 20:29:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Jul 2017 20:29:53 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1b60b10957a8bcc303f2478a5fd62fa4095de66921068981d818ec730480ea`  
		Last Modified: Wed, 26 Jul 2017 06:09:55 GMT  
		Size: 4.4 KB (4378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd86461ff011771b83a363f6579228da4bf04fd29eecab22a06e2da75b22c6e5`  
		Last Modified: Wed, 26 Jul 2017 06:09:59 GMT  
		Size: 22.4 MB (22403522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9603c57310aa3b65737091bdbd604c652950ed90b1790b43ac7c148f46c8786`  
		Last Modified: Wed, 26 Jul 2017 06:09:53 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee47cf52c4de9225b9179619077feb305a09e15b759ad78ebc2faa3b5a2789`  
		Last Modified: Wed, 26 Jul 2017 06:09:53 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f2321c45aef600b16f14b159baea9a8ddb9577b2b44e06c0d4af004cf72c7`  
		Last Modified: Wed, 26 Jul 2017 06:09:53 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc4c5b73727413c8c37fabbaa1dff328b617bff8b8a94c71c61d207e28cfe2`  
		Last Modified: Wed, 26 Jul 2017 06:09:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ccaa5a08eeec91ebb9f03751dc603e6ca1d978c97e36753e7f0e1b6422e8fd`  
		Last Modified: Wed, 26 Jul 2017 20:30:42 GMT  
		Size: 51.7 MB (51686214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4486c59c2d4c135558c06f5b78fc0f92857b78d49de24bab7736e8eb6bc32031`  
		Last Modified: Wed, 26 Jul 2017 20:30:29 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
