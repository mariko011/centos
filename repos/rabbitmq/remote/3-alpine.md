## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:19581671812e144f7cdd4d7502b9f10ec8c04a9393c645f502eede00b7ece152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:24a56a03eab0dca16f3ed22382718f8776a98da9c373b4ea10668bcd88eb9d5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cf057cce5489de12e87069fabd343f47bdb5ec2fccd58262e1a8b53761d835`
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
# Tue, 26 Sep 2017 00:49:28 GMT
COPY file:5bc938ee921736a8b5afdf666cec851939be30101ae00139f213145b080fc5cb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:49:29 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:49:29 GMT
CMD ["rabbitmq-server"]
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
	-	`sha256:3a8a8b5b44b48666b965fde7188c4e0f33a242fa5cc79efc4df8e0cfe41c0a96`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
