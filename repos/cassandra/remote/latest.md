## `cassandra:latest`

```console
$ docker pull cassandra@sha256:c5e7e2812617891f13bdd2c6d844f2f1857c9a75a4c5b01b4b526e8f7be4f575
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162702286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8d2f08b8d8cde6a3d317cc386e958a3d0f4406008a5e054e97853f8d273bed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 27 Feb 2017 22:44:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 27 Feb 2017 22:44:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 27 Feb 2017 22:45:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 27 Feb 2017 22:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:45:07 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 27 Feb 2017 22:45:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 27 Feb 2017 22:45:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 27 Feb 2017 22:47:15 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 27 Feb 2017 22:47:15 GMT
ENV CASSANDRA_VERSION=3.10
# Mon, 27 Feb 2017 22:47:50 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:47:51 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 27 Feb 2017 22:47:52 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 27 Feb 2017 22:47:52 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 27 Feb 2017 22:47:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 22:47:53 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 27 Feb 2017 22:47:54 GMT
VOLUME [/var/lib/cassandra]
# Mon, 27 Feb 2017 22:47:54 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 27 Feb 2017 22:47:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90127421de77945e14cdf88ceb1fab6b0207a5d58f21597bcb42d59766e270`  
		Last Modified: Wed, 01 Mar 2017 22:47:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7062d88fe3278ee31e139a1ae4360a2c256fcdf9f27135a434f9b791c0fc899`  
		Last Modified: Wed, 01 Mar 2017 22:47:13 GMT  
		Size: 1.2 MB (1216859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61435d1a80f412facb46191efcd6d442111490ccf7dc1bb1b5df2321a5cd69a`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 173.7 KB (173694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87acc16504aca64444dba527620872464d3ee69db61a04c6d881e6a8fb51328b`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b3274ccbb0e6d050043f93e4179164c7cec717e2e49383b861f615491f78`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 18.2 KB (18215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b764081cab57e60916776c3dc704e03bab4477a78febbd95308b7f2eb17f2a`  
		Last Modified: Wed, 01 Mar 2017 22:50:47 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ced173e9de0428a146340f807e8ef17380c16a3a763f4238c69a8884331b433`  
		Last Modified: Wed, 01 Mar 2017 22:51:12 GMT  
		Size: 109.9 MB (109893956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a00879cdf0e797fb4393a78f4b531334d433d8b466bb84bd8c75b146100672`  
		Last Modified: Wed, 01 Mar 2017 22:50:47 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137d97843536ad082523819ff3f3f25025fb47c9123e4c3ef48bfe5c02b3d8a7`  
		Last Modified: Wed, 01 Mar 2017 22:50:48 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c58f35b527354826089747e92a15d5adaf264937ae85ade53f41cbcdab7f1ab`  
		Last Modified: Wed, 01 Mar 2017 22:50:47 GMT  
		Size: 28.3 KB (28343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
