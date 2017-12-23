## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:378c836e02d311f4ccc61fe38789299c1bef9089fe02dfa005c973b08c81f1f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:bed6c369577b1b3d71e406534032e571347c2dae5129a1dd727971fd1ef35667
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43800524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a18d4f6dfc99db3e3ff747cdc0623043b05ffbe91d61b314b3604624a95e561`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:41:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:41:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:42:01 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:42:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 23 Dec 2017 15:43:05 GMT
ENV RABBITMQ_VERSION=3.7.2
# Sat, 23 Dec 2017 15:43:06 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.2
# Sat, 23 Dec 2017 15:43:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 23 Dec 2017 15:43:23 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 23 Dec 2017 15:43:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 23 Dec 2017 15:43:24 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 23 Dec 2017 15:43:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 23 Dec 2017 15:43:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 23 Dec 2017 15:43:26 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 23 Dec 2017 15:43:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Dec 2017 15:43:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 23 Dec 2017 15:43:26 GMT
CMD ["rabbitmq-server"]
# Sat, 23 Dec 2017 15:43:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 23 Dec 2017 15:43:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 23 Dec 2017 15:43:52 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c1a6072a0178dab7d654b6acba25999111f65220e215aa17469c267102d277`  
		Last Modified: Tue, 12 Dec 2017 21:44:03 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f1d7e091ce75ff0605b46c770dec934cddd5a7e0b02f3b6cd023f521c80eb7`  
		Last Modified: Tue, 12 Dec 2017 21:44:04 GMT  
		Size: 8.6 KB (8553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6292a4d2dfb8b5360d5c00c398460db176d6568cf938970df741532ace92088a`  
		Last Modified: Tue, 12 Dec 2017 21:44:05 GMT  
		Size: 18.7 MB (18652435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9739c08b35212c53315da732bf44f1ae25a79463d263e567a27419c40be422b9`  
		Last Modified: Sat, 23 Dec 2017 15:47:45 GMT  
		Size: 12.0 MB (12044105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73cc943f35a80d5333e4eb1b9f17d36a8075c19d31d7238e98a180c8342fa8b`  
		Last Modified: Sat, 23 Dec 2017 15:47:44 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c1423fed203e486338fed6294a4840b8b9d4aa7d1ba093fda902013fd24789`  
		Last Modified: Sat, 23 Dec 2017 15:47:44 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0150a92a150b693ad53dac351d1a79fb8879b0d19fa4c1f54a2bf527cb7d625b`  
		Last Modified: Sat, 23 Dec 2017 15:47:44 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661f07baf395c7f5b78bc804885b94b0e25ebcf6a04a5ffb8050f68292b6e84a`  
		Last Modified: Sat, 23 Dec 2017 15:47:44 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19787757ddfbca6ed3f726056b3dca89f9d299f913f4b3cd41c20c9d9f910694`  
		Last Modified: Sat, 23 Dec 2017 15:56:44 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ea96afa4814614f7dcd75059eb509a771bab2c9d0f65d6f2986e4083c92dd`  
		Last Modified: Sat, 23 Dec 2017 15:56:48 GMT  
		Size: 11.0 MB (11024414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
