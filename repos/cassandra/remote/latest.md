## `cassandra:latest`

```console
$ docker pull cassandra@sha256:d593202e05cb566996dd4efe436f1d07790a77b1d67ff2c8da1e1213d31edfa6
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161769211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a552f6550254e19928bf364e094700e7f878af46111d0e8c3abd28cd20813368`
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
# Wed, 05 Oct 2016 20:10:41 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 05 Oct 2016 20:10:42 GMT
ENV CASSANDRA_VERSION=3.9
# Wed, 05 Oct 2016 20:11:21 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Oct 2016 20:11:23 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 05 Oct 2016 20:11:23 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 05 Oct 2016 20:11:24 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 05 Oct 2016 20:11:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:11:25 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 05 Oct 2016 20:11:25 GMT
VOLUME [/var/lib/cassandra]
# Wed, 05 Oct 2016 20:11:26 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 05 Oct 2016 20:11:26 GMT
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
	-	`sha256:0b08c8bf2faf6a47b4b5158ad9b5bcbf53453657fa9306ca76f620dc3378d61c`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fe08da8b46b0810d43735dfcf757379a4ff271ab871c001d6a44f19765900d`  
		Last Modified: Wed, 05 Oct 2016 20:15:42 GMT  
		Size: 109.1 MB (109145348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92992ea163cd493dbb2aaf395aa407fa83d592cd311410e9933fee633e95db75`  
		Last Modified: Wed, 05 Oct 2016 20:15:22 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f182c20c76fef8cf989a532df4c3362e4d52f32c9414e6fff6cf950197c5273b`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffb98ed69bada5ba76da8c5529e4e85d790e69061abfa87b1723ec0588d486c`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 27.3 KB (27269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
