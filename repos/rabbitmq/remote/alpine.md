## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:f0331cc7846647de67409248a4736776e03cc9d0a2e49d8f1471d9df776c6600
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eeb369801d8e5e50b965bec62fe29e18e45391bf87178b4e0ceae8c2ea060bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:07:17 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:07:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:07:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 04 Apr 2017 23:46:56 GMT
COPY file:33ddf05b116275ee573fc62d9262aeb40f5a699dc6d0151354dcedb97165084a in /usr/local/bin/ 
# Tue, 04 Apr 2017 23:46:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Apr 2017 23:46:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 04 Apr 2017 23:46:58 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf7c356704c8f21571d6fdd9186378ae209262242d3dcae2eb3ed5811ef3e98`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d8db7a4fb800e7e234e7c3e722b30240b2337d0a2033527be7db43190aa1e`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9fd3558f620bcfe305a1b65a86ca958ef74e205827faea898fe104a231b003`  
		Last Modified: Thu, 30 Mar 2017 22:10:47 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851eb24a39229fcc85aa5dd685f5716f2c5f788ca0b9ba5eca1029c0b1ca53c2`  
		Last Modified: Tue, 04 Apr 2017 23:50:13 GMT  
		Size: 3.0 KB (3007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
