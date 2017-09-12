## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:67c044d7b99e1ed71cd6855df3dd51dd408c3d7b13ef02396ba2ffedde14b84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:45f8594b491e0944d6aee9f750b879ba8fe804c58609d09aa4818e62c9ee41df
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62660615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7e219c2f1d084cd2a90adc2c9396bffe3042878b1ca43b4b608428912a9e17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:43:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:43:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 09:43:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:43:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 09:44:11 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 09:44:14 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 09:44:15 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 08 Sep 2017 09:44:15 GMT
ENV RABBITMQ_VERSION=3.6.11
# Fri, 08 Sep 2017 09:44:16 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Fri, 08 Sep 2017 09:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 09:44:21 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 08 Sep 2017 09:44:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 08 Sep 2017 09:44:23 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 08 Sep 2017 09:44:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 08 Sep 2017 09:44:24 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 08 Sep 2017 09:44:25 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:44:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 09:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:44:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 08 Sep 2017 09:44:27 GMT
CMD ["rabbitmq-server"]
# Fri, 08 Sep 2017 09:44:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 08 Sep 2017 09:44:35 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2f1391435da0463d1ba97d396738b7a023f487e1b1277246b564d9c2c96e30`  
		Last Modified: Sat, 09 Sep 2017 01:37:02 GMT  
		Size: 4.3 MB (4312301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44332adbfb1dd24aa90f90ac7035b45862f5458da08efbe0a9cf732e022f92e7`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31429e3dcdee95d53d985948f2e239e3760c68efa50b066406cc6d824bac57b8`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 951.9 KB (951923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2f7ba5a0d8cd38c4fec0a0c9bec477750fb837a7a05a5c0d9789125a24976b`  
		Last Modified: Sat, 09 Sep 2017 01:37:04 GMT  
		Size: 27.7 MB (27703673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bfa529738707cab32251540fb8d2060f9654d2128e9a0357605457aa84566f`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da20dafe91d486824a9e5e51b3cd9925a81f153bb56f73abd3e24c0ff8d8265`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa5362ddf76420567ddf204a65ff6c7d588e7b30f66d7c0845c368822d60d9d`  
		Last Modified: Sat, 09 Sep 2017 01:36:58 GMT  
		Size: 7.2 MB (7190422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e7bc28f2abc742dab7f5fa35f0af9237c96c83b938cb2c3f635a954bbfed3b`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 2.3 KB (2252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4276115c1b2bb4881962f6c410ce5b107103df6b26c2f952b775f9839717f1b0`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a94a7f98bfe2f975dcffb0b07bda40311ea1679e3661fbfa51a2a1b42d37bc`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0055e6f40198620019bd2c78d7c8c03921083decd31fdb499619bd661d57ed`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e7beac3ad088690a6af0e542412405b5369f05a643cb7343e92105a4109c48`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d9cf37d7308f51aba7adffee99021b77d4085c4765fcdf76dfc2b085c4e45a`  
		Last Modified: Sat, 09 Sep 2017 01:37:41 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:79415eddd7fa70f306b835b5d3e7e9209c3e345b8be8b0f79daab50f233932cd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58426875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c5fb016569babb80f7564a6dd87c04bf38ef2d3481a9301a93e25930b0344f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 20:04:19 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Fri, 08 Sep 2017 20:04:20 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:12:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:12:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 03:12:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:19:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:25:04 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:25:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 09 Sep 2017 03:25:15 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:25:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Sat, 09 Sep 2017 03:25:18 GMT
ENV RABBITMQ_VERSION=3.6.11
# Sat, 09 Sep 2017 03:25:18 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Sat, 09 Sep 2017 03:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:27:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 03:27:52 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 09 Sep 2017 03:27:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 09 Sep 2017 03:27:55 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 09 Sep 2017 03:27:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 09 Sep 2017 03:27:59 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Sat, 09 Sep 2017 03:28:00 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Sat, 09 Sep 2017 03:28:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 03:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 03:28:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 09 Sep 2017 03:28:06 GMT
CMD ["rabbitmq-server"]
# Sat, 09 Sep 2017 03:28:27 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 09 Sep 2017 03:28:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fef762b8f53b037e95e7c93f502931dc720c98a6e4ab7b70807fe14fafba6103`  
		Last Modified: Fri, 08 Sep 2017 20:21:38 GMT  
		Size: 21.2 MB (21161607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4da49272ed622a1d80a2784d63c0b0cf69ce2d75e4cd794d8186cb7364d1b0`  
		Last Modified: Sat, 09 Sep 2017 03:29:08 GMT  
		Size: 4.2 MB (4231481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75616693a72bc2c9efb81fb47d33774fc0a25753163ca66847efa1ca8a0621f`  
		Last Modified: Sat, 09 Sep 2017 03:29:02 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dfadb2b70b7fdefcf3c25ecec8003122979ab13cdca42bc6603d2b3b5b428c`  
		Last Modified: Sat, 09 Sep 2017 03:29:01 GMT  
		Size: 942.7 KB (942658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe5a4e495e12fb72cf7e3cbe65432923be24a177a73eaa71f7b680d3899ab1d`  
		Last Modified: Sat, 09 Sep 2017 03:29:09 GMT  
		Size: 25.2 MB (25170762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbb6656d01868a89adb3c8cb754d03a967a3ef90ba51132df75e112ac751d97`  
		Last Modified: Sat, 09 Sep 2017 03:28:55 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3b059729c7d80a8d78c17295b29dfdc376bfdf5c9a3ec402f4dae94463ddc6`  
		Last Modified: Sat, 09 Sep 2017 03:28:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b0df073d57f5f873b99cf8b91bf48895623e8867874e92d301726f4b620d39`  
		Last Modified: Sat, 09 Sep 2017 03:28:56 GMT  
		Size: 6.9 MB (6906064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab10a39edc831851ce3f4f71d8182e52c8e199995f5f869edfe42c105f51fb5`  
		Last Modified: Sat, 09 Sep 2017 03:28:48 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945ed8119f738513a805c278beb37a5f142c2c58aa88119580d9f72d45399167`  
		Last Modified: Sat, 09 Sep 2017 03:28:47 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41784778e7c0d8c0faa44a2e282948fad8ce62daf9415918fdee1ae797321e6a`  
		Last Modified: Sat, 09 Sep 2017 03:28:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5838dc8326e2f138f4df6cf90fde39fbcdba63178fa00189df1070e312d7a1ca`  
		Last Modified: Sat, 09 Sep 2017 03:28:47 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df742a89081296ee46efeae3b7e8b7500db9557b5c8a661722f364a7c121c5a`  
		Last Modified: Sat, 09 Sep 2017 03:28:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa80a3888a410c40da17a47da8129a8c219f1ad38a1accbd1c3a452f739fa88f`  
		Last Modified: Sat, 09 Sep 2017 03:30:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:e31a83305b4dee7c53662d0e52483670993d4845bed1b89b61f238e1b4fe58f9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55688421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0235f43463922acf4681ebb801db99cf6f219e76a2d89fc1b2a7087c258fa47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 25 Jul 2017 12:59:09 GMT
ADD file:636ebbf39ac07d1dbb03c6fba0f51c6353c9f7b671a9bbbec30f169f2bef5b3e in / 
# Tue, 25 Jul 2017 12:59:10 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:00:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:00:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 01:00:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 01:05:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 01:09:39 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:09:41 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 09 Sep 2017 01:09:59 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 01:10:01 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Sat, 09 Sep 2017 01:10:02 GMT
ENV RABBITMQ_VERSION=3.6.11
# Sat, 09 Sep 2017 01:10:03 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Sat, 09 Sep 2017 01:12:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:12:31 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 01:12:32 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 09 Sep 2017 01:12:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 09 Sep 2017 01:12:35 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 09 Sep 2017 01:12:37 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 09 Sep 2017 01:12:39 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Sat, 09 Sep 2017 01:12:40 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Sat, 09 Sep 2017 01:12:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 01:12:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 01:12:44 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 09 Sep 2017 01:12:45 GMT
CMD ["rabbitmq-server"]
# Sat, 09 Sep 2017 01:12:54 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 09 Sep 2017 01:12:55 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bede1b4bf4737f594ec715f5e1dc0b6385fc61288ba97f8911986105a9d3929d`  
		Last Modified: Tue, 25 Jul 2017 13:13:48 GMT  
		Size: 19.3 MB (19271612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb70e54d76da00071a6b89f89c66048402824c702aeedb539a8a7447d8241d4b`  
		Last Modified: Sat, 09 Sep 2017 01:13:24 GMT  
		Size: 3.9 MB (3870620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbd21b27af63bacdd0dcf6dc9181cc4a1f2de0ee0878116e1ed97e299555ad6`  
		Last Modified: Sat, 09 Sep 2017 01:13:18 GMT  
		Size: 4.1 KB (4059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a661f250e634c2265c9bbf12b33e881b48c503156fc99f19d44f7db0702706a`  
		Last Modified: Sat, 09 Sep 2017 01:13:12 GMT  
		Size: 926.4 KB (926389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017a920a1f2cbb0b190567f801d6a9036a12ced30b7337a0612b52a5a5455df0`  
		Last Modified: Sat, 09 Sep 2017 01:13:24 GMT  
		Size: 24.8 MB (24788509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0aef0ce8307fa4ead7e43dd67478a5d7b66ccd286b7fd9840addbdb90df68a2`  
		Last Modified: Sat, 09 Sep 2017 01:13:10 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a06e5bfc451a5094942a1e1c652fe484d6b068ed5649d1449ca3fb4399f17`  
		Last Modified: Sat, 09 Sep 2017 01:13:08 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1aceb21ecceac86852f19dd3505e82949d53a1e09083b2238f0654d7e1ba3b6`  
		Last Modified: Sat, 09 Sep 2017 01:13:13 GMT  
		Size: 6.8 MB (6816974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909337de845b74c26780ded29600e2b945ed5c9fba56cb4c14eca46c386f77b3`  
		Last Modified: Sat, 09 Sep 2017 01:13:04 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a289f8cfdbc076ed12c7aacb0f63aea93a3f9bce2707d9151833d8f09805a0a0`  
		Last Modified: Sat, 09 Sep 2017 01:13:05 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa9bd6418cc7b3fedc2f7a54fc42b524fd336292b1ae3ecbb0814158b9283eb`  
		Last Modified: Sat, 09 Sep 2017 01:13:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a08ffd76c7e5645a75dceb852c1d0ffb62eaa54030dd462ac7b6c256cc2cd4`  
		Last Modified: Sat, 09 Sep 2017 01:13:04 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427bf0fc6e24c62e30323e2d978a73d8eb72b222ba58a32275e2a858b95c8e31`  
		Last Modified: Sat, 09 Sep 2017 01:13:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797e6ffeaee88fc607a4c4c6397ca32f254380ac77802f0dfda19c421965914a`  
		Last Modified: Sat, 09 Sep 2017 01:13:48 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:5bbe2f28295b3ded36243d459bd64b54efcc5b6b40bfd03c02edefabb27135b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57279686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200db8f3ecae2bbb46d78cef4a510e92c42077d6cacced8e09c3450c9c0d82e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:59:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:59:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 02:59:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:01:51 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:01:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 09 Sep 2017 03:02:00 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:02:03 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Sat, 09 Sep 2017 03:02:04 GMT
ENV RABBITMQ_VERSION=3.6.11
# Sat, 09 Sep 2017 03:02:06 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Sat, 09 Sep 2017 03:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:02:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 03:02:49 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 09 Sep 2017 03:02:53 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 09 Sep 2017 03:02:54 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 09 Sep 2017 03:02:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 09 Sep 2017 03:03:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Sat, 09 Sep 2017 03:03:02 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Sat, 09 Sep 2017 03:03:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Sep 2017 03:03:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 03:03:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 09 Sep 2017 03:03:09 GMT
CMD ["rabbitmq-server"]
# Sat, 09 Sep 2017 03:03:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 09 Sep 2017 03:03:20 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d1f7cb33d030873ce67985178e017cf76b8615e36c7e9213fda4308e8214a`  
		Last Modified: Sat, 09 Sep 2017 03:03:39 GMT  
		Size: 4.1 MB (4075190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d563980d836cdeb8b18f35f005a3bf20e016369956d96b5738ab23344f689`  
		Last Modified: Sat, 09 Sep 2017 03:03:37 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2667d8cce687eb930ed23a63969bc98a124dbcdfa61514de284b26bdd5c12d30`  
		Last Modified: Sat, 09 Sep 2017 03:03:36 GMT  
		Size: 919.5 KB (919509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359e3bdc9c490688f368c3da21e357706ea651d5f4ac77e8a98f04d883725214`  
		Last Modified: Sat, 09 Sep 2017 03:03:41 GMT  
		Size: 25.0 MB (25042765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f688e1fcfb13b6ef55b3d78c5a8c535da75e4d0e96b6dfc1b4a518236ab265`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6f264e2329a3a73c1cde7d673337f22b1d2a4bba78420b00c4b027e46bf4a3`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a311efa966f8577d3366dab49d3f03dc6b04936f7d9b771a2a8f244a75a5ff18`  
		Last Modified: Sat, 09 Sep 2017 03:03:37 GMT  
		Size: 6.9 MB (6890624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d970bbf4a330af77b56a88e199f6b3420f4cfb7208a9e27ef2729274544b66`  
		Last Modified: Sat, 09 Sep 2017 03:03:32 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118c02def053984774364855947eb9e0c542fd9dca927c062211fb2f365e4a60`  
		Last Modified: Sat, 09 Sep 2017 03:03:32 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc19986c73aa53ffe90538c6abb09e63ea9e4780820c353c46f457da2816162c`  
		Last Modified: Sat, 09 Sep 2017 03:03:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a7577446eac3f4839cbee92252e592b77a3e826917673b9927fb3c130f6acb`  
		Last Modified: Sat, 09 Sep 2017 03:03:32 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94ac4a28720f26740f5469cafa8056c51712cc852515186ca36f9d30e0ca8c3`  
		Last Modified: Sat, 09 Sep 2017 03:03:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961eea03f255985225efcdd946a869b99e107295107cb6bb62392ced26b563b5`  
		Last Modified: Sat, 09 Sep 2017 03:04:18 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:706baa08d1162cd8b3978cc35f4b8054fc762b365484675bb96cfa9f0e03ef61
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63900533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fcc0ac0d497598bcc41eec2f982a2106515355bb3e82a6274b2782c41a06e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:18:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:18:16 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 17:18:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:18:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 17:19:02 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:19:03 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 17:19:07 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 17:19:07 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 08 Sep 2017 17:19:07 GMT
ENV RABBITMQ_VERSION=3.6.11
# Fri, 08 Sep 2017 17:19:07 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Fri, 08 Sep 2017 17:19:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:19:15 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:19:15 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 08 Sep 2017 17:19:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 08 Sep 2017 17:19:16 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 08 Sep 2017 17:19:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 08 Sep 2017 17:19:18 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 08 Sep 2017 17:19:20 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 08 Sep 2017 17:19:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 17:19:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 17:19:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 08 Sep 2017 17:19:21 GMT
CMD ["rabbitmq-server"]
# Fri, 08 Sep 2017 17:19:26 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 08 Sep 2017 17:19:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af682eb40771833b2e56648c8c1f01ecd94f04c826f86d5adb47f44b8956adc2`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 4.8 MB (4804024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af7b9b4d4a547cc0e0fb1463ba275401d5a51b63d605c554bd181b5b31a0d5`  
		Last Modified: Fri, 08 Sep 2017 17:19:36 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870f9f6c5d7404e44efe1dc21317b5bb3666adc79a386bd0446f701c976776db`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 931.5 KB (931532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73494470c557dfa90ae0e6c205c0a308a89c35b61d3e449bf54f41a5c9381102`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 27.8 MB (27818774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18234d7343e5f45c79ad0cda4e91e7d0aaa88cc2cd6d1014ffcc3671ac5da2e5`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51469fe3c10415438b313e5bf8d55d7bea711b3bd5a6292c66b323749ebce6f`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3a49fbf24f98dac48da44627974ecb3bc2b0671f9967f5779b853927cb8b83`  
		Last Modified: Fri, 08 Sep 2017 17:19:35 GMT  
		Size: 7.2 MB (7206120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8a12fa33bdb644f6b58519d46b89b29cb3091f2d6abe4a7156887a1c57a71c`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff800f691d90cab49ce0ede4bd1baed3455cb01aa74272aa31ef7ca8d3e2040`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da22f5b8ac49644fd24208447c8db8dc61d13ddb5ed7e81276b1d022bd7fbf2`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25186e45c90a1e90b41b9024132a2920cfb4083a9aca883bc1421c2089cd2da0`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 4.1 KB (4068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafa7b8be3defd390e06fa0324372841b244cf824db184d8694707bed7fd339d`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46d4798d148f17098b48c0c9110856daccd4a74397565775239cf3d1ead3a4c`  
		Last Modified: Fri, 08 Sep 2017 17:20:02 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:14ed33ec0e32bb6b1321b48b2b51c960127b58cdd0787f60e4394a02bdaf9af6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60363351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de34a169f6feae4c98b349af1c7a5a1e90cfded1f540f43d7529c07d0470272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:12:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:12:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 07:12:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:12:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:13:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:13:14 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 07:13:17 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:13:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 08 Sep 2017 07:13:18 GMT
ENV RABBITMQ_VERSION=3.6.11
# Fri, 08 Sep 2017 07:13:18 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Fri, 08 Sep 2017 07:13:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:13:27 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:13:27 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 08 Sep 2017 07:13:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 08 Sep 2017 07:13:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 08 Sep 2017 07:13:28 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 08 Sep 2017 07:13:29 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 08 Sep 2017 07:13:29 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:13:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:13:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 08 Sep 2017 07:13:31 GMT
CMD ["rabbitmq-server"]
# Fri, 08 Sep 2017 07:13:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 08 Sep 2017 07:13:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9f9c3f65f8623995e82dca85129c63aebf311a1f7b80fdde7eb1b1a6a9a7c4`  
		Last Modified: Fri, 08 Sep 2017 07:13:52 GMT  
		Size: 4.5 MB (4530037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e766d543dae983ec5d1fb0a8ece5da0c790574ad27de51775826875e63e48cc6`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7482794ab6a0465927e4cef738eceacc49e28b4e8f325f0f6153f16df398d12e`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 938.0 KB (938009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8dce71bb341d4baafcc9c8986c3cce6156dc353505e6dc9c821e4330b868da`  
		Last Modified: Fri, 08 Sep 2017 07:13:54 GMT  
		Size: 25.6 MB (25619550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753d738c05295037a1c7f7c66dd9faae22257631385c9b9291d4e46f8679e724`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d70befe6ae825e874830dfdf77e8090dfc7fcaa9b321b8f30a06db9d502564`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0617da482178d49a6606c3d3231dde4870fa59445484ac03e2931992d7f4b8`  
		Last Modified: Fri, 08 Sep 2017 07:13:51 GMT  
		Size: 6.9 MB (6923294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87c2378f01be9656ef5cd448fca2b5c6b174ba62e144c1ee33c9236f0f3b661`  
		Last Modified: Fri, 08 Sep 2017 07:13:48 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb1c13ea928f5fd554434a1962b0e518554d35c4f0303ae62d1545b5a273d04`  
		Last Modified: Fri, 08 Sep 2017 07:13:48 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952cabbc980b4a3dcc189944747c53f80b01170320e9b77076dcd75cdaf8bc04`  
		Last Modified: Fri, 08 Sep 2017 07:13:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b673c292a2fdf6ba66e6b80a0ddfba8e2c98c05ea54c5424edc4e6ec5e115fa`  
		Last Modified: Fri, 08 Sep 2017 07:13:48 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739e91e9ff1a55534c78abcd0d9a4b7ad6ee7a87724df52026ed467a79fa2fc2`  
		Last Modified: Fri, 08 Sep 2017 07:13:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddd01e6266efa1dbd648a4d39d89bdb0844c00ce290a466a9b9671979dc8881`  
		Last Modified: Fri, 08 Sep 2017 07:14:06 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
