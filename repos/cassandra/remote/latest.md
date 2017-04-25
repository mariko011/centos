## `cassandra:latest`

```console
$ docker pull cassandra@sha256:f1bb633b9fc0b930a05980004bd772c18521987df4f34bece90c92e539094b69
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164888820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb1818bd3b0333aeeff586326f9115f9f4fbc586a5648dfb6c6052f846b18c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:21:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 24 Apr 2017 20:01:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 24 Apr 2017 20:01:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 20:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 20:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:01:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 24 Apr 2017 20:01:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 24 Apr 2017 20:01:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 20:05:24 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 24 Apr 2017 20:05:25 GMT
ENV CASSANDRA_VERSION=3.10
# Mon, 24 Apr 2017 20:06:14 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:06:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 24 Apr 2017 20:06:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 24 Apr 2017 20:06:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 24 Apr 2017 20:06:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 20:06:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 24 Apr 2017 20:06:20 GMT
VOLUME [/var/lib/cassandra]
# Mon, 24 Apr 2017 20:06:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 24 Apr 2017 20:06:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01bb42cce878d40beda38545b668a6751bc812305e2168de4d55516087c454d`  
		Last Modified: Mon, 24 Apr 2017 19:33:53 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c29d84dddd8133e6d081da4a2a3ab2ae2793aad9b3444850af4c03b7fcb6a13`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a47e062f3b9773c28d08fac6c9649249414a4ef7c0e1fd62f3fb3831b92d8f`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 1.3 MB (1308203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9de956459abb79eb7ca2d24d69505af40ac05cfd69f592eff64145921104fa`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 177.5 KB (177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aceaa518c783ceb928970c9bbedd9e8b7358bc43ce0aa10b50e8bb98b59aa2`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82210922fae433aea790aff0d95c2840d12b5b7893b12700767fc7cadaecb10`  
		Last Modified: Mon, 24 Apr 2017 23:57:32 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020154f6f049c04d21cf635a211ae7a2d44a328512373188c26dd7b36a76b30f`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae00c45696a576d56e72459feb0a2426ae0d96a46422fb2eb401eaf1d27ab69`  
		Last Modified: Tue, 25 Apr 2017 00:01:16 GMT  
		Size: 110.8 MB (110798377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1df969de0e337c2b79d0de04fe9b97bcc7fee860e09ca997ae5b71e14360aa`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2107f408122f6a1225f6f83289a0cb984d6991deb6a1435df048ac80b3d1a3a6`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9003511416b6e42d7f15fae02a3f4174dffebd11ea9b3abf37a2b7193c51ff89`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 28.4 KB (28378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
