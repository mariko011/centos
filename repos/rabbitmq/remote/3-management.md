## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:5dab6ce4ff71217bcce7c977acff60ff7ea401ee209980a837fadd6610e05681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:8daeb75857d7e04da9854cb131fef3b0d2dfd8f1e313ae2c88da0a20cb4d36ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62851022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f85991949f2b39c91405eae1b54e6387bf205e950db3641ff981baa7737100`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:27:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:27:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:27:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 23:27:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 23:28:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 23:28:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 23:28:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:30 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 23:28:33 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 23:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:28:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:28:34 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 23:28:36 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 23:28:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadde3410cb49cfd33138502617df98cf49a63776ac6b2496c12bf493d2c1acb`  
		Last Modified: Tue, 12 Sep 2017 23:29:22 GMT  
		Size: 4.5 MB (4499368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e495394892123223f50e3ef9706a2390afdfbdeb1da6d9bc84ef87acc74261`  
		Last Modified: Tue, 12 Sep 2017 23:29:20 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c862b9153cbda635b775785c30620e5b75da5aa1ca13c92c5e9f66cdcc8531`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 952.0 KB (952003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f2714343f36f92fb827a2214dea210dc8b31cc94c7e2e047bca398f2095383`  
		Last Modified: Tue, 12 Sep 2017 23:29:26 GMT  
		Size: 27.7 MB (27703836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dcfdbb20df1075f84544e4692525e0ca74b38e914bdae4c1d446c9d552e4fa`  
		Last Modified: Tue, 12 Sep 2017 23:29:18 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f01417baa32b9822ca9c5eaec8fe57a1ddb6644df7f1841915d0786d2cfeb06`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da934532e234d244acbfb3d9f2ffd184707823b51be798f695de12e7537d4915`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 7.2 MB (7193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c3341079a1a6a5ff9503bb1d58a7f3810da7b849c234897b228998bb04820d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425d840967240d00657711fae33d25c6e7486882cab8322bcee6607b392ca74d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234f92ba8be71e2eae5027a740144f47e415b5719385b8b5003c26a4df7f1133`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082fdf870ea036041c78668055c568dc4984416c503f7cc506ecd4daf52cc5a`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b7abe0b74e549a2215539981db8dfeb21122e1b00dbb3dc5688cb3eee3a866`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c30f341efa2911f51a7823ae99fe366cf2b38b06c016d59bcc0a2ce2ff5d31`  
		Last Modified: Tue, 12 Sep 2017 23:29:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:48866ddf8aa252434f2d2f615ca1d71d8fd1f41739a6afc97e1496112c81cb09
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112e35fd1c5bf9cce55f206c6239fccd826f4a614c8c7a6105faff2d688dbc1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 22:51:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:51:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 22:51:30 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 22:52:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 22:54:34 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:54:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 22:54:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 22:54:49 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 22:54:50 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 22:54:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 22:55:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:55:32 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 22:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 22:55:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 22:55:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 22:55:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 22:55:50 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 22:55:52 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 22:55:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 22:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 22:56:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 22:56:03 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 22:56:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 22:56:16 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ccdc113ab1266db618ff04ab98527c7167e2df7b81dbda212235bcf532e35`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 4.4 MB (4360373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43af127417f02f39d312d2ecbac85ebf5b3084eddf896e25d76c4eea2d7be`  
		Last Modified: Tue, 12 Sep 2017 22:56:37 GMT  
		Size: 4.1 KB (4104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427330ed64ea1260490780e2c2ddc98da973b112b4f73d9085dcb97c8f753cb`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 920.8 KB (920840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09c78cb850af5f76c18ef1b42c64dbed4af34f8a8e6187ae51a74e14d1bb6e`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 25.5 MB (25492757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33136a5f20115fe62bbd8aa72bb0980086cdbfed5633a2d913dadd0e9a4ecd84`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664e44de3406582d405b5cf8c2d06976d15a6762ff395e85f610bcca0da7c67`  
		Last Modified: Tue, 12 Sep 2017 22:56:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e61969058bd506abbb0699def6df8b21f356bc5217b88069ed711afe4722d5`  
		Last Modified: Tue, 12 Sep 2017 22:56:36 GMT  
		Size: 6.9 MB (6852811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a292f3132f54034920f1d038a9a7cbd371409ad96c2bc079de52a6953796b`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee14d95f5afd1e094e9558286aeda716883ec628695b1a26a5ce4feea0e2aadc`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59159b7fc3148e25123af34c7b5b70bcaab4dcd31a77f3785da243eab70cc93c`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fb80373224b00c85c3a219c4ecd194e6942fc9a2f59e897547c9121213819d`  
		Last Modified: Tue, 12 Sep 2017 22:56:29 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a8f525dec54ab225c73be7c0cce2756fd8bf3024cda90316fcbe4218357aea`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc2e3e8258be0b85892487a6ef603a511111270c46084eac613df7274c772e5`  
		Last Modified: Tue, 12 Sep 2017 22:57:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
