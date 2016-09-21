## `cassandra:latest`

```console
$ docker pull cassandra@sha256:bea66ab70f99183e5c7d293584afb8d0556b9ae14ca971a16f450f76115a7764
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161308357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b120a57b27eb1a35870a2c5695eef5e957f8b4af0a9a2a7931bcc70fb7c0ec7c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 20 Sep 2016 01:02:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Sep 2016 01:02:58 GMT
ENV GOSU_VERSION=1.7
# Tue, 20 Sep 2016 01:03:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Sep 2016 01:03:30 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Tue, 20 Sep 2016 01:05:02 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 37x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 20 Sep 2016 01:05:02 GMT
ENV CASSANDRA_VERSION=3.7
# Tue, 20 Sep 2016 01:05:59 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 01:06:00 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 20 Sep 2016 01:06:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Sep 2016 01:06:01 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 20 Sep 2016 01:06:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 01:06:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Sep 2016 01:06:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Sep 2016 01:06:02 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Sep 2016 01:06:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ea2cb67634c24946bc8194aa01a307e493050d0529a87c11dee6064d8e9883`  
		Last Modified: Mon, 19 Sep 2016 17:45:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af53b1d2afc9ab35a7b08d012288c626927361dd982557e573f1a82f6d4ade76`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b51d480aaaee4e21e125e10b0dcefd80e43feebf5cd0d725e459b5659a9a7`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 1.2 MB (1216319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe5291c7c468ded393a57cb15be0365f506f4f9864356f6c4237bdb388addc`  
		Last Modified: Wed, 21 Sep 2016 22:41:25 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80299d79121273b94eba585498947df986f99ae6e10803ff3bd98e2ad2601438`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d07a9b4ffb843ac0e25654006dec5d4701b658b2866c3f6ce940cd01cd7b3`  
		Last Modified: Wed, 21 Sep 2016 22:44:20 GMT  
		Size: 108.7 MB (108700380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb5731018bc99618bb43bce01a1061876d01ad5630eeae80966b2a9fb8b8005`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 4.3 KB (4282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd2c1c95a9494f285881090102bcf7e119bf3c64c71d80f800e7f9099eaa7db`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dee32f059764daee3773b262e24dce11795235d67445590df364405509d916`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 26.6 KB (26563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
