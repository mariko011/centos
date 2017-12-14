## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:ff906f49d217223e25ce9f1c57125324633e17d1a46759b724b8f12d883d11e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:efe64678d6eba512a0f996f0d67ccdc530ca8db92392191185f87409437f303e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75646470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8175b3575a934b9fdd10e5f1e48840a9baa461a132ec7738a4bc1ff27796888`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:25:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:25:37 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:25:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_VERSION=3.7.0
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.0
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.0-1
# Tue, 12 Dec 2017 23:25:58 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:58 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:25:58 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Dec 2017 23:25:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Dec 2017 23:26:00 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Dec 2017 23:26:00 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Dec 2017 23:26:01 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 13 Dec 2017 22:40:42 GMT
COPY file:843c68b6ba52a693de786b397790538b883e951bde3904ddd66222e1566d48ff in /usr/local/bin/ 
# Wed, 13 Dec 2017 22:40:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Dec 2017 22:40:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 22:40:44 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Dec 2017 22:40:44 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Dec 2017 22:40:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Dec 2017 22:41:10 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 13 Dec 2017 22:41:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ec28761801c452cb366afa1cbb7946bada161eb77899d9ca9a59a219e9ff42`  
		Last Modified: Tue, 12 Dec 2017 23:26:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa44aa9074bb2e24649ebe2dae2f852f9443a052fd9cdfd4d11bcd86d967f7`  
		Last Modified: Tue, 12 Dec 2017 23:26:38 GMT  
		Size: 27.3 MB (27330555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480579e75ac24f07c015f449900040624b805a839bc5564a2c9c4fe014b3d919`  
		Last Modified: Tue, 12 Dec 2017 23:26:37 GMT  
		Size: 12.7 MB (12746249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc8ac37671d94a4ec7f205fa6a6432cfeaa9fd797e78f4caf0dc6d31aa6ac2c`  
		Last Modified: Tue, 12 Dec 2017 23:26:33 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3c40aac43a9a7094657dc32099455ecbdf1a2b7419f2bd4b1c7d9b02e23bf6`  
		Last Modified: Tue, 12 Dec 2017 23:26:33 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da710c0baa4a5c5434a65891137de63ff23dff0ce024e55c72d1d2c638dcd7`  
		Last Modified: Tue, 12 Dec 2017 23:26:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c62d538e8a8b2774884ab96ac1741c86d6e2ea05ee70bd9874612ccabb53db6`  
		Last Modified: Wed, 13 Dec 2017 22:42:59 GMT  
		Size: 4.2 KB (4189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364111b96c8936047b9ca6ab65f247cad313c23973ae5dc96669cb188175f637`  
		Last Modified: Wed, 13 Dec 2017 22:42:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e027a186b58f0365945befb4bcd73245e2ed1b9d447fedab2310fc425467af13`  
		Last Modified: Wed, 13 Dec 2017 22:43:40 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b597a9ec39cda384fe32119ad0bf979e6a15dae620c3fe173e9ee8d162a884`  
		Last Modified: Wed, 13 Dec 2017 22:43:43 GMT  
		Size: 7.6 MB (7622209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:98c6d78ee728ff3f0aae607b160be531121fbeba1c63695add4bdc6133b1c627
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63899903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67a55c550ae52064311e21102bbe76752ba4aeb38ac5840b5a2442f5b2912ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:15:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:15:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:15:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_VERSION=3.7.0
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.0
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.0-1
# Tue, 12 Dec 2017 23:17:25 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:17:26 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:17:26 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Dec 2017 23:17:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Dec 2017 23:17:27 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Dec 2017 23:17:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Dec 2017 23:17:30 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 12 Dec 2017 23:17:31 GMT
COPY file:c105d1b28d0bd0db50deb948b54b2b1680f0db00bb9f24188a595ab6e83d775f in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:17:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 23:17:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 23:17:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Dec 2017 23:17:33 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Dec 2017 23:17:48 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Dec 2017 23:17:48 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce50058b2ae9912872489ab639895bd412cd17a9a299fe4e208704d0ef03dd1f`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff935da4e19ec18fec56ba68c2cf72e41a4ad936934d6927c22d50d69dab`  
		Last Modified: Tue, 12 Dec 2017 23:21:56 GMT  
		Size: 24.8 MB (24837409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca05482da8024702cd8205dd0569838a100e93a08fa151675d6c05ad6dfe98f`  
		Last Modified: Tue, 12 Dec 2017 23:21:54 GMT  
		Size: 12.7 MB (12716450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d615da8792d895ad82f29fffe955d8286cb3ee4a6c7ecd6c8e81a5c339606`  
		Last Modified: Tue, 12 Dec 2017 23:21:48 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3ca58b3746fdf9143a5beb5fef0ba5526b8e424e4e24bf24c435665812fdee`  
		Last Modified: Tue, 12 Dec 2017 23:21:49 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814215c0cd05b56b925ebad566aa3169d1d9a764b537ab4c52a211a26f14c628`  
		Last Modified: Tue, 12 Dec 2017 23:21:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:539ecb2eb059f3ef453b61801b154db41737a159f7299ec5162f37052e373bb0`  
		Last Modified: Tue, 12 Dec 2017 23:21:48 GMT  
		Size: 4.2 KB (4193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a471989188169e9b8b6743b84c5cdd4a4061ba8e3443c6efd79cd00657af49e`  
		Last Modified: Tue, 12 Dec 2017 23:21:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92f9ba3a262c0a2e03ecf5fd0e9d8e214846f336041f90a1dc01fbe7f7f8615`  
		Last Modified: Tue, 12 Dec 2017 23:22:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:65c0a9d9c996b8b066bab7038637a85429bab33cc2f2d032560e0f2e54bdb362
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68489184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72186b58119cbe5ec01f7f06a97848bf75ef06ebd0557839d93a963f9b2c007`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:08:31 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:09:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:09:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 13 Dec 2017 14:09:06 GMT
ENV RABBITMQ_VERSION=3.7.0
# Wed, 13 Dec 2017 14:09:06 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.0
# Wed, 13 Dec 2017 14:09:06 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.0-1
# Wed, 13 Dec 2017 14:10:01 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:10:02 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 14:10:02 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Dec 2017 14:10:03 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Dec 2017 14:10:04 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Dec 2017 14:10:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Dec 2017 14:10:06 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 14:08:29 GMT
COPY file:843c68b6ba52a693de786b397790538b883e951bde3904ddd66222e1566d48ff in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:08:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 14:08:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 14:08:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 14:08:44 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 14:09:22 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 14:09:48 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 14:09:55 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6235a7077293b77a5763b50aeb4468250c3243e9a414e68ade282ba5457045`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de253191eb0702e608f45381e5cf3de24ea4a760bc740b04a51e8bd4f577b6c7`  
		Last Modified: Wed, 13 Dec 2017 14:13:32 GMT  
		Size: 24.5 MB (24541142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1961a704a3eac9091f3862fef352c5ffacb8f9b2884473b802907f935f9e42`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 12.7 MB (12688313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d63d737da1e284e326e1f62461d662947de88e5764c9fcba79572787f545d5`  
		Last Modified: Wed, 13 Dec 2017 14:13:26 GMT  
		Size: 2.3 KB (2267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac8d0d43df303db70816c640fb291661c74eb4ff1a39e018e38ae9ea832075b`  
		Last Modified: Wed, 13 Dec 2017 14:13:26 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ffb730a481825b7e59223e112c8c7d5ceb4794be2501a1517f0fe5c2d7efb5`  
		Last Modified: Wed, 13 Dec 2017 14:13:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ef3e932dadafd55df02b876ae2ac153d7880e14e592c6a79baaad5122a3874`  
		Last Modified: Thu, 14 Dec 2017 14:13:47 GMT  
		Size: 4.2 KB (4193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1058c7af322e68e87f3f7539eebbdcf5d2803709de7b0c51b59c29251428929d`  
		Last Modified: Thu, 14 Dec 2017 14:13:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484e71000e203f59c61c3c55dc2d635556e0861bca72c1cb8ff5fab1e81bb243`  
		Last Modified: Thu, 14 Dec 2017 14:15:20 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77476b058c8415627e29e230753b42efec19f71e9cf376cdc1982a5c37ed4f33`  
		Last Modified: Thu, 14 Dec 2017 14:15:20 GMT  
		Size: 7.2 MB (7182575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:0d1cbe09b0960b4443b8b0a48c3d1617d85329f37627db8d5f63a42392ef8d5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70282938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b43b9b10a2a06a20c45be93ce33cfd6b90f5b04e487d09a66a5a71e3c2856d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:54:27 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:55:29 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:55:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:55:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_VERSION=3.7.0
# Wed, 13 Dec 2017 14:55:32 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.0
# Wed, 13 Dec 2017 14:55:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.0-1
# Wed, 13 Dec 2017 14:56:22 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 14:56:23 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Dec 2017 14:56:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Dec 2017 14:56:26 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Dec 2017 14:56:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Dec 2017 14:56:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 14:53:31 GMT
COPY file:843c68b6ba52a693de786b397790538b883e951bde3904ddd66222e1566d48ff in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:53:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 14:53:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 14:53:35 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 14:53:36 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 14:53:59 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 14:54:27 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 14:54:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf8546d6f1127383410e3244beb4a3873b3305deab0f469ac13d1d0b112dee1`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe4d57c4c33847b3343b87c3d4b7f0efe523535a70b98185a7237848d3780d`  
		Last Modified: Wed, 13 Dec 2017 15:03:23 GMT  
		Size: 24.8 MB (24762935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b0b4bad71865ffd051ae6ae0f91a9b75b0ab3498986501309260ddb9e24fcc`  
		Last Modified: Wed, 13 Dec 2017 15:03:20 GMT  
		Size: 12.7 MB (12709876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67179561590eee0692c7906da312516abbd25b2b392534f0bfafed9bd0818303`  
		Last Modified: Wed, 13 Dec 2017 15:03:18 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b48bfe82561f7d7c44fa56bea46d94cbc0052eb3fb853410c407ecec6a82eaa`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d99729c27cd387b006cb9dc27c0fca1babcbbeed19a6e6c93e977eda0dac93`  
		Last Modified: Wed, 13 Dec 2017 15:03:17 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07421d21af0a2465c5458b0cd42daa2189e44a6cdf3afb814641547b80cb5a23`  
		Last Modified: Thu, 14 Dec 2017 14:59:17 GMT  
		Size: 4.2 KB (4193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a12aa291736ba22435e8bcef55febd862f9603928c929175c480fc216d303c`  
		Last Modified: Thu, 14 Dec 2017 14:59:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38b5a2c7a837a384d05742218783ce71714bcc8511672bba592475b055bf81f`  
		Last Modified: Thu, 14 Dec 2017 15:00:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66fffce03d8c275008b34730758599acfde671ba09da0cf7e954e241b21769a`  
		Last Modified: Thu, 14 Dec 2017 15:00:36 GMT  
		Size: 7.5 MB (7474811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:ca1a53579eca356c6364764a1d94dfc464d67e4b434aca6a57e5491cdb988bfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76869659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff7fd0209092f75c0ff688c3cd72f5bbeab86921770d803d716293690a74146`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:14:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 21:15:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:16:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:16:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_VERSION=3.7.0
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.0
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.0-1
# Tue, 12 Dec 2017 21:19:46 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:19:47 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 21:19:47 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Dec 2017 21:19:48 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Dec 2017 21:19:49 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Dec 2017 21:19:50 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Dec 2017 21:19:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 14:34:49 GMT
COPY file:843c68b6ba52a693de786b397790538b883e951bde3904ddd66222e1566d48ff in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:34:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 14:34:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 14:34:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 14:34:51 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 14:37:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 14:37:47 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 14:41:59 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e040f21d8962aea7005a7379e4852e408931ff4c1985b8debde30f1bcf14ca`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bbc5be701d46339ee9aa060f79d61ef2ea60c0a862dc9663bac7b97a8e169`  
		Last Modified: Tue, 12 Dec 2017 21:33:12 GMT  
		Size: 27.5 MB (27520131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b6a22b1c298a7447a0383c535ef89874d89e40d6519f2a13a8fd431e079e88`  
		Last Modified: Tue, 12 Dec 2017 21:33:07 GMT  
		Size: 12.8 MB (12766200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565c1d4f026ba3fb70bb0b0c7fef8d769396c1a199465dee3ea713ce72aa8018`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 2.3 KB (2267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa1033d6bf863c3c23f85e731ecc752cfc001550f00ac5efdbdee227712466a`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22861ee8f8b6b22385b805bf492d9ec0bfc7ff97de4aabe26fe09c5871c1d681`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99124e730a274c85750de2e34675d2612c63da0503768829ff00c4120f89385`  
		Last Modified: Thu, 14 Dec 2017 14:56:25 GMT  
		Size: 4.2 KB (4192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29792dcaa05b04d7867e6b280adcf978ca06a000a9a1fd7c76af3ed8e41c729`  
		Last Modified: Thu, 14 Dec 2017 14:56:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87344ffd03b95e1a930fbce6883745e4066b52c0e96dff18463bb96e531219ba`  
		Last Modified: Thu, 14 Dec 2017 14:57:44 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d65796cf322e969647fc430baa878b0376a887c898d3ece1474450e161a1663`  
		Last Modified: Thu, 14 Dec 2017 14:57:48 GMT  
		Size: 7.7 MB (7714056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:4291b55c678a7f35502320707e49d3577faad26fe328fc62197c43510d4226e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73597567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc5e5cfa68d215408e57006020b440d1f9797b8c5781d6c7cc2638589b243ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 08:14:18 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 08:15:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:15:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:15:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:15:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 13 Dec 2017 08:16:00 GMT
ENV RABBITMQ_VERSION=3.7.0
# Wed, 13 Dec 2017 08:16:01 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.0
# Wed, 13 Dec 2017 08:16:03 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.0-1
# Wed, 13 Dec 2017 08:17:12 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:17:13 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 08:17:14 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Dec 2017 08:17:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Dec 2017 08:17:20 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Dec 2017 08:17:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Dec 2017 08:17:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 08:11:37 GMT
COPY file:843c68b6ba52a693de786b397790538b883e951bde3904ddd66222e1566d48ff in /usr/local/bin/ 
# Thu, 14 Dec 2017 08:11:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 08:11:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 08:11:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 08:11:44 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 08:11:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 08:12:33 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 08:12:35 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099a031f5f0df72a460e1d66fecbf4ebbbf062936d2d9a8474264bb64a6a9648`  
		Last Modified: Wed, 13 Dec 2017 08:25:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb365591fec586b108056a7461f34fbbecd7f579b59712c6a72e43c3f8a1ef2`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 25.0 MB (25011533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf56ed971fe9f331c276c16c968fc5f541c3a89b90707608199fb1fcf59b3d0`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 12.7 MB (12728456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a55767ae52f78bd2ba83bfa1865fa7353bdd306f466799fd57b679c6f674b1`  
		Last Modified: Wed, 13 Dec 2017 08:25:09 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0285a254028992aaf0430c9851c39a86518d262e40f13847575513c51ab021b8`  
		Last Modified: Wed, 13 Dec 2017 08:25:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28d8132d4a4f223a7fa2f06bddf00a5067b12ea83e202b735e8b1225bbd313d`  
		Last Modified: Wed, 13 Dec 2017 08:25:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f2df5180e399d101bd2cc407c8b4006e1afec53124bc5f46ce52b754c8dd90`  
		Last Modified: Thu, 14 Dec 2017 08:18:27 GMT  
		Size: 4.2 KB (4193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f79a8ca7e259b091fdc813ecd413140d760d40f40e8089c96194c95bfe1bfd2`  
		Last Modified: Thu, 14 Dec 2017 08:18:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e92d0ec8821955875f7ecd2a17abbe9da7d5a49dd0adead9407c3fe137dac2`  
		Last Modified: Thu, 14 Dec 2017 08:18:56 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c38242ea61616c0f9c9ee1697b23ae8258d3f5936d1c2723b3efdc8fda541e`  
		Last Modified: Thu, 14 Dec 2017 08:18:59 GMT  
		Size: 7.8 MB (7825141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
