## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:1cd5aa8f94b92f2cd564814bb5de20e49604f6c0a04f67de367b44f3e24d628c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:53040193335019b805a2d534fc25c9a672f86c91324fa00fc17d6155c6398a65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43801800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d4145261981d5d04f33c5edd2cb940e10e55e2ad653d9869e8347df738c690`
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
# Thu, 21 Dec 2017 21:45:57 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:45:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:46:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 21 Dec 2017 21:46:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:46:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:46:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 21 Dec 2017 21:46:33 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:46:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:46:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:46:34 GMT
CMD ["rabbitmq-server"]
# Thu, 21 Dec 2017 21:47:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 21 Dec 2017 21:47:06 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 21 Dec 2017 21:47:07 GMT
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
	-	`sha256:19b089414b5bab92d9738a7b587335f2b46589ea337410fed306be2fec97e646`  
		Last Modified: Thu, 21 Dec 2017 21:49:39 GMT  
		Size: 12.0 MB (12045410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bc86ebf4d9b7ae0a431b32c1e1a0dfc05bb511b6234394497aa98be30d5399`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f15622b0a3adfbad46d71a2ab9bd1d219ec7d660e9a85f2bb792aa35450edf`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52177a7021e2926921f06bed2402140367b9489638881c3c7cebf90a6327593a`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1936b63aa170cce9d350b68a0686ca5932bbf55bfac91f0d590daa3e9a8478f`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a137ebd01df39e6c42974144762af74acae18d9eafcfcf912e2bd33a8c5b237`  
		Last Modified: Thu, 21 Dec 2017 21:50:40 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e4e957d266b9097a73021b7339bdcda9771696b0a8c355f9deeea61d0a9692`  
		Last Modified: Thu, 21 Dec 2017 21:50:42 GMT  
		Size: 11.0 MB (11024384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
