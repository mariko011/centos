## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:50068c4b4fc067ba9922aee20308e9375f71045f9fba6173f6c2951b47bd9e1e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86546251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33aaf21a627dd824f637d139265f25e6e94cff7906f1d839841e2a1304ca7000`
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
# Wed, 23 Nov 2016 21:52:34 GMT
ENV RABBITMQ_VERSION=3.6.6
# Wed, 23 Nov 2016 21:52:34 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.6-1
# Wed, 23 Nov 2016 21:52:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Nov 2016 21:52:42 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 21:52:43 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Wed, 23 Nov 2016 21:52:44 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 23 Nov 2016 21:52:44 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 23 Nov 2016 21:52:45 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 23 Nov 2016 21:52:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 23 Nov 2016 21:52:47 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 23 Nov 2016 21:52:48 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/ 
# Wed, 23 Nov 2016 21:52:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Nov 2016 21:52:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:52:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 23 Nov 2016 21:52:51 GMT
CMD ["rabbitmq-server"]
# Wed, 23 Nov 2016 21:52:53 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 23 Nov 2016 21:52:54 GMT
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
	-	`sha256:2b968ede33648fd475d1ff05896b63e9703290b26ae67675c46c2a7f6f6ddc72`  
		Last Modified: Wed, 23 Nov 2016 21:53:12 GMT  
		Size: 6.2 MB (6233437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bfbddfdc532d5954a38f11660c4d98bb6a1c139e7b19021d6ad99d926ec14e`  
		Last Modified: Wed, 23 Nov 2016 21:53:09 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279f3f4eee23525cc0af6bb84586ea9d0e65744c4ac865d2d476d03f264fd793`  
		Last Modified: Wed, 23 Nov 2016 21:53:07 GMT  
		Size: 2.3 KB (2297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba67b9b96bf58bf4b9592ac42cdcb889ddbc1862437df9ee1581322661f931`  
		Last Modified: Wed, 23 Nov 2016 21:53:09 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9794e110ba772507ff013925851a113f74b54db9570a21e8b633c5d486d70a2`  
		Last Modified: Wed, 23 Nov 2016 21:53:07 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e77f33fd89884b14c8556dd281ccea5b1cecb248f880183be66b8553f7c75b0`  
		Last Modified: Wed, 23 Nov 2016 21:53:07 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d89f114fd4d52af33afdb6caf0ec72ddb96f5f5b746c8d5a6f824d68a192a2`  
		Last Modified: Wed, 23 Nov 2016 21:53:08 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484de1cf85b0377bef9d40cb19f63dcf345199d856eeccb74921381bd609cb91`  
		Last Modified: Wed, 23 Nov 2016 21:54:14 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
