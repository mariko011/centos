## `logstash:latest`

```console
$ docker pull logstash@sha256:c269788e0bfefed9f978ecde80debbe84ffd2561f5a9af480b1710a1cc0a5dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:latest` - linux; amd64

```console
$ docker pull logstash@sha256:1f359d9fe06f375201e5db1a4e9037cc6dfc2dad2ad5bf9f28a47207c7ea272c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.9 MB (334907769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad308f7082df08efe7ba73471ef17edb912daa66c7ba3b37074d01672a759a2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:48:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:48:36 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:48:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:50:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:50:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 16:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:48:22 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Sat, 04 Nov 2017 16:48:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:48:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 16:48:34 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 16:48:35 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Sat, 04 Nov 2017 16:48:35 GMT
ENV LOGSTASH_VERSION=5.6.3
# Sat, 04 Nov 2017 16:48:35 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.3-1
# Sat, 04 Nov 2017 16:48:55 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:48:56 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:48:56 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Sat, 04 Nov 2017 16:48:57 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Sat, 04 Nov 2017 16:48:57 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Sat, 04 Nov 2017 16:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:48:58 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3adc05996e38a93e8e2585cc5df22a66fac151eee215f3491bee91d0b97e52`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 852.3 KB (852282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44753faac15ca98504aa297b8b2bbc354d5cf29045d0915fa02aea4489ec4490`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1233f777b5b8e4deb49038055315e320f02e9eb63e2a3ecc4c3c589a61e9009`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bcc5b1cf03a07e6f520a69fa7663b44c99f0933da944a5d806f9b366f48a3`  
		Last Modified: Sat, 04 Nov 2017 06:03:40 GMT  
		Size: 165.4 MB (165393338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc48ebfa00c33dd298e1517555e5cf90655e3b454abc25690086072c4c43cb5`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 272.1 KB (272062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ced3a2853914726d907269031dbb005a28927bb3635f18f8550b910186e00f`  
		Last Modified: Sat, 04 Nov 2017 16:50:52 GMT  
		Size: 1.6 MB (1588333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6121ab69d3be82758b1330a2b0bd816948bc55895cdda838fc161a52697b5f1`  
		Last Modified: Sat, 04 Nov 2017 16:50:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814f65c197fce242f41319adb56b5f6c29bb23ca44a894289873520059bf2f84`  
		Last Modified: Sat, 04 Nov 2017 16:50:51 GMT  
		Size: 500.9 KB (500904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5112afd5df98e40d74f65865757bcb6985704374adb18f4fe554f2a5173f8c46`  
		Last Modified: Sat, 04 Nov 2017 16:50:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5f600a85e4dca1cc876623a9333fa0293aeab6b8248b075c34a465585a169d`  
		Last Modified: Sat, 04 Nov 2017 16:50:49 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95248517bb24358b59977ddc42a2702a224ec6410cd40a1edb56742f1651d133`  
		Last Modified: Sat, 04 Nov 2017 16:51:02 GMT  
		Size: 105.7 MB (105724348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8784d3f3b35318e81ae2915fe56480a555fc6f9eb6717e7806093638bec0ddb1`  
		Last Modified: Sat, 04 Nov 2017 16:50:49 GMT  
		Size: 2.7 KB (2665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c9401eea30ce80c4d2bfbb4bbe618a50affc6af95df4bd5332a7f0cd76c05`  
		Last Modified: Sat, 04 Nov 2017 16:50:49 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
