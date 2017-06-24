<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3.6.10`](#rabbitmq3610)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:3.6.10-management`](#rabbitmq3610-management)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:3.6.10-alpine`](#rabbitmq3610-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:3.6.10-management-alpine`](#rabbitmq3610-management-alpine)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3.6.10`

```console
$ docker pull rabbitmq@sha256:68e8daa2f5c3db0d4ea93de0667814a2e21807cf2da53b83373f5a9a32eb5235
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62637652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fb6fc4d6ffffe65dbb24fd22405f9a289df447e34449b6e0fd128e0cdcd579`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:09:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 23 Jun 2017 05:09:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:09:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 05:09:39 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 23 Jun 2017 05:09:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 05:09:45 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 23 Jun 2017 05:09:46 GMT
ENV RABBITMQ_VERSION=3.6.10
# Fri, 23 Jun 2017 05:09:47 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Fri, 23 Jun 2017 05:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 05:09:54 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 23 Jun 2017 05:09:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 23 Jun 2017 05:09:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 23 Jun 2017 05:09:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 23 Jun 2017 05:10:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 23 Jun 2017 05:10:02 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:10:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 05:10:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:10:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 23 Jun 2017 05:10:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5391967c36ff32e20822e010e2a3307d9ac8a7f93f8cc4192e002c5976da81cd`  
		Last Modified: Sat, 24 Jun 2017 21:05:40 GMT  
		Size: 4.3 MB (4311766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d2e799d0df5825d6b5bf40962e922f78326977f4b287971ff7bfa87eb6de3`  
		Last Modified: Sat, 24 Jun 2017 21:05:39 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99074ba2b6d8db2526e1678e8ce49f9da0638274eb11fc9e9311e4325e587e31`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 952.7 KB (952668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77cecce51cef25f5c8f240f43f32b6cce7ca47aaff743d4a87ba958d7e14d10`  
		Last Modified: Sat, 24 Jun 2017 21:05:42 GMT  
		Size: 27.7 MB (27697759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e381a5c8d5a849c1f68f906b9fc04b17903258c77ba048626554c6ba60d6c884`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31bd0e6cc5feac7063d28375a48255c7dd25c42778f615e0dececa3c545f38d`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf17e7efd420da1477f49e8d00771b5167d0e4e5607f33edd4c731407b05213`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 7.2 MB (7160232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d0b7d7b6db6d1773e28fb344e016fd953ea37e09fc92af63c54e29a143976`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96be941057b8515b550a0d5e97b8c260c2042284d455e877a92e11565b1976b3`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78f74158ffe7964a4ec53d12eb4bb1393d1aacd5b9c7520dee35b66d34e424`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599042c234d388104280c2063e3b33670e1904c63e4f464d795807dadf8bcc9d`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 4.1 KB (4064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8f2d58865d5a33498a82fc49c84223da11534146196fd276fddf1a6a284725`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:68e8daa2f5c3db0d4ea93de0667814a2e21807cf2da53b83373f5a9a32eb5235
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62637652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fb6fc4d6ffffe65dbb24fd22405f9a289df447e34449b6e0fd128e0cdcd579`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:09:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 23 Jun 2017 05:09:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:09:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 05:09:39 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 23 Jun 2017 05:09:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 05:09:45 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 23 Jun 2017 05:09:46 GMT
ENV RABBITMQ_VERSION=3.6.10
# Fri, 23 Jun 2017 05:09:47 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Fri, 23 Jun 2017 05:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 05:09:54 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 23 Jun 2017 05:09:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 23 Jun 2017 05:09:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 23 Jun 2017 05:09:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 23 Jun 2017 05:10:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 23 Jun 2017 05:10:02 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:10:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 05:10:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:10:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 23 Jun 2017 05:10:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5391967c36ff32e20822e010e2a3307d9ac8a7f93f8cc4192e002c5976da81cd`  
		Last Modified: Sat, 24 Jun 2017 21:05:40 GMT  
		Size: 4.3 MB (4311766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d2e799d0df5825d6b5bf40962e922f78326977f4b287971ff7bfa87eb6de3`  
		Last Modified: Sat, 24 Jun 2017 21:05:39 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99074ba2b6d8db2526e1678e8ce49f9da0638274eb11fc9e9311e4325e587e31`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 952.7 KB (952668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77cecce51cef25f5c8f240f43f32b6cce7ca47aaff743d4a87ba958d7e14d10`  
		Last Modified: Sat, 24 Jun 2017 21:05:42 GMT  
		Size: 27.7 MB (27697759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e381a5c8d5a849c1f68f906b9fc04b17903258c77ba048626554c6ba60d6c884`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31bd0e6cc5feac7063d28375a48255c7dd25c42778f615e0dececa3c545f38d`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf17e7efd420da1477f49e8d00771b5167d0e4e5607f33edd4c731407b05213`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 7.2 MB (7160232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d0b7d7b6db6d1773e28fb344e016fd953ea37e09fc92af63c54e29a143976`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96be941057b8515b550a0d5e97b8c260c2042284d455e877a92e11565b1976b3`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78f74158ffe7964a4ec53d12eb4bb1393d1aacd5b9c7520dee35b66d34e424`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599042c234d388104280c2063e3b33670e1904c63e4f464d795807dadf8bcc9d`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 4.1 KB (4064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8f2d58865d5a33498a82fc49c84223da11534146196fd276fddf1a6a284725`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:68e8daa2f5c3db0d4ea93de0667814a2e21807cf2da53b83373f5a9a32eb5235
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62637652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fb6fc4d6ffffe65dbb24fd22405f9a289df447e34449b6e0fd128e0cdcd579`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:09:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 23 Jun 2017 05:09:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:09:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 05:09:39 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 23 Jun 2017 05:09:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 05:09:45 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 23 Jun 2017 05:09:46 GMT
ENV RABBITMQ_VERSION=3.6.10
# Fri, 23 Jun 2017 05:09:47 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Fri, 23 Jun 2017 05:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 05:09:54 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 23 Jun 2017 05:09:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 23 Jun 2017 05:09:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 23 Jun 2017 05:09:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 23 Jun 2017 05:10:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 23 Jun 2017 05:10:02 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:10:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 05:10:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:10:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 23 Jun 2017 05:10:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5391967c36ff32e20822e010e2a3307d9ac8a7f93f8cc4192e002c5976da81cd`  
		Last Modified: Sat, 24 Jun 2017 21:05:40 GMT  
		Size: 4.3 MB (4311766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d2e799d0df5825d6b5bf40962e922f78326977f4b287971ff7bfa87eb6de3`  
		Last Modified: Sat, 24 Jun 2017 21:05:39 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99074ba2b6d8db2526e1678e8ce49f9da0638274eb11fc9e9311e4325e587e31`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 952.7 KB (952668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77cecce51cef25f5c8f240f43f32b6cce7ca47aaff743d4a87ba958d7e14d10`  
		Last Modified: Sat, 24 Jun 2017 21:05:42 GMT  
		Size: 27.7 MB (27697759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e381a5c8d5a849c1f68f906b9fc04b17903258c77ba048626554c6ba60d6c884`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31bd0e6cc5feac7063d28375a48255c7dd25c42778f615e0dececa3c545f38d`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf17e7efd420da1477f49e8d00771b5167d0e4e5607f33edd4c731407b05213`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 7.2 MB (7160232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d0b7d7b6db6d1773e28fb344e016fd953ea37e09fc92af63c54e29a143976`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96be941057b8515b550a0d5e97b8c260c2042284d455e877a92e11565b1976b3`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78f74158ffe7964a4ec53d12eb4bb1393d1aacd5b9c7520dee35b66d34e424`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599042c234d388104280c2063e3b33670e1904c63e4f464d795807dadf8bcc9d`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 4.1 KB (4064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8f2d58865d5a33498a82fc49c84223da11534146196fd276fddf1a6a284725`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:68e8daa2f5c3db0d4ea93de0667814a2e21807cf2da53b83373f5a9a32eb5235
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62637652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fb6fc4d6ffffe65dbb24fd22405f9a289df447e34449b6e0fd128e0cdcd579`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:09:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 23 Jun 2017 05:09:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:09:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 05:09:39 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 23 Jun 2017 05:09:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 05:09:45 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 23 Jun 2017 05:09:46 GMT
ENV RABBITMQ_VERSION=3.6.10
# Fri, 23 Jun 2017 05:09:47 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Fri, 23 Jun 2017 05:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 05:09:54 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 23 Jun 2017 05:09:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 23 Jun 2017 05:09:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 23 Jun 2017 05:09:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 23 Jun 2017 05:10:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 23 Jun 2017 05:10:02 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:10:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 05:10:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:10:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 23 Jun 2017 05:10:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5391967c36ff32e20822e010e2a3307d9ac8a7f93f8cc4192e002c5976da81cd`  
		Last Modified: Sat, 24 Jun 2017 21:05:40 GMT  
		Size: 4.3 MB (4311766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d2e799d0df5825d6b5bf40962e922f78326977f4b287971ff7bfa87eb6de3`  
		Last Modified: Sat, 24 Jun 2017 21:05:39 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99074ba2b6d8db2526e1678e8ce49f9da0638274eb11fc9e9311e4325e587e31`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 952.7 KB (952668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77cecce51cef25f5c8f240f43f32b6cce7ca47aaff743d4a87ba958d7e14d10`  
		Last Modified: Sat, 24 Jun 2017 21:05:42 GMT  
		Size: 27.7 MB (27697759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e381a5c8d5a849c1f68f906b9fc04b17903258c77ba048626554c6ba60d6c884`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31bd0e6cc5feac7063d28375a48255c7dd25c42778f615e0dececa3c545f38d`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf17e7efd420da1477f49e8d00771b5167d0e4e5607f33edd4c731407b05213`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 7.2 MB (7160232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d0b7d7b6db6d1773e28fb344e016fd953ea37e09fc92af63c54e29a143976`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96be941057b8515b550a0d5e97b8c260c2042284d455e877a92e11565b1976b3`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78f74158ffe7964a4ec53d12eb4bb1393d1aacd5b9c7520dee35b66d34e424`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599042c234d388104280c2063e3b33670e1904c63e4f464d795807dadf8bcc9d`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 4.1 KB (4064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8f2d58865d5a33498a82fc49c84223da11534146196fd276fddf1a6a284725`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-management`

```console
$ docker pull rabbitmq@sha256:8bf289683cf00a7f0f02a9b7af2f3f42369d00921802a0c4aacc9d4a9283b20c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62637837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b213515f0048cb17f491a08720b9f122c45100cc2a70fac7fdd7adb444ddbe82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:09:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 23 Jun 2017 05:09:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:09:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 05:09:39 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 23 Jun 2017 05:09:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 05:09:45 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 23 Jun 2017 05:09:46 GMT
ENV RABBITMQ_VERSION=3.6.10
# Fri, 23 Jun 2017 05:09:47 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Fri, 23 Jun 2017 05:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 05:09:54 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 23 Jun 2017 05:09:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 23 Jun 2017 05:09:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 23 Jun 2017 05:09:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 23 Jun 2017 05:10:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 23 Jun 2017 05:10:02 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:10:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 05:10:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:10:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 23 Jun 2017 05:10:07 GMT
CMD ["rabbitmq-server"]
# Fri, 23 Jun 2017 05:10:35 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 23 Jun 2017 05:10:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5391967c36ff32e20822e010e2a3307d9ac8a7f93f8cc4192e002c5976da81cd`  
		Last Modified: Sat, 24 Jun 2017 21:05:40 GMT  
		Size: 4.3 MB (4311766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d2e799d0df5825d6b5bf40962e922f78326977f4b287971ff7bfa87eb6de3`  
		Last Modified: Sat, 24 Jun 2017 21:05:39 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99074ba2b6d8db2526e1678e8ce49f9da0638274eb11fc9e9311e4325e587e31`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 952.7 KB (952668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77cecce51cef25f5c8f240f43f32b6cce7ca47aaff743d4a87ba958d7e14d10`  
		Last Modified: Sat, 24 Jun 2017 21:05:42 GMT  
		Size: 27.7 MB (27697759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e381a5c8d5a849c1f68f906b9fc04b17903258c77ba048626554c6ba60d6c884`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31bd0e6cc5feac7063d28375a48255c7dd25c42778f615e0dececa3c545f38d`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf17e7efd420da1477f49e8d00771b5167d0e4e5607f33edd4c731407b05213`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 7.2 MB (7160232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d0b7d7b6db6d1773e28fb344e016fd953ea37e09fc92af63c54e29a143976`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96be941057b8515b550a0d5e97b8c260c2042284d455e877a92e11565b1976b3`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78f74158ffe7964a4ec53d12eb4bb1393d1aacd5b9c7520dee35b66d34e424`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599042c234d388104280c2063e3b33670e1904c63e4f464d795807dadf8bcc9d`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 4.1 KB (4064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8f2d58865d5a33498a82fc49c84223da11534146196fd276fddf1a6a284725`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d3d59f0d469ec3af71413ffa9d425c4fa4a436139fd250608be752f3d0478e`  
		Last Modified: Sat, 24 Jun 2017 21:07:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:8bf289683cf00a7f0f02a9b7af2f3f42369d00921802a0c4aacc9d4a9283b20c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62637837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b213515f0048cb17f491a08720b9f122c45100cc2a70fac7fdd7adb444ddbe82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:09:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 23 Jun 2017 05:09:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:09:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 05:09:39 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 23 Jun 2017 05:09:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 05:09:45 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 23 Jun 2017 05:09:46 GMT
ENV RABBITMQ_VERSION=3.6.10
# Fri, 23 Jun 2017 05:09:47 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Fri, 23 Jun 2017 05:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 05:09:54 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 23 Jun 2017 05:09:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 23 Jun 2017 05:09:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 23 Jun 2017 05:09:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 23 Jun 2017 05:10:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 23 Jun 2017 05:10:02 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:10:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 05:10:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:10:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 23 Jun 2017 05:10:07 GMT
CMD ["rabbitmq-server"]
# Fri, 23 Jun 2017 05:10:35 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 23 Jun 2017 05:10:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5391967c36ff32e20822e010e2a3307d9ac8a7f93f8cc4192e002c5976da81cd`  
		Last Modified: Sat, 24 Jun 2017 21:05:40 GMT  
		Size: 4.3 MB (4311766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d2e799d0df5825d6b5bf40962e922f78326977f4b287971ff7bfa87eb6de3`  
		Last Modified: Sat, 24 Jun 2017 21:05:39 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99074ba2b6d8db2526e1678e8ce49f9da0638274eb11fc9e9311e4325e587e31`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 952.7 KB (952668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77cecce51cef25f5c8f240f43f32b6cce7ca47aaff743d4a87ba958d7e14d10`  
		Last Modified: Sat, 24 Jun 2017 21:05:42 GMT  
		Size: 27.7 MB (27697759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e381a5c8d5a849c1f68f906b9fc04b17903258c77ba048626554c6ba60d6c884`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31bd0e6cc5feac7063d28375a48255c7dd25c42778f615e0dececa3c545f38d`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf17e7efd420da1477f49e8d00771b5167d0e4e5607f33edd4c731407b05213`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 7.2 MB (7160232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d0b7d7b6db6d1773e28fb344e016fd953ea37e09fc92af63c54e29a143976`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96be941057b8515b550a0d5e97b8c260c2042284d455e877a92e11565b1976b3`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78f74158ffe7964a4ec53d12eb4bb1393d1aacd5b9c7520dee35b66d34e424`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599042c234d388104280c2063e3b33670e1904c63e4f464d795807dadf8bcc9d`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 4.1 KB (4064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8f2d58865d5a33498a82fc49c84223da11534146196fd276fddf1a6a284725`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d3d59f0d469ec3af71413ffa9d425c4fa4a436139fd250608be752f3d0478e`  
		Last Modified: Sat, 24 Jun 2017 21:07:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:8bf289683cf00a7f0f02a9b7af2f3f42369d00921802a0c4aacc9d4a9283b20c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62637837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b213515f0048cb17f491a08720b9f122c45100cc2a70fac7fdd7adb444ddbe82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:09:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 23 Jun 2017 05:09:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:09:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 05:09:39 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 23 Jun 2017 05:09:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 05:09:45 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 23 Jun 2017 05:09:46 GMT
ENV RABBITMQ_VERSION=3.6.10
# Fri, 23 Jun 2017 05:09:47 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Fri, 23 Jun 2017 05:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 05:09:54 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 23 Jun 2017 05:09:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 23 Jun 2017 05:09:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 23 Jun 2017 05:09:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 23 Jun 2017 05:10:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 23 Jun 2017 05:10:02 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:10:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 05:10:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:10:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 23 Jun 2017 05:10:07 GMT
CMD ["rabbitmq-server"]
# Fri, 23 Jun 2017 05:10:35 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 23 Jun 2017 05:10:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5391967c36ff32e20822e010e2a3307d9ac8a7f93f8cc4192e002c5976da81cd`  
		Last Modified: Sat, 24 Jun 2017 21:05:40 GMT  
		Size: 4.3 MB (4311766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d2e799d0df5825d6b5bf40962e922f78326977f4b287971ff7bfa87eb6de3`  
		Last Modified: Sat, 24 Jun 2017 21:05:39 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99074ba2b6d8db2526e1678e8ce49f9da0638274eb11fc9e9311e4325e587e31`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 952.7 KB (952668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77cecce51cef25f5c8f240f43f32b6cce7ca47aaff743d4a87ba958d7e14d10`  
		Last Modified: Sat, 24 Jun 2017 21:05:42 GMT  
		Size: 27.7 MB (27697759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e381a5c8d5a849c1f68f906b9fc04b17903258c77ba048626554c6ba60d6c884`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31bd0e6cc5feac7063d28375a48255c7dd25c42778f615e0dececa3c545f38d`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf17e7efd420da1477f49e8d00771b5167d0e4e5607f33edd4c731407b05213`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 7.2 MB (7160232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d0b7d7b6db6d1773e28fb344e016fd953ea37e09fc92af63c54e29a143976`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96be941057b8515b550a0d5e97b8c260c2042284d455e877a92e11565b1976b3`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78f74158ffe7964a4ec53d12eb4bb1393d1aacd5b9c7520dee35b66d34e424`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599042c234d388104280c2063e3b33670e1904c63e4f464d795807dadf8bcc9d`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 4.1 KB (4064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8f2d58865d5a33498a82fc49c84223da11534146196fd276fddf1a6a284725`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d3d59f0d469ec3af71413ffa9d425c4fa4a436139fd250608be752f3d0478e`  
		Last Modified: Sat, 24 Jun 2017 21:07:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:8bf289683cf00a7f0f02a9b7af2f3f42369d00921802a0c4aacc9d4a9283b20c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62637837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b213515f0048cb17f491a08720b9f122c45100cc2a70fac7fdd7adb444ddbe82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:09:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 23 Jun 2017 05:09:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:09:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 05:09:39 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 23 Jun 2017 05:09:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 05:09:45 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 23 Jun 2017 05:09:46 GMT
ENV RABBITMQ_VERSION=3.6.10
# Fri, 23 Jun 2017 05:09:47 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Fri, 23 Jun 2017 05:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:09:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 05:09:54 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 23 Jun 2017 05:09:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 23 Jun 2017 05:09:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 23 Jun 2017 05:09:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 23 Jun 2017 05:10:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 23 Jun 2017 05:10:02 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:10:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 05:10:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:10:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 23 Jun 2017 05:10:07 GMT
CMD ["rabbitmq-server"]
# Fri, 23 Jun 2017 05:10:35 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 23 Jun 2017 05:10:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5391967c36ff32e20822e010e2a3307d9ac8a7f93f8cc4192e002c5976da81cd`  
		Last Modified: Sat, 24 Jun 2017 21:05:40 GMT  
		Size: 4.3 MB (4311766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d2e799d0df5825d6b5bf40962e922f78326977f4b287971ff7bfa87eb6de3`  
		Last Modified: Sat, 24 Jun 2017 21:05:39 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99074ba2b6d8db2526e1678e8ce49f9da0638274eb11fc9e9311e4325e587e31`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 952.7 KB (952668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77cecce51cef25f5c8f240f43f32b6cce7ca47aaff743d4a87ba958d7e14d10`  
		Last Modified: Sat, 24 Jun 2017 21:05:42 GMT  
		Size: 27.7 MB (27697759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e381a5c8d5a849c1f68f906b9fc04b17903258c77ba048626554c6ba60d6c884`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31bd0e6cc5feac7063d28375a48255c7dd25c42778f615e0dececa3c545f38d`  
		Last Modified: Sat, 24 Jun 2017 21:05:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf17e7efd420da1477f49e8d00771b5167d0e4e5607f33edd4c731407b05213`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 7.2 MB (7160232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d0b7d7b6db6d1773e28fb344e016fd953ea37e09fc92af63c54e29a143976`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96be941057b8515b550a0d5e97b8c260c2042284d455e877a92e11565b1976b3`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78f74158ffe7964a4ec53d12eb4bb1393d1aacd5b9c7520dee35b66d34e424`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599042c234d388104280c2063e3b33670e1904c63e4f464d795807dadf8bcc9d`  
		Last Modified: Sat, 24 Jun 2017 21:05:36 GMT  
		Size: 4.1 KB (4064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8f2d58865d5a33498a82fc49c84223da11534146196fd276fddf1a6a284725`  
		Last Modified: Sat, 24 Jun 2017 21:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d3d59f0d469ec3af71413ffa9d425c4fa4a436139fd250608be752f3d0478e`  
		Last Modified: Sat, 24 Jun 2017 21:07:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-alpine`

```console
$ docker pull rabbitmq@sha256:c030cd467de2f94604dde1febe14bdb4abf20322914fcc0ba35e66c904f7b04d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23519951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a00a092b61bf494b0447edade240a0486cb8dfcc1d4ba036d87211b5fb2f0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:c030cd467de2f94604dde1febe14bdb4abf20322914fcc0ba35e66c904f7b04d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23519951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a00a092b61bf494b0447edade240a0486cb8dfcc1d4ba036d87211b5fb2f0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:c030cd467de2f94604dde1febe14bdb4abf20322914fcc0ba35e66c904f7b04d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23519951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a00a092b61bf494b0447edade240a0486cb8dfcc1d4ba036d87211b5fb2f0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:c030cd467de2f94604dde1febe14bdb4abf20322914fcc0ba35e66c904f7b04d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23519951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a00a092b61bf494b0447edade240a0486cb8dfcc1d4ba036d87211b5fb2f0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-management-alpine`

```console
$ docker pull rabbitmq@sha256:4aefab0b84bef23deb700473063107829319bce5996c79d8bc9534aada7e57ee
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00219a0f95994648606f69aae2e17095b4840922e2e71e5815ae025ac9d1ef5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Jun 2017 22:48:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 19 Jun 2017 22:48:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000ba7632dd85ca0a85f07f7acc59742d3cc88bfae0142ed6f85929f51d35628`  
		Last Modified: Mon, 19 Jun 2017 23:06:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:4aefab0b84bef23deb700473063107829319bce5996c79d8bc9534aada7e57ee
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00219a0f95994648606f69aae2e17095b4840922e2e71e5815ae025ac9d1ef5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Jun 2017 22:48:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 19 Jun 2017 22:48:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000ba7632dd85ca0a85f07f7acc59742d3cc88bfae0142ed6f85929f51d35628`  
		Last Modified: Mon, 19 Jun 2017 23:06:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:4aefab0b84bef23deb700473063107829319bce5996c79d8bc9534aada7e57ee
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00219a0f95994648606f69aae2e17095b4840922e2e71e5815ae025ac9d1ef5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Jun 2017 22:48:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 19 Jun 2017 22:48:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000ba7632dd85ca0a85f07f7acc59742d3cc88bfae0142ed6f85929f51d35628`  
		Last Modified: Mon, 19 Jun 2017 23:06:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:4aefab0b84bef23deb700473063107829319bce5996c79d8bc9534aada7e57ee
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00219a0f95994648606f69aae2e17095b4840922e2e71e5815ae025ac9d1ef5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Jun 2017 22:48:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 19 Jun 2017 22:48:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000ba7632dd85ca0a85f07f7acc59742d3cc88bfae0142ed6f85929f51d35628`  
		Last Modified: Mon, 19 Jun 2017 23:06:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
