## `cassandra:latest`

```console
$ docker pull cassandra@sha256:ee74dfe2278a7b31dead213a804673d31f38238daef407928dde19e018ef5752
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161964365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813f4d0ccb4c8e31b1017ec2878b0db60f0fb12082a49f27a66a10d81c1571a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 13 Dec 2016 23:02:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 13 Dec 2016 23:02:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 13 Dec 2016 23:02:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 13 Dec 2016 23:02:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:31 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 13 Dec 2016 23:02:35 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 13 Dec 2016 23:04:19 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 13 Dec 2016 23:04:19 GMT
ENV CASSANDRA_VERSION=3.9
# Tue, 13 Dec 2016 23:04:54 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:04:55 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 13 Dec 2016 23:04:56 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 13 Dec 2016 23:04:56 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 13 Dec 2016 23:04:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:04:57 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 13 Dec 2016 23:04:58 GMT
VOLUME [/var/lib/cassandra]
# Tue, 13 Dec 2016 23:04:58 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 13 Dec 2016 23:04:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f726dd12d5bb997401801cf4cbe0130661cb5867b9990a0bcfdb15380fd59`  
		Last Modified: Mon, 19 Dec 2016 18:10:08 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b766f86087a7130baab4f2e7bc91941b9eebec493731ea81fc4444997ab286c9`  
		Last Modified: Mon, 19 Dec 2016 18:10:11 GMT  
		Size: 1.2 MB (1216947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7619f1fd7136e5e4c4fb063118a26443151ed6d13822f9f8a84498bc77d4378`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 173.8 KB (173771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d93d1e4ebba8821f89214ae10c927d124232befa337a3c54b03ac7b2ee7ad94`  
		Last Modified: Mon, 19 Dec 2016 18:10:07 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e714b632acd625d1303dbd2fe93bf3fe8d977e61e9fbc09d9f192f5e2dc3747f`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277f5301a572d4317a73b9438d9e97350bcd9584a7939f7f95f09c6790eac0c3`  
		Last Modified: Mon, 19 Dec 2016 18:13:54 GMT  
		Size: 109.2 MB (109157365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a907682b9ca9eaded82a1cd9bbd729b20123b70e3becb8c5c8fc6c0837061d12`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926564adafe99cd873e54d0fe3c4d92f5ac2f9c12533643eec7db80c4c342634`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4340a76a9458c0aa0a7bef40ae430db000356ec1626afd64463de240b99c897`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 27.3 KB (27265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
