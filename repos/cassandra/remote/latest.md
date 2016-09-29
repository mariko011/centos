## `cassandra:latest`

```console
$ docker pull cassandra@sha256:bce66127d99ff99020f2c5370b585744c851df7a21b42e7843195a0b143b94e7
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161324730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25427f35326994e4ad6590e6f355b5b2e1b805ceaafe000d678154d7094d2e91`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:08:52 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 23 Sep 2016 18:30:08 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 23 Sep 2016 18:30:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 18:30:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Sep 2016 23:32:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 28 Sep 2016 23:32:04 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 28 Sep 2016 23:39:55 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 37x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 28 Sep 2016 23:39:55 GMT
ENV CASSANDRA_VERSION=3.7
# Wed, 28 Sep 2016 23:40:40 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 23:40:41 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 28 Sep 2016 23:40:42 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 28 Sep 2016 23:40:42 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 28 Sep 2016 23:40:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 23:40:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 28 Sep 2016 23:40:44 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Sep 2016 23:40:44 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 28 Sep 2016 23:40:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4c6575710bc50da5d4f58d23123f265c46466a6e93f03fd57fc56f746b9a3`  
		Last Modified: Fri, 23 Sep 2016 18:10:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8288e3be5a2925b92f9519314618e14f48da21a307cec51ef255d15286b3b50`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111f542073e14249cb5180c9d21cea686ebab9c08a3d3a243c3ddfd36de254f`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549cfb76ce69b18d4721486af1b093e3234254c0ee2be6e527eafc1be795dda`  
		Last Modified: Wed, 28 Sep 2016 23:40:55 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a375ee20c601751cc799fbb89027c38b3ab1534477f6fbf6dc2bf225a020a7a2`  
		Last Modified: Wed, 28 Sep 2016 23:43:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e678e60bfc4608008345f6076bc106325b972921352bc450577a96a7189270f`  
		Last Modified: Wed, 28 Sep 2016 23:43:57 GMT  
		Size: 108.7 MB (108701682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d5e7ed7dfcbd629747d3cafa2a1e5f7164a8e463899659a708edf333cfd7fa`  
		Last Modified: Wed, 28 Sep 2016 23:43:26 GMT  
		Size: 4.3 KB (4281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21015df69ccbf0aae457bed24c0aaabbf2fdd24c0bccbf06c65f5b36ab949254`  
		Last Modified: Wed, 28 Sep 2016 23:43:27 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b3a5d43f721f5e67cb57c05b21106ad6229382b00ce466f5ebf6b15164a686`  
		Last Modified: Wed, 28 Sep 2016 23:43:26 GMT  
		Size: 26.6 KB (26567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
