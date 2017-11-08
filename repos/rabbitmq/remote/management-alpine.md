## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:6220affc4420dae7fd23257a6ead81e2fe71f60470ed61969f29458b8aca40c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b9bd8d394b9f406246d8a0259fc3914925bd99aa5eb7c2501eb8755777b16c2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7630631a89c10be15f7abbf23574da760f6b873ff37d1b8ebb0570b009aada`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:07:57 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 04 Nov 2017 05:08:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 05:08:11 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 04 Nov 2017 05:08:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 05:08:12 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:41:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 05:41:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 05:41:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:41:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:41:30 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 05:41:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 05:41:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd931d2c14c5b5501527044a16e680c1b1111ba939bd17bbd06d73cf92976dc2`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f3f2df337d68db6b507058eda830a8986efd4eb17efa8910edf383fb1e67c9`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 8.2 KB (8181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7844869e4b5b7138207173247acaa8c055a4b34be2fd981dc153aa1d06d31861`  
		Last Modified: Sat, 04 Nov 2017 05:09:52 GMT  
		Size: 16.6 MB (16561780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18cccd03229e8d4e3b51b1776b63f584607b7154b95bfb9d2767dc63d2b94e6`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 5.1 MB (5108427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b1a078564a2b7a12bb756228a5f2adc4d7d6d42b72cacd82aef74e27ef07a7`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a05083963037f58105f5fda0a18ed7a88cf1308f9430c152f5d75e871fa29e0`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749e0123d4b8df67ecebb3ae52ec16d2202197ed19c292af307897c04686bb90`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efecef2b5124d36f82ffa7552672508f9e59c59d548e2c74e6a33052a46025d`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feeecc743824f0b313a36169a718247ad0705095301913fe90305e3031bddcc`  
		Last Modified: Wed, 08 Nov 2017 05:43:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:e8ed5cd9b245e266e484ca928e7737c0e2e586a425d1a35953b6eb95dee4dda1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23414140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ad91096d26dce7523e8edcb959d25df4acb9a9ec30aa436b3efdf7447e6111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:56:12 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:56:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:56:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 14:56:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:56:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:56:35 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 14:56:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:56:37 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:56:38 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:56:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:56:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96467a3af759dd4d0c8e9dfd696a707eaa9c669b6d249c3e68a9fd8fc1e2be0b`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 5.1 MB (5108108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e205c0c58f4d29c6e42fdf1c9ee424a884b20605fa3edad491d61393b620bc`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac11c13026eea7c9ea3de8e602b707ab2ec1d784eeac0768b5c3c114d8da53`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0267b7ac6617ceb8d53546896d0f88af55faf21e13a9df998452604170475`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd69c177dca55f85ae172255c42fb1a1afc9098e0d9c90a2af3e9281a06355e8`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b418983d7e097bc55fc7ad055b5ce4b247a68a165ea5b7455d4e1b1ccef99afd`  
		Last Modified: Wed, 08 Nov 2017 15:00:47 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:7df18e5d24275cec2a0d6974a6f8554d63bad500dedcc90dbefaaf1049d2c689
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23879249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db93ff3b392669c3d72d83fb6b6c4efce88e00330eb9b1a50ac6e3952e38756a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:50:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 11:50:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:50:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:50:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 11:50:06 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:50:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:50:07 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 11:50:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 11:50:17 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffae17dadc5d20f4dc949f407146594a7ca8aa4fb11be121519ef0a316dd05a`  
		Last Modified: Wed, 08 Nov 2017 11:51:38 GMT  
		Size: 5.1 MB (5108395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef62ea46f71b0592807ef97d67f3649e3ccaea0059286442606ddfc96644d9`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77474049fb515a920c7c001b111e29142426b6cb3e22416e6784819702461895`  
		Last Modified: Wed, 08 Nov 2017 11:51:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580eb2276815b19169a24cccdb63099175d34f275d9a3a0f07900e7966f0694e`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5471bc4e5ffb070324baf533e92da1a68c5498041f178eb4a318449bb0e03bf`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a51e0d41ab48801f44f6af1c41212776e01e94077bb83ae82ca64d6204c7e`  
		Last Modified: Wed, 08 Nov 2017 11:52:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:4a00b41bb7019e01f206e41b5aa7da165d05f371d9ebb8b77eb6a9b1c4cd5bd5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23915197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b17ad4bb3464a088278244de58eab0831867b784c303c0f9be34cf90b8b3203e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:07:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 18:07:49 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 18:07:52 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:52 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 18:08:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 18:08:01 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93907c5b4f4bc7a5481de6bb16c3f072a75e5527d3cfc3b9749b113cfae95f`  
		Last Modified: Wed, 08 Nov 2017 18:08:54 GMT  
		Size: 5.1 MB (5108471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35583f28b47cbc069cf7cd90f5e6424989326186e6d4eda16789f04b1a593292`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5276afe58ea371107f544988a9e5123c638674f1af93bb6aabbb052a917ca221`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2728c7344d2114e96e7f93f99acfaa5e41fd50018d5c58170bbb955c3f61b4`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161b930d7a34fea6d9e836a0f286a8e3105160cdd36fa617d62997bd63388023`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdeb2f56852f23d4e9898407b7b17157ff3198186456a4b0101e3223c199d1a`  
		Last Modified: Wed, 08 Nov 2017 18:09:12 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
