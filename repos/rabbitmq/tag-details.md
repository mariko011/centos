<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3.6.5`](#rabbitmq365)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:3.6.5-management`](#rabbitmq365-management)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:management`](#rabbitmqmanagement)

## `rabbitmq:3.6.5`

```console
$ docker pull rabbitmq@sha256:0eed7d52710144f2600b99d2a467d7444d86b0434b6a515f05bebd1049fd2bac
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86578160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a098963ca4baf4046832cd648ec82ffe028f2a98cc965215747cd30d2a725f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:49:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 09 Nov 2016 00:49:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:49:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:49:20 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Wed, 09 Nov 2016 00:49:21 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 09 Nov 2016 00:49:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:49:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 09 Nov 2016 00:49:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Nov 2016 00:49:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 09 Nov 2016 00:49:51 GMT
ENV RABBITMQ_VERSION=3.6.5
# Wed, 09 Nov 2016 00:49:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Wed, 09 Nov 2016 00:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:50:00 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:50:01 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Wed, 09 Nov 2016 00:50:01 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Nov 2016 00:50:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 09 Nov 2016 00:50:03 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Nov 2016 00:50:04 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 09 Nov 2016 00:50:05 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 09 Nov 2016 00:50:05 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/ 
# Wed, 09 Nov 2016 00:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 09 Nov 2016 00:50:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:50:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 09 Nov 2016 00:50:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105459adf0de9c232e7d4758f2e752717f202a11351fca0e171b832ecd7267b3`  
		Last Modified: Wed, 09 Nov 2016 00:50:27 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89780495455e48a38ac759998ce64550c596d2cfade98e774b99d1dab79d218b`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 1.2 MB (1216442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2805642edf93c69c7bbc20d7a8750488c8375c9337d66637f0654a89b1da66`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a44de4dc7c4ad7601d02c9aa9f1b1f7ee26ee6a87c0d9c9652d404527c0fa`  
		Last Modified: Wed, 09 Nov 2016 00:50:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a4ca36f09aba61e88812c7936bd649218fbfd15398c96f07b9b80e3eb3974`  
		Last Modified: Wed, 09 Nov 2016 00:50:29 GMT  
		Size: 27.7 MB (27721124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b553e2d1e045bdf8f2832039e8881746f3e47f40b1a6c38b9497ed866147c`  
		Last Modified: Wed, 09 Nov 2016 00:50:24 GMT  
		Size: 5.3 KB (5342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccbfc375103d005767ced6fa1e3444afc3ed3b41a234416d6d0d3f806b29c15`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedbe3a1ce7ede5f2b889971e0fe9074b5ece2128b38fb88fb8a7540c05455ae`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 6.3 MB (6265524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7c383c01903440aef56645edc6e6b07858fe23e74ab204828f7f3bf0cd01b5`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e91e1dd9bd4ed7e734fe0052fe7831de5346c57fd690ce4827e9161420b432`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.3 KB (2300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcc261abbb018dc4aeaf00bd82546889e9b6b64a46246532c001a718a95ccf1`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836b1b07e31f719f87644f95aec3905cb4d9963285dc3dcb24a206822e2a22e`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71e4a840548f31a9eff6ce3eb62ffe461837475dd256e82e51e3d233bfbf604`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351959f3a5442c75bf36beb516ebd6601abef4cdf5e7ce6b15b5898c703030d`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:0eed7d52710144f2600b99d2a467d7444d86b0434b6a515f05bebd1049fd2bac
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86578160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a098963ca4baf4046832cd648ec82ffe028f2a98cc965215747cd30d2a725f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:49:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 09 Nov 2016 00:49:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:49:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:49:20 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Wed, 09 Nov 2016 00:49:21 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 09 Nov 2016 00:49:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:49:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 09 Nov 2016 00:49:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Nov 2016 00:49:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 09 Nov 2016 00:49:51 GMT
ENV RABBITMQ_VERSION=3.6.5
# Wed, 09 Nov 2016 00:49:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Wed, 09 Nov 2016 00:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:50:00 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:50:01 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Wed, 09 Nov 2016 00:50:01 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Nov 2016 00:50:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 09 Nov 2016 00:50:03 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Nov 2016 00:50:04 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 09 Nov 2016 00:50:05 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 09 Nov 2016 00:50:05 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/ 
# Wed, 09 Nov 2016 00:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 09 Nov 2016 00:50:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:50:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 09 Nov 2016 00:50:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105459adf0de9c232e7d4758f2e752717f202a11351fca0e171b832ecd7267b3`  
		Last Modified: Wed, 09 Nov 2016 00:50:27 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89780495455e48a38ac759998ce64550c596d2cfade98e774b99d1dab79d218b`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 1.2 MB (1216442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2805642edf93c69c7bbc20d7a8750488c8375c9337d66637f0654a89b1da66`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a44de4dc7c4ad7601d02c9aa9f1b1f7ee26ee6a87c0d9c9652d404527c0fa`  
		Last Modified: Wed, 09 Nov 2016 00:50:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a4ca36f09aba61e88812c7936bd649218fbfd15398c96f07b9b80e3eb3974`  
		Last Modified: Wed, 09 Nov 2016 00:50:29 GMT  
		Size: 27.7 MB (27721124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b553e2d1e045bdf8f2832039e8881746f3e47f40b1a6c38b9497ed866147c`  
		Last Modified: Wed, 09 Nov 2016 00:50:24 GMT  
		Size: 5.3 KB (5342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccbfc375103d005767ced6fa1e3444afc3ed3b41a234416d6d0d3f806b29c15`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedbe3a1ce7ede5f2b889971e0fe9074b5ece2128b38fb88fb8a7540c05455ae`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 6.3 MB (6265524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7c383c01903440aef56645edc6e6b07858fe23e74ab204828f7f3bf0cd01b5`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e91e1dd9bd4ed7e734fe0052fe7831de5346c57fd690ce4827e9161420b432`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.3 KB (2300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcc261abbb018dc4aeaf00bd82546889e9b6b64a46246532c001a718a95ccf1`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836b1b07e31f719f87644f95aec3905cb4d9963285dc3dcb24a206822e2a22e`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71e4a840548f31a9eff6ce3eb62ffe461837475dd256e82e51e3d233bfbf604`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351959f3a5442c75bf36beb516ebd6601abef4cdf5e7ce6b15b5898c703030d`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:0eed7d52710144f2600b99d2a467d7444d86b0434b6a515f05bebd1049fd2bac
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86578160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a098963ca4baf4046832cd648ec82ffe028f2a98cc965215747cd30d2a725f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:49:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 09 Nov 2016 00:49:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:49:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:49:20 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Wed, 09 Nov 2016 00:49:21 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 09 Nov 2016 00:49:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:49:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 09 Nov 2016 00:49:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Nov 2016 00:49:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 09 Nov 2016 00:49:51 GMT
ENV RABBITMQ_VERSION=3.6.5
# Wed, 09 Nov 2016 00:49:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Wed, 09 Nov 2016 00:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:50:00 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:50:01 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Wed, 09 Nov 2016 00:50:01 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Nov 2016 00:50:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 09 Nov 2016 00:50:03 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Nov 2016 00:50:04 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 09 Nov 2016 00:50:05 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 09 Nov 2016 00:50:05 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/ 
# Wed, 09 Nov 2016 00:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 09 Nov 2016 00:50:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:50:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 09 Nov 2016 00:50:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105459adf0de9c232e7d4758f2e752717f202a11351fca0e171b832ecd7267b3`  
		Last Modified: Wed, 09 Nov 2016 00:50:27 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89780495455e48a38ac759998ce64550c596d2cfade98e774b99d1dab79d218b`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 1.2 MB (1216442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2805642edf93c69c7bbc20d7a8750488c8375c9337d66637f0654a89b1da66`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a44de4dc7c4ad7601d02c9aa9f1b1f7ee26ee6a87c0d9c9652d404527c0fa`  
		Last Modified: Wed, 09 Nov 2016 00:50:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a4ca36f09aba61e88812c7936bd649218fbfd15398c96f07b9b80e3eb3974`  
		Last Modified: Wed, 09 Nov 2016 00:50:29 GMT  
		Size: 27.7 MB (27721124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b553e2d1e045bdf8f2832039e8881746f3e47f40b1a6c38b9497ed866147c`  
		Last Modified: Wed, 09 Nov 2016 00:50:24 GMT  
		Size: 5.3 KB (5342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccbfc375103d005767ced6fa1e3444afc3ed3b41a234416d6d0d3f806b29c15`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedbe3a1ce7ede5f2b889971e0fe9074b5ece2128b38fb88fb8a7540c05455ae`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 6.3 MB (6265524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7c383c01903440aef56645edc6e6b07858fe23e74ab204828f7f3bf0cd01b5`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e91e1dd9bd4ed7e734fe0052fe7831de5346c57fd690ce4827e9161420b432`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.3 KB (2300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcc261abbb018dc4aeaf00bd82546889e9b6b64a46246532c001a718a95ccf1`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836b1b07e31f719f87644f95aec3905cb4d9963285dc3dcb24a206822e2a22e`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71e4a840548f31a9eff6ce3eb62ffe461837475dd256e82e51e3d233bfbf604`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351959f3a5442c75bf36beb516ebd6601abef4cdf5e7ce6b15b5898c703030d`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:0eed7d52710144f2600b99d2a467d7444d86b0434b6a515f05bebd1049fd2bac
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86578160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a098963ca4baf4046832cd648ec82ffe028f2a98cc965215747cd30d2a725f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:49:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 09 Nov 2016 00:49:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:49:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:49:20 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Wed, 09 Nov 2016 00:49:21 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 09 Nov 2016 00:49:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:49:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 09 Nov 2016 00:49:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Nov 2016 00:49:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 09 Nov 2016 00:49:51 GMT
ENV RABBITMQ_VERSION=3.6.5
# Wed, 09 Nov 2016 00:49:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Wed, 09 Nov 2016 00:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:50:00 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:50:01 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Wed, 09 Nov 2016 00:50:01 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Nov 2016 00:50:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 09 Nov 2016 00:50:03 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Nov 2016 00:50:04 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 09 Nov 2016 00:50:05 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 09 Nov 2016 00:50:05 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/ 
# Wed, 09 Nov 2016 00:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 09 Nov 2016 00:50:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:50:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 09 Nov 2016 00:50:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105459adf0de9c232e7d4758f2e752717f202a11351fca0e171b832ecd7267b3`  
		Last Modified: Wed, 09 Nov 2016 00:50:27 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89780495455e48a38ac759998ce64550c596d2cfade98e774b99d1dab79d218b`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 1.2 MB (1216442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2805642edf93c69c7bbc20d7a8750488c8375c9337d66637f0654a89b1da66`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a44de4dc7c4ad7601d02c9aa9f1b1f7ee26ee6a87c0d9c9652d404527c0fa`  
		Last Modified: Wed, 09 Nov 2016 00:50:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a4ca36f09aba61e88812c7936bd649218fbfd15398c96f07b9b80e3eb3974`  
		Last Modified: Wed, 09 Nov 2016 00:50:29 GMT  
		Size: 27.7 MB (27721124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b553e2d1e045bdf8f2832039e8881746f3e47f40b1a6c38b9497ed866147c`  
		Last Modified: Wed, 09 Nov 2016 00:50:24 GMT  
		Size: 5.3 KB (5342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccbfc375103d005767ced6fa1e3444afc3ed3b41a234416d6d0d3f806b29c15`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedbe3a1ce7ede5f2b889971e0fe9074b5ece2128b38fb88fb8a7540c05455ae`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 6.3 MB (6265524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7c383c01903440aef56645edc6e6b07858fe23e74ab204828f7f3bf0cd01b5`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e91e1dd9bd4ed7e734fe0052fe7831de5346c57fd690ce4827e9161420b432`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.3 KB (2300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcc261abbb018dc4aeaf00bd82546889e9b6b64a46246532c001a718a95ccf1`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836b1b07e31f719f87644f95aec3905cb4d9963285dc3dcb24a206822e2a22e`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71e4a840548f31a9eff6ce3eb62ffe461837475dd256e82e51e3d233bfbf604`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351959f3a5442c75bf36beb516ebd6601abef4cdf5e7ce6b15b5898c703030d`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.5-management`

```console
$ docker pull rabbitmq@sha256:880e42b14b26a37c19c0f821a10ea1aeb92ad272f60ed2f007b177d190a6cb1e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.5-management` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86578346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5335b737c38052271dcfe6277287cb47fb82d0d18d940c742471c980f5500710`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:49:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 09 Nov 2016 00:49:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:49:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:49:20 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Wed, 09 Nov 2016 00:49:21 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 09 Nov 2016 00:49:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:49:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 09 Nov 2016 00:49:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Nov 2016 00:49:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 09 Nov 2016 00:49:51 GMT
ENV RABBITMQ_VERSION=3.6.5
# Wed, 09 Nov 2016 00:49:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Wed, 09 Nov 2016 00:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:50:00 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:50:01 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Wed, 09 Nov 2016 00:50:01 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Nov 2016 00:50:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 09 Nov 2016 00:50:03 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Nov 2016 00:50:04 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 09 Nov 2016 00:50:05 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 09 Nov 2016 00:50:05 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/ 
# Wed, 09 Nov 2016 00:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 09 Nov 2016 00:50:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:50:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 09 Nov 2016 00:50:08 GMT
CMD ["rabbitmq-server"]
# Wed, 09 Nov 2016 00:51:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 09 Nov 2016 00:51:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105459adf0de9c232e7d4758f2e752717f202a11351fca0e171b832ecd7267b3`  
		Last Modified: Wed, 09 Nov 2016 00:50:27 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89780495455e48a38ac759998ce64550c596d2cfade98e774b99d1dab79d218b`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 1.2 MB (1216442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2805642edf93c69c7bbc20d7a8750488c8375c9337d66637f0654a89b1da66`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a44de4dc7c4ad7601d02c9aa9f1b1f7ee26ee6a87c0d9c9652d404527c0fa`  
		Last Modified: Wed, 09 Nov 2016 00:50:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a4ca36f09aba61e88812c7936bd649218fbfd15398c96f07b9b80e3eb3974`  
		Last Modified: Wed, 09 Nov 2016 00:50:29 GMT  
		Size: 27.7 MB (27721124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b553e2d1e045bdf8f2832039e8881746f3e47f40b1a6c38b9497ed866147c`  
		Last Modified: Wed, 09 Nov 2016 00:50:24 GMT  
		Size: 5.3 KB (5342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccbfc375103d005767ced6fa1e3444afc3ed3b41a234416d6d0d3f806b29c15`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedbe3a1ce7ede5f2b889971e0fe9074b5ece2128b38fb88fb8a7540c05455ae`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 6.3 MB (6265524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7c383c01903440aef56645edc6e6b07858fe23e74ab204828f7f3bf0cd01b5`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e91e1dd9bd4ed7e734fe0052fe7831de5346c57fd690ce4827e9161420b432`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.3 KB (2300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcc261abbb018dc4aeaf00bd82546889e9b6b64a46246532c001a718a95ccf1`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836b1b07e31f719f87644f95aec3905cb4d9963285dc3dcb24a206822e2a22e`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71e4a840548f31a9eff6ce3eb62ffe461837475dd256e82e51e3d233bfbf604`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351959f3a5442c75bf36beb516ebd6601abef4cdf5e7ce6b15b5898c703030d`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfb522ead96155b268d102f3a9d8c8312bcfb9776f3a7493aaff13417178be`  
		Last Modified: Wed, 09 Nov 2016 00:51:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:880e42b14b26a37c19c0f821a10ea1aeb92ad272f60ed2f007b177d190a6cb1e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86578346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5335b737c38052271dcfe6277287cb47fb82d0d18d940c742471c980f5500710`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:49:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 09 Nov 2016 00:49:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:49:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:49:20 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Wed, 09 Nov 2016 00:49:21 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 09 Nov 2016 00:49:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:49:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 09 Nov 2016 00:49:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Nov 2016 00:49:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 09 Nov 2016 00:49:51 GMT
ENV RABBITMQ_VERSION=3.6.5
# Wed, 09 Nov 2016 00:49:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Wed, 09 Nov 2016 00:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:50:00 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:50:01 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Wed, 09 Nov 2016 00:50:01 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Nov 2016 00:50:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 09 Nov 2016 00:50:03 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Nov 2016 00:50:04 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 09 Nov 2016 00:50:05 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 09 Nov 2016 00:50:05 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/ 
# Wed, 09 Nov 2016 00:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 09 Nov 2016 00:50:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:50:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 09 Nov 2016 00:50:08 GMT
CMD ["rabbitmq-server"]
# Wed, 09 Nov 2016 00:51:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 09 Nov 2016 00:51:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105459adf0de9c232e7d4758f2e752717f202a11351fca0e171b832ecd7267b3`  
		Last Modified: Wed, 09 Nov 2016 00:50:27 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89780495455e48a38ac759998ce64550c596d2cfade98e774b99d1dab79d218b`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 1.2 MB (1216442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2805642edf93c69c7bbc20d7a8750488c8375c9337d66637f0654a89b1da66`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a44de4dc7c4ad7601d02c9aa9f1b1f7ee26ee6a87c0d9c9652d404527c0fa`  
		Last Modified: Wed, 09 Nov 2016 00:50:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a4ca36f09aba61e88812c7936bd649218fbfd15398c96f07b9b80e3eb3974`  
		Last Modified: Wed, 09 Nov 2016 00:50:29 GMT  
		Size: 27.7 MB (27721124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b553e2d1e045bdf8f2832039e8881746f3e47f40b1a6c38b9497ed866147c`  
		Last Modified: Wed, 09 Nov 2016 00:50:24 GMT  
		Size: 5.3 KB (5342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccbfc375103d005767ced6fa1e3444afc3ed3b41a234416d6d0d3f806b29c15`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedbe3a1ce7ede5f2b889971e0fe9074b5ece2128b38fb88fb8a7540c05455ae`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 6.3 MB (6265524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7c383c01903440aef56645edc6e6b07858fe23e74ab204828f7f3bf0cd01b5`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e91e1dd9bd4ed7e734fe0052fe7831de5346c57fd690ce4827e9161420b432`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.3 KB (2300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcc261abbb018dc4aeaf00bd82546889e9b6b64a46246532c001a718a95ccf1`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836b1b07e31f719f87644f95aec3905cb4d9963285dc3dcb24a206822e2a22e`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71e4a840548f31a9eff6ce3eb62ffe461837475dd256e82e51e3d233bfbf604`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351959f3a5442c75bf36beb516ebd6601abef4cdf5e7ce6b15b5898c703030d`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfb522ead96155b268d102f3a9d8c8312bcfb9776f3a7493aaff13417178be`  
		Last Modified: Wed, 09 Nov 2016 00:51:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:880e42b14b26a37c19c0f821a10ea1aeb92ad272f60ed2f007b177d190a6cb1e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86578346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5335b737c38052271dcfe6277287cb47fb82d0d18d940c742471c980f5500710`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:49:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 09 Nov 2016 00:49:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:49:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:49:20 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Wed, 09 Nov 2016 00:49:21 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 09 Nov 2016 00:49:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:49:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 09 Nov 2016 00:49:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Nov 2016 00:49:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 09 Nov 2016 00:49:51 GMT
ENV RABBITMQ_VERSION=3.6.5
# Wed, 09 Nov 2016 00:49:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Wed, 09 Nov 2016 00:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:50:00 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:50:01 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Wed, 09 Nov 2016 00:50:01 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Nov 2016 00:50:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 09 Nov 2016 00:50:03 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Nov 2016 00:50:04 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 09 Nov 2016 00:50:05 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 09 Nov 2016 00:50:05 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/ 
# Wed, 09 Nov 2016 00:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 09 Nov 2016 00:50:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:50:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 09 Nov 2016 00:50:08 GMT
CMD ["rabbitmq-server"]
# Wed, 09 Nov 2016 00:51:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 09 Nov 2016 00:51:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105459adf0de9c232e7d4758f2e752717f202a11351fca0e171b832ecd7267b3`  
		Last Modified: Wed, 09 Nov 2016 00:50:27 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89780495455e48a38ac759998ce64550c596d2cfade98e774b99d1dab79d218b`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 1.2 MB (1216442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2805642edf93c69c7bbc20d7a8750488c8375c9337d66637f0654a89b1da66`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a44de4dc7c4ad7601d02c9aa9f1b1f7ee26ee6a87c0d9c9652d404527c0fa`  
		Last Modified: Wed, 09 Nov 2016 00:50:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a4ca36f09aba61e88812c7936bd649218fbfd15398c96f07b9b80e3eb3974`  
		Last Modified: Wed, 09 Nov 2016 00:50:29 GMT  
		Size: 27.7 MB (27721124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b553e2d1e045bdf8f2832039e8881746f3e47f40b1a6c38b9497ed866147c`  
		Last Modified: Wed, 09 Nov 2016 00:50:24 GMT  
		Size: 5.3 KB (5342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccbfc375103d005767ced6fa1e3444afc3ed3b41a234416d6d0d3f806b29c15`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedbe3a1ce7ede5f2b889971e0fe9074b5ece2128b38fb88fb8a7540c05455ae`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 6.3 MB (6265524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7c383c01903440aef56645edc6e6b07858fe23e74ab204828f7f3bf0cd01b5`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e91e1dd9bd4ed7e734fe0052fe7831de5346c57fd690ce4827e9161420b432`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.3 KB (2300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcc261abbb018dc4aeaf00bd82546889e9b6b64a46246532c001a718a95ccf1`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836b1b07e31f719f87644f95aec3905cb4d9963285dc3dcb24a206822e2a22e`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71e4a840548f31a9eff6ce3eb62ffe461837475dd256e82e51e3d233bfbf604`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351959f3a5442c75bf36beb516ebd6601abef4cdf5e7ce6b15b5898c703030d`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfb522ead96155b268d102f3a9d8c8312bcfb9776f3a7493aaff13417178be`  
		Last Modified: Wed, 09 Nov 2016 00:51:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:880e42b14b26a37c19c0f821a10ea1aeb92ad272f60ed2f007b177d190a6cb1e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86578346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5335b737c38052271dcfe6277287cb47fb82d0d18d940c742471c980f5500710`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:49:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 09 Nov 2016 00:49:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:49:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:49:20 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Wed, 09 Nov 2016 00:49:21 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 09 Nov 2016 00:49:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:49:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 09 Nov 2016 00:49:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Nov 2016 00:49:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 09 Nov 2016 00:49:51 GMT
ENV RABBITMQ_VERSION=3.6.5
# Wed, 09 Nov 2016 00:49:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Wed, 09 Nov 2016 00:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:50:00 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:50:01 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Wed, 09 Nov 2016 00:50:01 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Nov 2016 00:50:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 09 Nov 2016 00:50:03 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Nov 2016 00:50:04 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 09 Nov 2016 00:50:05 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 09 Nov 2016 00:50:05 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/ 
# Wed, 09 Nov 2016 00:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 09 Nov 2016 00:50:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:50:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 09 Nov 2016 00:50:08 GMT
CMD ["rabbitmq-server"]
# Wed, 09 Nov 2016 00:51:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 09 Nov 2016 00:51:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105459adf0de9c232e7d4758f2e752717f202a11351fca0e171b832ecd7267b3`  
		Last Modified: Wed, 09 Nov 2016 00:50:27 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89780495455e48a38ac759998ce64550c596d2cfade98e774b99d1dab79d218b`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 1.2 MB (1216442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2805642edf93c69c7bbc20d7a8750488c8375c9337d66637f0654a89b1da66`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a44de4dc7c4ad7601d02c9aa9f1b1f7ee26ee6a87c0d9c9652d404527c0fa`  
		Last Modified: Wed, 09 Nov 2016 00:50:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a4ca36f09aba61e88812c7936bd649218fbfd15398c96f07b9b80e3eb3974`  
		Last Modified: Wed, 09 Nov 2016 00:50:29 GMT  
		Size: 27.7 MB (27721124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b553e2d1e045bdf8f2832039e8881746f3e47f40b1a6c38b9497ed866147c`  
		Last Modified: Wed, 09 Nov 2016 00:50:24 GMT  
		Size: 5.3 KB (5342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccbfc375103d005767ced6fa1e3444afc3ed3b41a234416d6d0d3f806b29c15`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedbe3a1ce7ede5f2b889971e0fe9074b5ece2128b38fb88fb8a7540c05455ae`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 6.3 MB (6265524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7c383c01903440aef56645edc6e6b07858fe23e74ab204828f7f3bf0cd01b5`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e91e1dd9bd4ed7e734fe0052fe7831de5346c57fd690ce4827e9161420b432`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.3 KB (2300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcc261abbb018dc4aeaf00bd82546889e9b6b64a46246532c001a718a95ccf1`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836b1b07e31f719f87644f95aec3905cb4d9963285dc3dcb24a206822e2a22e`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71e4a840548f31a9eff6ce3eb62ffe461837475dd256e82e51e3d233bfbf604`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351959f3a5442c75bf36beb516ebd6601abef4cdf5e7ce6b15b5898c703030d`  
		Last Modified: Wed, 09 Nov 2016 00:50:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfb522ead96155b268d102f3a9d8c8312bcfb9776f3a7493aaff13417178be`  
		Last Modified: Wed, 09 Nov 2016 00:51:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
