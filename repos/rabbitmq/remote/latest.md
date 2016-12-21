## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:53c67c41323977870ad077c8a0e5ef52b2cc460206e6a965ced96ea130de1e12
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86553339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f08daa6f6aa945c6c0f38df8d1659420003b3b8d41176bca5d93028b1f040b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:02:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 14 Dec 2016 19:02:58 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:14:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 19:14:27 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Wed, 14 Dec 2016 19:14:28 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 14 Dec 2016 19:14:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:15:02 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 14 Dec 2016 19:15:04 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Dec 2016 19:15:05 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 14 Dec 2016 19:15:06 GMT
ENV RABBITMQ_VERSION=3.6.6
# Wed, 14 Dec 2016 19:15:06 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.6-1
# Wed, 14 Dec 2016 19:15:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:15:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 19:15:20 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Dec 2016 19:15:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 14 Dec 2016 19:15:21 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Dec 2016 19:15:22 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 14 Dec 2016 19:15:23 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 14 Dec 2016 19:15:24 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:15:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Dec 2016 19:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:15:37 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 14 Dec 2016 19:15:38 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7d779bbd840f454e19f8fd4c399ad45640a295a371b4916da1499cbe4e5963`  
		Last Modified: Wed, 21 Dec 2016 19:27:46 GMT  
		Size: 4.3 KB (4336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea153d7516c01f37d84c6b9706985891b84ecb66bcb1a79f13ade006e2fade5`  
		Last Modified: Wed, 21 Dec 2016 19:27:45 GMT  
		Size: 1.2 MB (1216943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21043fae217607db41a45cfcff60035ffc4f0d823f020095f37f850f59a99ab`  
		Last Modified: Wed, 21 Dec 2016 19:27:43 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d2ec9e99c19b2b14cedcd8d8cabfa065c037e23e77011c62c29bda61349d25`  
		Last Modified: Wed, 21 Dec 2016 19:27:43 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe07b46784f548359bc2bb7eca9b3dd0b9ec71c721aad30f68db74cbaac28f4f`  
		Last Modified: Wed, 21 Dec 2016 19:27:48 GMT  
		Size: 27.7 MB (27721848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9318c554a1155fa6b24c4cc9036ae80dc6e30c1801cd0cfcb8368ffa7f35e0`  
		Last Modified: Wed, 21 Dec 2016 19:27:40 GMT  
		Size: 5.3 KB (5347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017290d9e5885ddfdd9e1de7e4508ffd565dcf73ffe1c84eb23474a5933ffc2b`  
		Last Modified: Wed, 21 Dec 2016 19:27:39 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f7a62616b24f0e01e4cc9b98581208b1ea901a0e57cbadf7a69a852802c1c`  
		Last Modified: Wed, 21 Dec 2016 19:27:42 GMT  
		Size: 6.2 MB (6233549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bc0a25620a8f9fd04078377128ca8cc90a0279348d90e6786b001b51624a1e`  
		Last Modified: Wed, 21 Dec 2016 19:27:41 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a644483494b0fa97f28133b0af7a8d018d701ae4d3572f9d0a50af6785e5f2a5`  
		Last Modified: Wed, 21 Dec 2016 19:27:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dcc27184d7938fd9eea0fb38b34f754bfed8aeb41d38e187cd7188ac92105c`  
		Last Modified: Wed, 21 Dec 2016 19:27:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afc29804aaae83b601bde0f845af46b9b236d77079d2875ce1e6b77e9d4b094`  
		Last Modified: Wed, 21 Dec 2016 19:27:37 GMT  
		Size: 2.6 KB (2557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0503aece3d7fb52709917665be65e34ea03e7ad1445d38f375e3d384774d12c4`  
		Last Modified: Wed, 21 Dec 2016 19:27:37 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
