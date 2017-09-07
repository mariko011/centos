<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jruby`

-	[`jruby:latest`](#jrubylatest)
-	[`jruby:9`](#jruby9)
-	[`jruby:9.1`](#jruby91)
-	[`jruby:9.1-jre`](#jruby91-jre)
-	[`jruby:9.1.13`](#jruby9113)
-	[`jruby:9.1.13-jre`](#jruby9113-jre)
-	[`jruby:9.1.13.0`](#jruby91130)
-	[`jruby:9.1.13.0-jre`](#jruby91130-jre)
-	[`jruby:9-alpine`](#jruby9-alpine)
-	[`jruby:9.1-alpine`](#jruby91-alpine)
-	[`jruby:9.1-jre-alpine`](#jruby91-jre-alpine)
-	[`jruby:9.1.13-alpine`](#jruby9113-alpine)
-	[`jruby:9.1.13-jre-alpine`](#jruby9113-jre-alpine)
-	[`jruby:9.1.13.0-alpine`](#jruby91130-alpine)
-	[`jruby:9.1.13.0-jre-alpine`](#jruby91130-jre-alpine)
-	[`jruby:9.1-jdk`](#jruby91-jdk)
-	[`jruby:9.1.13-jdk`](#jruby9113-jdk)
-	[`jruby:9.1.13.0-jdk`](#jruby91130-jdk)
-	[`jruby:9.1-jdk-alpine`](#jruby91-jdk-alpine)
-	[`jruby:9.1.13-jdk-alpine`](#jruby9113-jdk-alpine)
-	[`jruby:9.1.13.0-jdk-alpine`](#jruby91130-jdk-alpine)
-	[`jruby:9-onbuild`](#jruby9-onbuild)
-	[`jruby:9.1-onbuild`](#jruby91-onbuild)
-	[`jruby:9.1.13-onbuild`](#jruby9113-onbuild)
-	[`jruby:9.1.13.0-onbuild`](#jruby91130-onbuild)
-	[`jruby:1.7`](#jruby17)
-	[`jruby:1.7.27`](#jruby1727)
-	[`jruby:1.7-jre`](#jruby17-jre)
-	[`jruby:1.7.27-jre`](#jruby1727-jre)
-	[`jruby:1.7-jdk`](#jruby17-jdk)
-	[`jruby:1.7.27-jdk`](#jruby1727-jdk)
-	[`jruby:1.7-onbuild`](#jruby17-onbuild)
-	[`jruby:1.7.27-onbuild`](#jruby1727-onbuild)

## `jruby:latest`

```console
$ docker pull jruby@sha256:a4208f5943b4871eb61534a5d400117cb956a8219dace5099dc39fd7f1087e54
```

-	Platforms:
	-	linux; amd64

### `jruby:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144215586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4af5cc1bfae36c2d8ae2d77cae8cc0a9bd5fbb5bf5c1e990645a96b810e28a6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:29:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:29:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:29:50 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:29:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:29:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d1e78f9c0fcccb93ffc32f50dce9edb1294f83f3f19176f7be9dd0f9a4ede`  
		Last Modified: Thu, 07 Sep 2017 20:31:53 GMT  
		Size: 21.1 MB (21066720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806aa8631e8a69be933c72e612f9c294994bf6853286f4cc4d9062766b0d8991`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1830a5b25c313d4a1d784ce0ee0a3096b57f3b4cfd073d5fd0ad22d38f1ddd5b`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 675.1 KB (675119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6803ff0a9a21ecf0e7ad7b99cf9cb0bfecd4dcae3ca556b95f487f066c6788`  
		Last Modified: Thu, 07 Sep 2017 20:31:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9`

```console
$ docker pull jruby@sha256:a4208f5943b4871eb61534a5d400117cb956a8219dace5099dc39fd7f1087e54
```

-	Platforms:
	-	linux; amd64

### `jruby:9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144215586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4af5cc1bfae36c2d8ae2d77cae8cc0a9bd5fbb5bf5c1e990645a96b810e28a6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:29:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:29:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:29:50 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:29:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:29:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d1e78f9c0fcccb93ffc32f50dce9edb1294f83f3f19176f7be9dd0f9a4ede`  
		Last Modified: Thu, 07 Sep 2017 20:31:53 GMT  
		Size: 21.1 MB (21066720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806aa8631e8a69be933c72e612f9c294994bf6853286f4cc4d9062766b0d8991`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1830a5b25c313d4a1d784ce0ee0a3096b57f3b4cfd073d5fd0ad22d38f1ddd5b`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 675.1 KB (675119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6803ff0a9a21ecf0e7ad7b99cf9cb0bfecd4dcae3ca556b95f487f066c6788`  
		Last Modified: Thu, 07 Sep 2017 20:31:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:a4208f5943b4871eb61534a5d400117cb956a8219dace5099dc39fd7f1087e54
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144215586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4af5cc1bfae36c2d8ae2d77cae8cc0a9bd5fbb5bf5c1e990645a96b810e28a6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:29:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:29:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:29:50 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:29:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:29:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d1e78f9c0fcccb93ffc32f50dce9edb1294f83f3f19176f7be9dd0f9a4ede`  
		Last Modified: Thu, 07 Sep 2017 20:31:53 GMT  
		Size: 21.1 MB (21066720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806aa8631e8a69be933c72e612f9c294994bf6853286f4cc4d9062766b0d8991`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1830a5b25c313d4a1d784ce0ee0a3096b57f3b4cfd073d5fd0ad22d38f1ddd5b`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 675.1 KB (675119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6803ff0a9a21ecf0e7ad7b99cf9cb0bfecd4dcae3ca556b95f487f066c6788`  
		Last Modified: Thu, 07 Sep 2017 20:31:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:a4208f5943b4871eb61534a5d400117cb956a8219dace5099dc39fd7f1087e54
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144215586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4af5cc1bfae36c2d8ae2d77cae8cc0a9bd5fbb5bf5c1e990645a96b810e28a6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:29:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:29:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:29:50 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:29:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:29:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d1e78f9c0fcccb93ffc32f50dce9edb1294f83f3f19176f7be9dd0f9a4ede`  
		Last Modified: Thu, 07 Sep 2017 20:31:53 GMT  
		Size: 21.1 MB (21066720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806aa8631e8a69be933c72e612f9c294994bf6853286f4cc4d9062766b0d8991`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1830a5b25c313d4a1d784ce0ee0a3096b57f3b4cfd073d5fd0ad22d38f1ddd5b`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 675.1 KB (675119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6803ff0a9a21ecf0e7ad7b99cf9cb0bfecd4dcae3ca556b95f487f066c6788`  
		Last Modified: Thu, 07 Sep 2017 20:31:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13`

```console
$ docker pull jruby@sha256:a4208f5943b4871eb61534a5d400117cb956a8219dace5099dc39fd7f1087e54
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144215586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4af5cc1bfae36c2d8ae2d77cae8cc0a9bd5fbb5bf5c1e990645a96b810e28a6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:29:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:29:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:29:50 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:29:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:29:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d1e78f9c0fcccb93ffc32f50dce9edb1294f83f3f19176f7be9dd0f9a4ede`  
		Last Modified: Thu, 07 Sep 2017 20:31:53 GMT  
		Size: 21.1 MB (21066720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806aa8631e8a69be933c72e612f9c294994bf6853286f4cc4d9062766b0d8991`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1830a5b25c313d4a1d784ce0ee0a3096b57f3b4cfd073d5fd0ad22d38f1ddd5b`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 675.1 KB (675119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6803ff0a9a21ecf0e7ad7b99cf9cb0bfecd4dcae3ca556b95f487f066c6788`  
		Last Modified: Thu, 07 Sep 2017 20:31:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jre`

```console
$ docker pull jruby@sha256:a4208f5943b4871eb61534a5d400117cb956a8219dace5099dc39fd7f1087e54
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jre` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144215586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4af5cc1bfae36c2d8ae2d77cae8cc0a9bd5fbb5bf5c1e990645a96b810e28a6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:29:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:29:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:29:50 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:29:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:29:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d1e78f9c0fcccb93ffc32f50dce9edb1294f83f3f19176f7be9dd0f9a4ede`  
		Last Modified: Thu, 07 Sep 2017 20:31:53 GMT  
		Size: 21.1 MB (21066720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806aa8631e8a69be933c72e612f9c294994bf6853286f4cc4d9062766b0d8991`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1830a5b25c313d4a1d784ce0ee0a3096b57f3b4cfd073d5fd0ad22d38f1ddd5b`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 675.1 KB (675119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6803ff0a9a21ecf0e7ad7b99cf9cb0bfecd4dcae3ca556b95f487f066c6788`  
		Last Modified: Thu, 07 Sep 2017 20:31:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0`

```console
$ docker pull jruby@sha256:a4208f5943b4871eb61534a5d400117cb956a8219dace5099dc39fd7f1087e54
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144215586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4af5cc1bfae36c2d8ae2d77cae8cc0a9bd5fbb5bf5c1e990645a96b810e28a6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:29:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:29:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:29:50 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:29:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:29:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d1e78f9c0fcccb93ffc32f50dce9edb1294f83f3f19176f7be9dd0f9a4ede`  
		Last Modified: Thu, 07 Sep 2017 20:31:53 GMT  
		Size: 21.1 MB (21066720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806aa8631e8a69be933c72e612f9c294994bf6853286f4cc4d9062766b0d8991`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1830a5b25c313d4a1d784ce0ee0a3096b57f3b4cfd073d5fd0ad22d38f1ddd5b`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 675.1 KB (675119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6803ff0a9a21ecf0e7ad7b99cf9cb0bfecd4dcae3ca556b95f487f066c6788`  
		Last Modified: Thu, 07 Sep 2017 20:31:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jre`

```console
$ docker pull jruby@sha256:a4208f5943b4871eb61534a5d400117cb956a8219dace5099dc39fd7f1087e54
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jre` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144215586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4af5cc1bfae36c2d8ae2d77cae8cc0a9bd5fbb5bf5c1e990645a96b810e28a6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:29 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:29:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:29:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:29:50 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:29:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:29:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:29:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:29:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d1e78f9c0fcccb93ffc32f50dce9edb1294f83f3f19176f7be9dd0f9a4ede`  
		Last Modified: Thu, 07 Sep 2017 20:31:53 GMT  
		Size: 21.1 MB (21066720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806aa8631e8a69be933c72e612f9c294994bf6853286f4cc4d9062766b0d8991`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1830a5b25c313d4a1d784ce0ee0a3096b57f3b4cfd073d5fd0ad22d38f1ddd5b`  
		Last Modified: Thu, 07 Sep 2017 20:31:50 GMT  
		Size: 675.1 KB (675119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6803ff0a9a21ecf0e7ad7b99cf9cb0bfecd4dcae3ca556b95f487f066c6788`  
		Last Modified: Thu, 07 Sep 2017 20:31:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:ba06b71d85957370ce7581f324ff513e4d3c60904c697da911a06b76bb034a30
```

-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79220122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a079502a23452872fc835542ded9ce2244b39cdfdd387203f8501ff4b7b7cc82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:06 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 07 Sep 2017 20:30:06 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:07 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:20 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5420dba2a37fa573dfac8da7c955993ac359eaa8b511f2991668d2914c4fe1`  
		Last Modified: Thu, 07 Sep 2017 20:33:05 GMT  
		Size: 21.2 MB (21150590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254945fab79342c39f44165cceb50b706e3af6569ac4fc4c959a5396422122a2`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564831416b7630c884df9210926201f0ea5538f3b5aaf386cfea9d5fe266eb0b`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 675.1 KB (675107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2b083c304b226bd4ab6d1f527b0418bcbe7bcfbc2d976ba40c2ddf3a555942`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:ba06b71d85957370ce7581f324ff513e4d3c60904c697da911a06b76bb034a30
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79220122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a079502a23452872fc835542ded9ce2244b39cdfdd387203f8501ff4b7b7cc82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:06 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 07 Sep 2017 20:30:06 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:07 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:20 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5420dba2a37fa573dfac8da7c955993ac359eaa8b511f2991668d2914c4fe1`  
		Last Modified: Thu, 07 Sep 2017 20:33:05 GMT  
		Size: 21.2 MB (21150590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254945fab79342c39f44165cceb50b706e3af6569ac4fc4c959a5396422122a2`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564831416b7630c884df9210926201f0ea5538f3b5aaf386cfea9d5fe266eb0b`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 675.1 KB (675107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2b083c304b226bd4ab6d1f527b0418bcbe7bcfbc2d976ba40c2ddf3a555942`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:ba06b71d85957370ce7581f324ff513e4d3c60904c697da911a06b76bb034a30
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79220122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a079502a23452872fc835542ded9ce2244b39cdfdd387203f8501ff4b7b7cc82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:06 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 07 Sep 2017 20:30:06 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:07 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:20 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5420dba2a37fa573dfac8da7c955993ac359eaa8b511f2991668d2914c4fe1`  
		Last Modified: Thu, 07 Sep 2017 20:33:05 GMT  
		Size: 21.2 MB (21150590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254945fab79342c39f44165cceb50b706e3af6569ac4fc4c959a5396422122a2`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564831416b7630c884df9210926201f0ea5538f3b5aaf386cfea9d5fe266eb0b`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 675.1 KB (675107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2b083c304b226bd4ab6d1f527b0418bcbe7bcfbc2d976ba40c2ddf3a555942`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-alpine`

```console
$ docker pull jruby@sha256:ba06b71d85957370ce7581f324ff513e4d3c60904c697da911a06b76bb034a30
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79220122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a079502a23452872fc835542ded9ce2244b39cdfdd387203f8501ff4b7b7cc82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:06 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 07 Sep 2017 20:30:06 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:07 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:20 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5420dba2a37fa573dfac8da7c955993ac359eaa8b511f2991668d2914c4fe1`  
		Last Modified: Thu, 07 Sep 2017 20:33:05 GMT  
		Size: 21.2 MB (21150590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254945fab79342c39f44165cceb50b706e3af6569ac4fc4c959a5396422122a2`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564831416b7630c884df9210926201f0ea5538f3b5aaf386cfea9d5fe266eb0b`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 675.1 KB (675107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2b083c304b226bd4ab6d1f527b0418bcbe7bcfbc2d976ba40c2ddf3a555942`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jre-alpine`

```console
$ docker pull jruby@sha256:ba06b71d85957370ce7581f324ff513e4d3c60904c697da911a06b76bb034a30
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jre-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79220122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a079502a23452872fc835542ded9ce2244b39cdfdd387203f8501ff4b7b7cc82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:06 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 07 Sep 2017 20:30:06 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:07 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:20 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5420dba2a37fa573dfac8da7c955993ac359eaa8b511f2991668d2914c4fe1`  
		Last Modified: Thu, 07 Sep 2017 20:33:05 GMT  
		Size: 21.2 MB (21150590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254945fab79342c39f44165cceb50b706e3af6569ac4fc4c959a5396422122a2`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564831416b7630c884df9210926201f0ea5538f3b5aaf386cfea9d5fe266eb0b`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 675.1 KB (675107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2b083c304b226bd4ab6d1f527b0418bcbe7bcfbc2d976ba40c2ddf3a555942`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-alpine`

```console
$ docker pull jruby@sha256:ba06b71d85957370ce7581f324ff513e4d3c60904c697da911a06b76bb034a30
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79220122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a079502a23452872fc835542ded9ce2244b39cdfdd387203f8501ff4b7b7cc82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:06 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 07 Sep 2017 20:30:06 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:07 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:20 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5420dba2a37fa573dfac8da7c955993ac359eaa8b511f2991668d2914c4fe1`  
		Last Modified: Thu, 07 Sep 2017 20:33:05 GMT  
		Size: 21.2 MB (21150590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254945fab79342c39f44165cceb50b706e3af6569ac4fc4c959a5396422122a2`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564831416b7630c884df9210926201f0ea5538f3b5aaf386cfea9d5fe266eb0b`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 675.1 KB (675107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2b083c304b226bd4ab6d1f527b0418bcbe7bcfbc2d976ba40c2ddf3a555942`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jre-alpine`

```console
$ docker pull jruby@sha256:ba06b71d85957370ce7581f324ff513e4d3c60904c697da911a06b76bb034a30
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jre-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79220122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a079502a23452872fc835542ded9ce2244b39cdfdd387203f8501ff4b7b7cc82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:29:58 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:06 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 07 Sep 2017 20:30:06 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:07 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:20 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:30:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5420dba2a37fa573dfac8da7c955993ac359eaa8b511f2991668d2914c4fe1`  
		Last Modified: Thu, 07 Sep 2017 20:33:05 GMT  
		Size: 21.2 MB (21150590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254945fab79342c39f44165cceb50b706e3af6569ac4fc4c959a5396422122a2`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564831416b7630c884df9210926201f0ea5538f3b5aaf386cfea9d5fe266eb0b`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 675.1 KB (675107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2b083c304b226bd4ab6d1f527b0418bcbe7bcfbc2d976ba40c2ddf3a555942`  
		Last Modified: Thu, 07 Sep 2017 20:32:59 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:3d6784d7b1abd048b210a3f3f06cea6e559450f216e8a06025083a262757576f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.4 MB (323434177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d99d1482914d1edf042ceb864452256408efd8b399bbe79f7a512d7e3dc0fec`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:34:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:30:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:34 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:48 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:50 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a658af3f22faaaa79963f2df79d9d436b8d9b8faad7805a31584ebda0e14fe`  
		Last Modified: Thu, 27 Jul 2017 18:37:21 GMT  
		Size: 6.4 MB (6410158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b72ee35d35d34752b3b9df8b15830941f6a53b1149192f18e252982f8fef9a`  
		Last Modified: Thu, 07 Sep 2017 20:34:03 GMT  
		Size: 21.1 MB (21068337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a4f24153875aa387f3ed15dd8cdda2bbb8b4262416a8077dcfb48bd86ea23f`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7cf48e0a2ddc2a6da88529c5d252dac578f66eabec2dfda282564d7d55f135`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 675.1 KB (675128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cfc8e169a8433a28b15cd68feddac3dd334619e82bd0cf918bd655be5d0d53`  
		Last Modified: Thu, 07 Sep 2017 20:34:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jdk`

```console
$ docker pull jruby@sha256:3d6784d7b1abd048b210a3f3f06cea6e559450f216e8a06025083a262757576f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jdk` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.4 MB (323434177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d99d1482914d1edf042ceb864452256408efd8b399bbe79f7a512d7e3dc0fec`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:34:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:30:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:34 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:48 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:50 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a658af3f22faaaa79963f2df79d9d436b8d9b8faad7805a31584ebda0e14fe`  
		Last Modified: Thu, 27 Jul 2017 18:37:21 GMT  
		Size: 6.4 MB (6410158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b72ee35d35d34752b3b9df8b15830941f6a53b1149192f18e252982f8fef9a`  
		Last Modified: Thu, 07 Sep 2017 20:34:03 GMT  
		Size: 21.1 MB (21068337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a4f24153875aa387f3ed15dd8cdda2bbb8b4262416a8077dcfb48bd86ea23f`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7cf48e0a2ddc2a6da88529c5d252dac578f66eabec2dfda282564d7d55f135`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 675.1 KB (675128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cfc8e169a8433a28b15cd68feddac3dd334619e82bd0cf918bd655be5d0d53`  
		Last Modified: Thu, 07 Sep 2017 20:34:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jdk`

```console
$ docker pull jruby@sha256:3d6784d7b1abd048b210a3f3f06cea6e559450f216e8a06025083a262757576f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jdk` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.4 MB (323434177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d99d1482914d1edf042ceb864452256408efd8b399bbe79f7a512d7e3dc0fec`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:34:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:30:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:34 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:48 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:50 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a658af3f22faaaa79963f2df79d9d436b8d9b8faad7805a31584ebda0e14fe`  
		Last Modified: Thu, 27 Jul 2017 18:37:21 GMT  
		Size: 6.4 MB (6410158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b72ee35d35d34752b3b9df8b15830941f6a53b1149192f18e252982f8fef9a`  
		Last Modified: Thu, 07 Sep 2017 20:34:03 GMT  
		Size: 21.1 MB (21068337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a4f24153875aa387f3ed15dd8cdda2bbb8b4262416a8077dcfb48bd86ea23f`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7cf48e0a2ddc2a6da88529c5d252dac578f66eabec2dfda282564d7d55f135`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 675.1 KB (675128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cfc8e169a8433a28b15cd68feddac3dd334619e82bd0cf918bd655be5d0d53`  
		Last Modified: Thu, 07 Sep 2017 20:34:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:52531191a314d76f61accf0329b5cdde27ddcd6f645cc4f86f67c7efec5e6b52
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (94991914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c62d2d347d63da808c62a1fd427dc9cc4a0d2c4437a29126f46a1f58f032df7`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:41:35 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 07 Sep 2017 20:30:55 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:30:56 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:31:00 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 07 Sep 2017 20:31:01 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:31:01 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:31:15 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:31:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:31:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:31:15 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:31:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:31:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28685f496f3a41488ea356b27a8ebb88cfeb7f9b0f746209e80d6d31ba4052ab`  
		Last Modified: Fri, 30 Jun 2017 17:57:57 GMT  
		Size: 1.1 MB (1123152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e498180257711d380a73655cff9c009add839056576a6194c10a1711dced9d`  
		Last Modified: Thu, 07 Sep 2017 20:34:33 GMT  
		Size: 21.2 MB (21152482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53e5267392f6c0c34fd039812c8e690f1cd58fae8391311d45d8e66e4e5969d`  
		Last Modified: Thu, 07 Sep 2017 20:34:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77f43776452e9e9692448edc2569bf433de21894b0ba4de8becb5586e3c1c1f`  
		Last Modified: Thu, 07 Sep 2017 20:34:31 GMT  
		Size: 675.1 KB (675118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5e3c016d90a2d810f9e27ed47a65c923f90eb2ba8214b0750b59765c1f3a3d`  
		Last Modified: Thu, 07 Sep 2017 20:34:30 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jdk-alpine`

```console
$ docker pull jruby@sha256:52531191a314d76f61accf0329b5cdde27ddcd6f645cc4f86f67c7efec5e6b52
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (94991914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c62d2d347d63da808c62a1fd427dc9cc4a0d2c4437a29126f46a1f58f032df7`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:41:35 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 07 Sep 2017 20:30:55 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:30:56 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:31:00 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 07 Sep 2017 20:31:01 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:31:01 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:31:15 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:31:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:31:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:31:15 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:31:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:31:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28685f496f3a41488ea356b27a8ebb88cfeb7f9b0f746209e80d6d31ba4052ab`  
		Last Modified: Fri, 30 Jun 2017 17:57:57 GMT  
		Size: 1.1 MB (1123152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e498180257711d380a73655cff9c009add839056576a6194c10a1711dced9d`  
		Last Modified: Thu, 07 Sep 2017 20:34:33 GMT  
		Size: 21.2 MB (21152482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53e5267392f6c0c34fd039812c8e690f1cd58fae8391311d45d8e66e4e5969d`  
		Last Modified: Thu, 07 Sep 2017 20:34:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77f43776452e9e9692448edc2569bf433de21894b0ba4de8becb5586e3c1c1f`  
		Last Modified: Thu, 07 Sep 2017 20:34:31 GMT  
		Size: 675.1 KB (675118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5e3c016d90a2d810f9e27ed47a65c923f90eb2ba8214b0750b59765c1f3a3d`  
		Last Modified: Thu, 07 Sep 2017 20:34:30 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jdk-alpine`

```console
$ docker pull jruby@sha256:52531191a314d76f61accf0329b5cdde27ddcd6f645cc4f86f67c7efec5e6b52
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (94991914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c62d2d347d63da808c62a1fd427dc9cc4a0d2c4437a29126f46a1f58f032df7`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:41:35 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 07 Sep 2017 20:30:55 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:30:56 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:31:00 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 07 Sep 2017 20:31:01 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:31:01 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:31:15 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:31:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:31:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:31:15 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Sep 2017 20:31:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:31:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28685f496f3a41488ea356b27a8ebb88cfeb7f9b0f746209e80d6d31ba4052ab`  
		Last Modified: Fri, 30 Jun 2017 17:57:57 GMT  
		Size: 1.1 MB (1123152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e498180257711d380a73655cff9c009add839056576a6194c10a1711dced9d`  
		Last Modified: Thu, 07 Sep 2017 20:34:33 GMT  
		Size: 21.2 MB (21152482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53e5267392f6c0c34fd039812c8e690f1cd58fae8391311d45d8e66e4e5969d`  
		Last Modified: Thu, 07 Sep 2017 20:34:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77f43776452e9e9692448edc2569bf433de21894b0ba4de8becb5586e3c1c1f`  
		Last Modified: Thu, 07 Sep 2017 20:34:31 GMT  
		Size: 675.1 KB (675118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5e3c016d90a2d810f9e27ed47a65c923f90eb2ba8214b0750b59765c1f3a3d`  
		Last Modified: Thu, 07 Sep 2017 20:34:30 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:7f759d0f3ac61673cabb0e1d59e552ad402d58bfb252481d15e7f5cc48dc4522
```

-	Platforms:
	-	linux; amd64

### `jruby:9-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.4 MB (323434304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6d27a1e044feb0534ed404de93ca042578f7034cbc8f476588a391fe416f42`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:34:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:30:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:34 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:48 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:50 GMT
CMD ["irb"]
# Thu, 07 Sep 2017 20:31:23 GMT
RUN mkdir -p /usr/src/app
# Thu, 07 Sep 2017 20:31:23 GMT
WORKDIR /usr/src/app
# Thu, 07 Sep 2017 20:31:23 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 07 Sep 2017 20:31:23 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 07 Sep 2017 20:31:24 GMT
ONBUILD RUN bundle install --system
# Thu, 07 Sep 2017 20:31:24 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a658af3f22faaaa79963f2df79d9d436b8d9b8faad7805a31584ebda0e14fe`  
		Last Modified: Thu, 27 Jul 2017 18:37:21 GMT  
		Size: 6.4 MB (6410158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b72ee35d35d34752b3b9df8b15830941f6a53b1149192f18e252982f8fef9a`  
		Last Modified: Thu, 07 Sep 2017 20:34:03 GMT  
		Size: 21.1 MB (21068337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a4f24153875aa387f3ed15dd8cdda2bbb8b4262416a8077dcfb48bd86ea23f`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7cf48e0a2ddc2a6da88529c5d252dac578f66eabec2dfda282564d7d55f135`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 675.1 KB (675128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cfc8e169a8433a28b15cd68feddac3dd334619e82bd0cf918bd655be5d0d53`  
		Last Modified: Thu, 07 Sep 2017 20:34:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efaa1dacd992ef6940720d28b460489b0d0d2a8ae6d35b417f1946eb3233870`  
		Last Modified: Thu, 07 Sep 2017 20:34:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:7f759d0f3ac61673cabb0e1d59e552ad402d58bfb252481d15e7f5cc48dc4522
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.4 MB (323434304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6d27a1e044feb0534ed404de93ca042578f7034cbc8f476588a391fe416f42`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:34:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:30:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:34 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:48 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:50 GMT
CMD ["irb"]
# Thu, 07 Sep 2017 20:31:23 GMT
RUN mkdir -p /usr/src/app
# Thu, 07 Sep 2017 20:31:23 GMT
WORKDIR /usr/src/app
# Thu, 07 Sep 2017 20:31:23 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 07 Sep 2017 20:31:23 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 07 Sep 2017 20:31:24 GMT
ONBUILD RUN bundle install --system
# Thu, 07 Sep 2017 20:31:24 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a658af3f22faaaa79963f2df79d9d436b8d9b8faad7805a31584ebda0e14fe`  
		Last Modified: Thu, 27 Jul 2017 18:37:21 GMT  
		Size: 6.4 MB (6410158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b72ee35d35d34752b3b9df8b15830941f6a53b1149192f18e252982f8fef9a`  
		Last Modified: Thu, 07 Sep 2017 20:34:03 GMT  
		Size: 21.1 MB (21068337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a4f24153875aa387f3ed15dd8cdda2bbb8b4262416a8077dcfb48bd86ea23f`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7cf48e0a2ddc2a6da88529c5d252dac578f66eabec2dfda282564d7d55f135`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 675.1 KB (675128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cfc8e169a8433a28b15cd68feddac3dd334619e82bd0cf918bd655be5d0d53`  
		Last Modified: Thu, 07 Sep 2017 20:34:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efaa1dacd992ef6940720d28b460489b0d0d2a8ae6d35b417f1946eb3233870`  
		Last Modified: Thu, 07 Sep 2017 20:34:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-onbuild`

```console
$ docker pull jruby@sha256:7f759d0f3ac61673cabb0e1d59e552ad402d58bfb252481d15e7f5cc48dc4522
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.4 MB (323434304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6d27a1e044feb0534ed404de93ca042578f7034cbc8f476588a391fe416f42`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:34:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:30:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:34 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:48 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:50 GMT
CMD ["irb"]
# Thu, 07 Sep 2017 20:31:23 GMT
RUN mkdir -p /usr/src/app
# Thu, 07 Sep 2017 20:31:23 GMT
WORKDIR /usr/src/app
# Thu, 07 Sep 2017 20:31:23 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 07 Sep 2017 20:31:23 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 07 Sep 2017 20:31:24 GMT
ONBUILD RUN bundle install --system
# Thu, 07 Sep 2017 20:31:24 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a658af3f22faaaa79963f2df79d9d436b8d9b8faad7805a31584ebda0e14fe`  
		Last Modified: Thu, 27 Jul 2017 18:37:21 GMT  
		Size: 6.4 MB (6410158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b72ee35d35d34752b3b9df8b15830941f6a53b1149192f18e252982f8fef9a`  
		Last Modified: Thu, 07 Sep 2017 20:34:03 GMT  
		Size: 21.1 MB (21068337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a4f24153875aa387f3ed15dd8cdda2bbb8b4262416a8077dcfb48bd86ea23f`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7cf48e0a2ddc2a6da88529c5d252dac578f66eabec2dfda282564d7d55f135`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 675.1 KB (675128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cfc8e169a8433a28b15cd68feddac3dd334619e82bd0cf918bd655be5d0d53`  
		Last Modified: Thu, 07 Sep 2017 20:34:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efaa1dacd992ef6940720d28b460489b0d0d2a8ae6d35b417f1946eb3233870`  
		Last Modified: Thu, 07 Sep 2017 20:34:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-onbuild`

```console
$ docker pull jruby@sha256:7f759d0f3ac61673cabb0e1d59e552ad402d58bfb252481d15e7f5cc48dc4522
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.4 MB (323434304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6d27a1e044feb0534ed404de93ca042578f7034cbc8f476588a391fe416f42`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:34:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 07 Sep 2017 20:30:28 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 07 Sep 2017 20:30:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 07 Sep 2017 20:30:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:34 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 07 Sep 2017 20:30:48 GMT
RUN gem install bundler
# Thu, 07 Sep 2017 20:30:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 07 Sep 2017 20:30:49 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 20:30:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 07 Sep 2017 20:30:50 GMT
CMD ["irb"]
# Thu, 07 Sep 2017 20:31:23 GMT
RUN mkdir -p /usr/src/app
# Thu, 07 Sep 2017 20:31:23 GMT
WORKDIR /usr/src/app
# Thu, 07 Sep 2017 20:31:23 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 07 Sep 2017 20:31:23 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 07 Sep 2017 20:31:24 GMT
ONBUILD RUN bundle install --system
# Thu, 07 Sep 2017 20:31:24 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a658af3f22faaaa79963f2df79d9d436b8d9b8faad7805a31584ebda0e14fe`  
		Last Modified: Thu, 27 Jul 2017 18:37:21 GMT  
		Size: 6.4 MB (6410158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b72ee35d35d34752b3b9df8b15830941f6a53b1149192f18e252982f8fef9a`  
		Last Modified: Thu, 07 Sep 2017 20:34:03 GMT  
		Size: 21.1 MB (21068337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a4f24153875aa387f3ed15dd8cdda2bbb8b4262416a8077dcfb48bd86ea23f`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7cf48e0a2ddc2a6da88529c5d252dac578f66eabec2dfda282564d7d55f135`  
		Last Modified: Thu, 07 Sep 2017 20:34:02 GMT  
		Size: 675.1 KB (675128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cfc8e169a8433a28b15cd68feddac3dd334619e82bd0cf918bd655be5d0d53`  
		Last Modified: Thu, 07 Sep 2017 20:34:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efaa1dacd992ef6940720d28b460489b0d0d2a8ae6d35b417f1946eb3233870`  
		Last Modified: Thu, 07 Sep 2017 20:34:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7`

```console
$ docker pull jruby@sha256:4b90f4536c76eb9b622090ceb821f673c54d935bb1248a2cfdc0fd6b47883d50
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145908425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848516174c60a7972058fa2c826f720a5570e7eebc00241fd3af2b0725c7b3aa`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 18:35:01 GMT
ENV JRUBY_VERSION=1.7.27
# Thu, 27 Jul 2017 18:35:01 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Thu, 27 Jul 2017 18:35:06 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Jul 2017 18:35:06 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:07 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Jul 2017 18:35:14 GMT
RUN gem install bundler
# Thu, 27 Jul 2017 18:35:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:14 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Jul 2017 18:35:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5448961fdf779ec484ffae293829c1b4f198fff48c6c39a4ea49931f209d14d4`  
		Last Modified: Thu, 27 Jul 2017 18:38:27 GMT  
		Size: 22.8 MB (22761648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d69fb9affa7eab6392a0bc55d1ac761dbb144f9b11f9d13a46959c3b18ca7bd`  
		Last Modified: Thu, 27 Jul 2017 18:38:24 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17447b63fca19872f6d98aff28b99188da320ff544b37fec9ac30e2d48a4128`  
		Last Modified: Thu, 27 Jul 2017 18:38:23 GMT  
		Size: 673.0 KB (673030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b864c77a6c877c59a505131d3268290644427a3d61354dd2cbca1725f76461`  
		Last Modified: Thu, 27 Jul 2017 18:38:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27`

```console
$ docker pull jruby@sha256:4b90f4536c76eb9b622090ceb821f673c54d935bb1248a2cfdc0fd6b47883d50
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145908425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848516174c60a7972058fa2c826f720a5570e7eebc00241fd3af2b0725c7b3aa`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 18:35:01 GMT
ENV JRUBY_VERSION=1.7.27
# Thu, 27 Jul 2017 18:35:01 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Thu, 27 Jul 2017 18:35:06 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Jul 2017 18:35:06 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:07 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Jul 2017 18:35:14 GMT
RUN gem install bundler
# Thu, 27 Jul 2017 18:35:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:14 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Jul 2017 18:35:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5448961fdf779ec484ffae293829c1b4f198fff48c6c39a4ea49931f209d14d4`  
		Last Modified: Thu, 27 Jul 2017 18:38:27 GMT  
		Size: 22.8 MB (22761648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d69fb9affa7eab6392a0bc55d1ac761dbb144f9b11f9d13a46959c3b18ca7bd`  
		Last Modified: Thu, 27 Jul 2017 18:38:24 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17447b63fca19872f6d98aff28b99188da320ff544b37fec9ac30e2d48a4128`  
		Last Modified: Thu, 27 Jul 2017 18:38:23 GMT  
		Size: 673.0 KB (673030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b864c77a6c877c59a505131d3268290644427a3d61354dd2cbca1725f76461`  
		Last Modified: Thu, 27 Jul 2017 18:38:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jre`

```console
$ docker pull jruby@sha256:4b90f4536c76eb9b622090ceb821f673c54d935bb1248a2cfdc0fd6b47883d50
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jre` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145908425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848516174c60a7972058fa2c826f720a5570e7eebc00241fd3af2b0725c7b3aa`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 18:35:01 GMT
ENV JRUBY_VERSION=1.7.27
# Thu, 27 Jul 2017 18:35:01 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Thu, 27 Jul 2017 18:35:06 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Jul 2017 18:35:06 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:07 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Jul 2017 18:35:14 GMT
RUN gem install bundler
# Thu, 27 Jul 2017 18:35:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:14 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Jul 2017 18:35:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5448961fdf779ec484ffae293829c1b4f198fff48c6c39a4ea49931f209d14d4`  
		Last Modified: Thu, 27 Jul 2017 18:38:27 GMT  
		Size: 22.8 MB (22761648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d69fb9affa7eab6392a0bc55d1ac761dbb144f9b11f9d13a46959c3b18ca7bd`  
		Last Modified: Thu, 27 Jul 2017 18:38:24 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17447b63fca19872f6d98aff28b99188da320ff544b37fec9ac30e2d48a4128`  
		Last Modified: Thu, 27 Jul 2017 18:38:23 GMT  
		Size: 673.0 KB (673030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b864c77a6c877c59a505131d3268290644427a3d61354dd2cbca1725f76461`  
		Last Modified: Thu, 27 Jul 2017 18:38:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-jre`

```console
$ docker pull jruby@sha256:4b90f4536c76eb9b622090ceb821f673c54d935bb1248a2cfdc0fd6b47883d50
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-jre` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145908425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848516174c60a7972058fa2c826f720a5570e7eebc00241fd3af2b0725c7b3aa`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:33:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 18:35:01 GMT
ENV JRUBY_VERSION=1.7.27
# Thu, 27 Jul 2017 18:35:01 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Thu, 27 Jul 2017 18:35:06 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Jul 2017 18:35:06 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:07 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Jul 2017 18:35:14 GMT
RUN gem install bundler
# Thu, 27 Jul 2017 18:35:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:14 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Jul 2017 18:35:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06bd1fadc287ddf1e53b704e0912c78ccabe0408f3fa48e89b86185aff9ec`  
		Last Modified: Thu, 27 Jul 2017 18:35:49 GMT  
		Size: 6.3 MB (6305436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5448961fdf779ec484ffae293829c1b4f198fff48c6c39a4ea49931f209d14d4`  
		Last Modified: Thu, 27 Jul 2017 18:38:27 GMT  
		Size: 22.8 MB (22761648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d69fb9affa7eab6392a0bc55d1ac761dbb144f9b11f9d13a46959c3b18ca7bd`  
		Last Modified: Thu, 27 Jul 2017 18:38:24 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17447b63fca19872f6d98aff28b99188da320ff544b37fec9ac30e2d48a4128`  
		Last Modified: Thu, 27 Jul 2017 18:38:23 GMT  
		Size: 673.0 KB (673030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b864c77a6c877c59a505131d3268290644427a3d61354dd2cbca1725f76461`  
		Last Modified: Thu, 27 Jul 2017 18:38:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jdk`

```console
$ docker pull jruby@sha256:680afcecf45f7f989d9e9c15c14128bfbdaec26fad74f5216fb8c589818e3a2a
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jdk` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.1 MB (325127239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4708fcdb595032dad98845447b134a053529b0c56f0552783a85dfe014c55cfd`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:34:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 18:35:18 GMT
ENV JRUBY_VERSION=1.7.27
# Thu, 27 Jul 2017 18:35:19 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Thu, 27 Jul 2017 18:35:25 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Jul 2017 18:35:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Jul 2017 18:35:33 GMT
RUN gem install bundler
# Thu, 27 Jul 2017 18:35:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Jul 2017 18:35:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a658af3f22faaaa79963f2df79d9d436b8d9b8faad7805a31584ebda0e14fe`  
		Last Modified: Thu, 27 Jul 2017 18:37:21 GMT  
		Size: 6.4 MB (6410158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7495b14d31d6db3cae5343f981ad8b1cad71f29dc2966002eb319a5369704f`  
		Last Modified: Thu, 27 Jul 2017 18:38:55 GMT  
		Size: 22.8 MB (22763490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310ecdac08a0b142792bae9dbf1b684e7d92a2337c71cccfcdcdee150a6db4df`  
		Last Modified: Thu, 27 Jul 2017 18:38:52 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e54706d62dd5c31bfb1b370ab7a29fb487696226afabe987daee553c7225c8d`  
		Last Modified: Thu, 27 Jul 2017 18:38:54 GMT  
		Size: 673.0 KB (673036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5a6ec28e6d4647cbae4b47c096ea058c197d2ef46fdeb4487934c254630b74`  
		Last Modified: Thu, 27 Jul 2017 18:38:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-jdk`

```console
$ docker pull jruby@sha256:680afcecf45f7f989d9e9c15c14128bfbdaec26fad74f5216fb8c589818e3a2a
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-jdk` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.1 MB (325127239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4708fcdb595032dad98845447b134a053529b0c56f0552783a85dfe014c55cfd`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:34:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 18:35:18 GMT
ENV JRUBY_VERSION=1.7.27
# Thu, 27 Jul 2017 18:35:19 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Thu, 27 Jul 2017 18:35:25 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Jul 2017 18:35:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Jul 2017 18:35:33 GMT
RUN gem install bundler
# Thu, 27 Jul 2017 18:35:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Jul 2017 18:35:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a658af3f22faaaa79963f2df79d9d436b8d9b8faad7805a31584ebda0e14fe`  
		Last Modified: Thu, 27 Jul 2017 18:37:21 GMT  
		Size: 6.4 MB (6410158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7495b14d31d6db3cae5343f981ad8b1cad71f29dc2966002eb319a5369704f`  
		Last Modified: Thu, 27 Jul 2017 18:38:55 GMT  
		Size: 22.8 MB (22763490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310ecdac08a0b142792bae9dbf1b684e7d92a2337c71cccfcdcdee150a6db4df`  
		Last Modified: Thu, 27 Jul 2017 18:38:52 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e54706d62dd5c31bfb1b370ab7a29fb487696226afabe987daee553c7225c8d`  
		Last Modified: Thu, 27 Jul 2017 18:38:54 GMT  
		Size: 673.0 KB (673036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5a6ec28e6d4647cbae4b47c096ea058c197d2ef46fdeb4487934c254630b74`  
		Last Modified: Thu, 27 Jul 2017 18:38:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-onbuild`

```console
$ docker pull jruby@sha256:1dc338e4039e743fa9d2e5bbcd18d43112ced856653feb842e652d9d6896a52f
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.1 MB (325127364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1277de16c942a2af0459bedcf3ba53c8ce24ed3a6159a2d71366cb3ff082a71`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:34:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 18:35:18 GMT
ENV JRUBY_VERSION=1.7.27
# Thu, 27 Jul 2017 18:35:19 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Thu, 27 Jul 2017 18:35:25 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Jul 2017 18:35:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Jul 2017 18:35:33 GMT
RUN gem install bundler
# Thu, 27 Jul 2017 18:35:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Jul 2017 18:35:34 GMT
CMD ["irb"]
# Thu, 27 Jul 2017 18:35:38 GMT
RUN mkdir -p /usr/src/app
# Thu, 27 Jul 2017 18:35:38 GMT
WORKDIR /usr/src/app
# Thu, 27 Jul 2017 18:35:38 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 27 Jul 2017 18:35:38 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 27 Jul 2017 18:35:39 GMT
ONBUILD RUN bundle install --system
# Thu, 27 Jul 2017 18:35:39 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a658af3f22faaaa79963f2df79d9d436b8d9b8faad7805a31584ebda0e14fe`  
		Last Modified: Thu, 27 Jul 2017 18:37:21 GMT  
		Size: 6.4 MB (6410158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7495b14d31d6db3cae5343f981ad8b1cad71f29dc2966002eb319a5369704f`  
		Last Modified: Thu, 27 Jul 2017 18:38:55 GMT  
		Size: 22.8 MB (22763490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310ecdac08a0b142792bae9dbf1b684e7d92a2337c71cccfcdcdee150a6db4df`  
		Last Modified: Thu, 27 Jul 2017 18:38:52 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e54706d62dd5c31bfb1b370ab7a29fb487696226afabe987daee553c7225c8d`  
		Last Modified: Thu, 27 Jul 2017 18:38:54 GMT  
		Size: 673.0 KB (673036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5a6ec28e6d4647cbae4b47c096ea058c197d2ef46fdeb4487934c254630b74`  
		Last Modified: Thu, 27 Jul 2017 18:38:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5865503e6cd1e054d20ef003a65338b8b0a9cb167662757138a37f506df050d`  
		Last Modified: Thu, 27 Jul 2017 18:39:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-onbuild`

```console
$ docker pull jruby@sha256:1dc338e4039e743fa9d2e5bbcd18d43112ced856653feb842e652d9d6896a52f
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.1 MB (325127364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1277de16c942a2af0459bedcf3ba53c8ce24ed3a6159a2d71366cb3ff082a71`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:34:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 18:35:18 GMT
ENV JRUBY_VERSION=1.7.27
# Thu, 27 Jul 2017 18:35:19 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Thu, 27 Jul 2017 18:35:25 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Jul 2017 18:35:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Jul 2017 18:35:33 GMT
RUN gem install bundler
# Thu, 27 Jul 2017 18:35:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Jul 2017 18:35:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 18:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Jul 2017 18:35:34 GMT
CMD ["irb"]
# Thu, 27 Jul 2017 18:35:38 GMT
RUN mkdir -p /usr/src/app
# Thu, 27 Jul 2017 18:35:38 GMT
WORKDIR /usr/src/app
# Thu, 27 Jul 2017 18:35:38 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 27 Jul 2017 18:35:38 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 27 Jul 2017 18:35:39 GMT
ONBUILD RUN bundle install --system
# Thu, 27 Jul 2017 18:35:39 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a658af3f22faaaa79963f2df79d9d436b8d9b8faad7805a31584ebda0e14fe`  
		Last Modified: Thu, 27 Jul 2017 18:37:21 GMT  
		Size: 6.4 MB (6410158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7495b14d31d6db3cae5343f981ad8b1cad71f29dc2966002eb319a5369704f`  
		Last Modified: Thu, 27 Jul 2017 18:38:55 GMT  
		Size: 22.8 MB (22763490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310ecdac08a0b142792bae9dbf1b684e7d92a2337c71cccfcdcdee150a6db4df`  
		Last Modified: Thu, 27 Jul 2017 18:38:52 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e54706d62dd5c31bfb1b370ab7a29fb487696226afabe987daee553c7225c8d`  
		Last Modified: Thu, 27 Jul 2017 18:38:54 GMT  
		Size: 673.0 KB (673036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5a6ec28e6d4647cbae4b47c096ea058c197d2ef46fdeb4487934c254630b74`  
		Last Modified: Thu, 27 Jul 2017 18:38:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5865503e6cd1e054d20ef003a65338b8b0a9cb167662757138a37f506df050d`  
		Last Modified: Thu, 27 Jul 2017 18:39:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
