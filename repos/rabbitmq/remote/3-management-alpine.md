## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:46a7f53f84b6508b03212a1d1151aa89de09ee3a77715277f88288a940a68b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:283b76d23002526e7b75b3b2268d999e8ba8373ff13a9a54ed504ef0c548ba6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be775004faceb2d5fd71f989bd403debfc9297f72a0d4635ed2e51311c69e6b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:47:34 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:47:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 19 Sep 2017 01:47:44 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 19 Sep 2017 01:47:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:49:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 26 Sep 2017 00:49:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:49:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:49:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:49:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:49:28 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 13 Oct 2017 23:41:04 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:41:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:41:04 GMT
CMD ["rabbitmq-server"]
# Fri, 13 Oct 2017 23:41:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 13 Oct 2017 23:41:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35056c6845499c25bf0eafef5dbc120c9c37f6c50dfcb4627b51c0231603c18`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70586150e9099e145e62a41f0ff5589c0f12c8c9cbab9bc2dbd40a97c353b51`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfffd127a85fa5ecc0db41a94cf22b88b6a161b577809181246e2e28700875ff`  
		Last Modified: Tue, 19 Sep 2017 01:49:21 GMT  
		Size: 16.5 MB (16540643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf157c5d932b2f37744919af62c626e6b0910550f724286975a91aadf3d22205`  
		Last Modified: Tue, 26 Sep 2017 00:51:01 GMT  
		Size: 5.0 MB (5012132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69365f61532d8eba60c5394dabec3f9c0038c8149eca1995f15fdf50bc68e1c4`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d26e15c29717fa296797e41f846f8d1af0f8b2802708e30428fb2d9a75d8c`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb4cf70df1a3e43ec14cefee13b73ad3ae61605ebc3a8a29d85dd5c49cc8e43`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31aadf17fdb7f906af653798039fc5e0daaabf39092d24c121423e6fe611a6b`  
		Last Modified: Fri, 13 Oct 2017 23:42:36 GMT  
		Size: 4.0 KB (4041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54a49e6f2610c797d20ed2cdbb130299530167b6caa52fd73397dd5eb4be15`  
		Last Modified: Fri, 13 Oct 2017 23:43:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
